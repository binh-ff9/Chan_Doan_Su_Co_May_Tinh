-- 1. Truy vấn cơ bản: Liệt kê tất cả phần mềm
SELECT * 
FROM Software;

-- 2. Truy vấn cơ bản với điều kiện: Liệt kê tất cả phần cứng ngoại vi
SELECT * 
FROM Hardware 
WHERE Type_Hardware = N'Ngoại vi';

-- 3. Truy vấn sắp xếp: Liệt kê internet sắp xếp theo độ ổn định
SELECT * 
FROM Internet 
ORDER BY Stable DESC;

-- 4. Truy vấn với LIKE: Tìm kiếm loại phần mềm theo tên
SELECT * 
FROM Software 
WHERE Type_Software LIKE N'Đồ họa';

-- 5. Truy vấn lọc và đếm: Đếm số lượng vấn đề theo mức độ nghiêm trọng
SELECT Level_, COUNT(*) AS SoLuong
FROM Issues
GROUP BY Level_
ORDER BY COUNT(*) DESC;

-- 6. Truy vấn JOIN nhiều bảng: Liệt kê vấn đề và các giải pháp tương ứng
SELECT i.Issue_Name, s.Solution_Name, s.SuccessRate
FROM Issues i
JOIN Issue_Solution is_sol ON i.IssueID = is_sol.IssueID
JOIN Solution s ON is_sol.SolutionID = s.SolutionID;

-- 7. Truy vấn với các hàm số học: Tính tỷ lệ thành công trung bình của giải pháp
SELECT 
    AVG(CAST(SUBSTRING(SuccessRate, 1, LEN(SuccessRate)-1) AS FLOAT)) as AvgSuccessRate,
    MAX(CAST(SUBSTRING(SuccessRate, 1, LEN(SuccessRate)-1) AS FLOAT)) as MaxSuccessRate,
    MIN(CAST(SUBSTRING(SuccessRate, 1, LEN(SuccessRate)-1) AS FLOAT)) as MinSuccessRate
FROM Solution;

-- 8. Truy vấn UNION: Kết hợp danh sách tất cả các thành phần có thể gặp sự cố
SELECT Type_Software AS Component_Name, 'Software' AS Type 
FROM Software
UNION
SELECT Name_Hardware AS Component_Name, 'Hardware' AS Type 
FROM Hardware
UNION
SELECT Internet_Name AS Component_Name, 'Internet' AS Type 
FROM Internet;

-- 9. Truy vấn con: Tìm các vấn đề có giải pháp với tỷ lệ thành công 50%
SELECT i.IssueID, i.Issue_Name, i.Level_
FROM Issues i
WHERE i.IssueID IN (
    SELECT is_sol.IssueID
    FROM Issue_Solution is_sol
    JOIN Solution s ON is_sol.SolutionID = s.SolutionID
    WHERE s.SuccessRate = '0.50'
);

-- 10. Truy vấn với EXISTS: Tìm các vấn đề có ít nhất một tag liên quan đến phần mềm
SELECT i.*
FROM Issues i
WHERE EXISTS (
    SELECT 1
    FROM Issue_Tag it
    JOIN Tags t ON it.TagID = t.TagID
    WHERE it.IssueID = i.IssueID AND t.Tag_Name LIKE N'%phần mềm%'
);

-- 11. Truy vấn JOIN phức tạp: Tìm các bước giải pháp cho vấn đề cụ thể
SELECT i.Issue_Name, s.Solution_Name, ss.Step_Name, ss.Tutorial
FROM Issues i
JOIN Issue_Solution is_sol ON i.IssueID = is_sol.IssueID
JOIN Solution s ON is_sol.SolutionID = s.SolutionID
JOIN Solution_Step ss ON s.SolutionID = ss.SolutionID
WHERE i.Issue_Name LIKE N'%Lỗi nhấp chuột%';

-- 12. Truy vấn với GROUP BY và hàm tổng hợp nhiều cột: Thống kê tag theo danh mục
SELECT 
    c.Type_,
    COUNT(DISTINCT t.TagID) as UniqueTagCount,
    COUNT(it.IssueID) as TotalTagAssignments
FROM Category c
JOIN Issues i ON c.CategoryID = i.CategoryID
JOIN Issue_Tag it ON i.IssueID = it.IssueID
JOIN Tags t ON it.TagID = t.TagID
GROUP BY c.Type_;

-- 13. Truy vấn với LEFT JOIN phức tạp: Tìm các vấn đề chưa có giải pháp
SELECT i.IssueID, i.Issue_Name, i.Level_
FROM Issues i
LEFT JOIN Issue_Solution is_sol ON i.IssueID = is_sol.IssueID
WHERE is_sol.IssueID IS NULL;

-- 14. Truy vấn với CASE WHEN: Phân loại mức độ phức tạp của giải pháp
SELECT 
    s.SolutionID,
    s.Solution_Name,
    COUNT(ss.StepID) as StepCount,
    CASE 
        WHEN COUNT(ss.StepID) >= 5 THEN N'Phức tạp cao'
        WHEN COUNT(ss.StepID) >= 3 THEN N'Phức tạp trung bình'
        ELSE N'Đơn giản'
    END as ComplexityLevel
FROM Solution s
LEFT JOIN Solution_Step ss ON s.SolutionID = ss.SolutionID
GROUP BY s.SolutionID, s.Solution_Name;

-- 15. Truy vấn với ROW_NUMBER(): Đánh số từng vấn đề trong danh mục
SELECT 
    c.Type_,
    i.Issue_Name,
    ROW_NUMBER() OVER(PARTITION BY c.CategoryID ORDER BY i.Issue_Name) as RowNum
FROM Issues i
JOIN Category c ON i.CategoryID = c.CategoryID;

-- 16. Truy vấn CTE (Common Table Expression): Phân tích mối quan hệ giữa chẩn đoán và giải pháp
WITH DiagnoseSolutionCount AS (
    SELECT d.DiagnoseID, d.Diagnose_Name, COUNT(ds.SolutionID) AS SoGiaiPhap
    FROM Diagnose d
    LEFT JOIN Diagnose_Solution ds ON d.DiagnoseID = ds.DiagnoseID
    GROUP BY d.DiagnoseID, d.Diagnose_Name
)
SELECT * FROM DiagnoseSolutionCount WHERE SoGiaiPhap >= 2;


-- khó 
-- 17. Truy vấn phức tạp với nhiều JOIN và GROUP BY: Thống kê tỷ lệ thành công của giải pháp theo danh mục

SELECT c.Type_, AVG(CAST(SUBSTRING(s.SuccessRate, 1, LEN(s.SuccessRate)-1) AS FLOAT)) AS TyLeThanhCongTB
FROM Category c
JOIN Issues i ON c.CategoryID = i.CategoryID
JOIN Issue_Solution is_sol ON i.IssueID = is_sol.IssueID
JOIN Solution s ON is_sol.SolutionID = s.SolutionID
GROUP BY c.Type_
ORDER BY TyLeThanhCongTB DESC;

-- 1. Truy vấn lấy top 3 lỗi phổ biến nhất cho mỗi danh mục (Hardware, Software, Internet)
-- sử dụng phân vùng (partition) và CTE
WITH IssueCount AS (
    -- Đếm số lượng phần cứng liên quan đến từng lỗi
    SELECT 
        i.IssueID,i. Issue_Name, i.CategoryID,
        c.Type_ AS CategoryType,
        (
            SELECT COUNT(*) FROM Hardware_Issues WHERE IssueID = i.IssueID
        ) + (
            SELECT COUNT(*) FROM Software_Issues WHERE IssueID = i.IssueID
        ) + (
            SELECT COUNT(*) FROM Internet_Issues WHERE IssueID = i.IssueID
        ) AS TotalOccurrences,
        ROW_NUMBER() OVER (PARTITION BY i.CategoryID ORDER BY 
            (
                SELECT COUNT(*) FROM Hardware_Issues WHERE IssueID = i.IssueID
            ) + (
                SELECT COUNT(*) FROM Software_Issues WHERE IssueID = i.IssueID
            ) + (
                SELECT COUNT(*) FROM Internet_Issues WHERE IssueID = i.IssueID
            ) DESC
        ) AS RankInCategory
    FROM Issues i
    JOIN Category c ON i.CategoryID = c.CategoryID
)
SELECT 
    IssueID,
    Issue_Name,
    CategoryType,
    TotalOccurrences
FROM IssueCount
WHERE RankInCategory <= 3
ORDER BY CategoryID, RankInCategory;

-- 2. Truy vấn lấy phân tích hiệu quả của các giải pháp cho từng loại lỗi
WITH SolutionEffectiveness AS (
    SELECT 
        i.Issue_Name,
        i.Level_,
        s.Solution_Name,
        s.SuccessRate,
        CAST(REPLACE(s.SuccessRate, '%', '') AS FLOAT) AS SuccessRateNumeric,
        DENSE_RANK() OVER (PARTITION BY i.IssueID ORDER BY 
		CAST(REPLACE(s.SuccessRate, '%', '') AS FLOAT) DESC) AS SolutionRank
    FROM Issues i
    JOIN Issue_Solution isol ON i.IssueID = isol.IssueID
    JOIN Solution s ON isol.SolutionID = s.SolutionID
)
SELECT 
    Issue_Name,
    Level_,
    Solution_Name,
    SuccessRate,
    CASE 
        WHEN SolutionRank = 1 THEN N'Giải pháp tối ưu'
        WHEN SolutionRank = 2 THEN N'Giải pháp thay thế'
        ELSE N'Giải pháp phụ'
    END AS SolutionCategory
FROM SolutionEffectiveness
ORDER BY Issue_Name, SolutionRank;


-- 2. Tìm các giải pháp có tỷ lệ thành công cao nhất cho từng danh mục
WITH SuccessfulSolutions AS (
    SELECT
        c.Type_ AS CategoryType,
        s.Solution_Name,
        s.SuccessRate,
        ROW_NUMBER() OVER (PARTITION BY c.CategoryID ORDER BY 
		CAST(REPLACE(s.SuccessRate, '%', '') AS FLOAT) DESC) AS RankInCategory
    FROM Solution s
    JOIN Issue_Solution isol ON s.SolutionID = isol.SolutionID
    JOIN Issues i ON isol.IssueID = i.IssueID
    JOIN Category c ON i.CategoryID = c.CategoryID
)
SELECT
    CategoryType,
    Solution_Name,
    SuccessRate
FROM SuccessfulSolutions
WHERE RankInCategory = 1;

-- 9. Xác định giải pháp đa năng có thể áp dụng cho nhiều loại vấn đề
SELECT 
    s.Solution_Name,
    COUNT(DISTINCT i.IssueID) AS NumberOfIssuesResolved,
    COUNT(DISTINCT i.CategoryID) AS NumberOfCategoriesCovered,
    STRING_AGG(i.Issue_Name, ', ') AS IssuesResolved
FROM Solution s
JOIN Issue_Solution isol ON s.SolutionID = isol.SolutionID
JOIN Issues i ON isol.IssueID = i.IssueID
GROUP BY s.SolutionID, s.Solution_Name
HAVING COUNT(DISTINCT i.CategoryID) > 1
ORDER BY COUNT(DISTINCT i.IssueID) DESC;