-- ============ ---
-- THÊM DỮ LIỆU
-- ============ ---

-- ============ ---
-- 
-- ============ ---

-- Category
INSERT INTO Category (CategoryID, Type_)
VALUES 
    (1, N'Hardware'),
    (2, N'Software'),
    (3, N'Internet');

-- ============ ---
-- BẢNG SOFTWARE
-- ============ ---

INSERT INTO Software (Name_Software, Funtion, CategoryID)
VALUES 
(N'Hệ điều hành', N'Quản lý tài nguyên máy tính và cung cấp nền tảng cho phần mềm ứng dụng', 2),
(N'Trình duyệt', N'Duyệt web, hỗ trợ truy cập Internet và các dịch vụ web', 2),
(N'Văn phòng', N'Xử lý văn bản, bảng tính, trình chiếu', 2),
(N'Lập trình', N'Viết, biên dịch và kiểm thử mã nguồn', 2),
(N'Đồ họa', N'Thiết kế và chỉnh sửa hình ảnh, minh họa, sản phẩm truyền thông', 2),
(N'Chống virus', N'Phát hiện và loại bỏ phần mềm độc hại', 2),
(N'PDF', N'Đọc, chỉnh sửa và tạo file PDF', 2),
(N'Điều khiển từ xa', N'Truy cập và điều khiển thiết bị khác qua mạng', 2),
(N'Nghe nhạc/Xem phim', N'Phát các định dạng media như nhạc, video', 2),
(N'Học tập', N'Hỗ trợ học trực tuyến, tra cứu kiến thức', 2);

-- ============ ---
-- BẢNG HARDWARE
-- ============ ---
-- Chèn thêm 3 dòng dữ liệu mẫu cho bảng Hardware

INSERT INTO Hardware (Name_Hardware, Type_Hardware, Funtion_Hardware)
VALUES
(N'Máy in', N'Ngoại vi', N'In ấn tài liệu'),
(N'Bàn phím', N'Ngoại vi', N'Nhập liệu'),
(N'Chuột', N'Ngoại vi', N'Điều khiển con trỏ'),
(N'Màn hình', N'Ngoại vi', N'Hiển thị hình ảnh'),
(N'Tai nghe', N'Ngoại vi', N'Nghe nhạc, gọi điện'),
(N'Máy tính xách tay', N'Nội Vi', N'Lưu trữ, tính toán'),
(N'Bo mạch chủ', N'Nội Vi', N'Lắp ráp và kết nối các phần cứng'),
(N'Card đồ họa', N'Nội Vi', N'Xử lý đồ họa'),
(N'RAM', N'Nội Vi', N'Lưu trữ tạm thời dữ liệu'),
(N'Ổ cứng SSD', N'Nội Vi', N'Lưu trữ dữ liệu'),
(N'Nguồn máy tính', N'Nội Vi', N'Cung cấp năng lượng'),
(N'Đĩa cứng HDD', N'Nội Vi', N'Lưu trữ dữ liệu'),
(N'Webcam', N'Ngoại vi', N'Quay video, gọi video'),
(N'Máy chiếu', N'Ngoại vi', N'Hiển thị hình ảnh lớn'),
(N'Máy quét mã vạch', N'Ngoại vi', N'Quét mã vạch'),
(N'Máy rút tiền tự động (ATM)', N'Ngoại vi', N'Giao dịch tiền mặt'),
(N'Thiết bị lưu trữ ngoài', N'Ngoại vi', N'Lưu trữ dữ liệu'),
(N'Máy in laser', N'Ngoại vi', N'In tài liệu với chất lượng cao'),
(N'Router Wi-Fi', N'Ngoại vi', N'Cung cấp mạng không dây'),
(N'Tay cầm chơi game', N'Ngoại vi', N'Điều khiển trong game'),
(N'Bộ chuyển đổi USB-C', N'Ngoại vi', N'Chuyển đổi cổng USB-C sang các cổng khác'),
(N'Máy in 3D', N'Ngoại vi', N'In các mô hình 3D từ dữ liệu số');


-- ============ ---
-- BẢNG INTERNET
-- ============ ---



INSERT INTO Internet (Internet_Name, Describe, Stable, Coverage, Mobile)
VALUES 
    (N'Kết nối mạng có dây', N'Sử dụng cáp mạng (Ethernet) để kết nối các thiết bị với nhau, đảm bảo tốc độ nhanh và ổn định.', N'Rất ổn định', N'Toàn quốc', N'Cố định'),
    (N'Kết nối mạng không dây', N'Cho phép thiết bị kết nối với mạng mà không cần dây cáp, tiện lợi nhưng có thể bị ảnh hưởng bởi khoảng cách và vật cản.', N'Ổn định', N'Toàn quốc', N'Cố định'),
    (N'Mạng di động', N'Sử dụng tín hiệu di động để kết nối Internet thông qua các nhà mạng viễn thông.', N'Không ổn định', N'Toàn quốc', N'Di động'),
    (N'Mạng cá nhân', N'Kết nối các thiết bị gần nhau như Bluetooth hoặc USB.', N'Ổn định', N'Chưa xác định', N'Cố định'),
    (N'Mạng cục bộ', N'Kết nối các thiết bị trong phạm vi nhỏ như văn phòng hoặc gia đình.', N'Rất ổn định', N'Vùng ven', N'Cố định'),
    (N'Mạng diện rộng', N'Kết nối các hệ thống mạng trên phạm vi lớn, có thể là toàn cầu (như Internet).', N'Ổn định', N'Toàn quốc', N'Cố định'),
    (N'Mạng đô thị', N'Phạm vi rộng hơn LAN nhưng nhỏ hơn WAN, thường phục vụ một thành phố hoặc khu vực lớn.', N'Rất ổn định', N'Vùng ven', N'Cố định'),
    (N'Mạng ngang hàng', N'Các thiết bị kết nối trực tiếp với nhau mà không cần máy chủ trung gian.', N'Không ổn định', N'Chưa xác định', N'Cố định');


-- ============ ---
-- BẢNG ISSUES
-- ============ ---

INSERT INTO Issues (Issue_Name, Describe, Level_) VALUES
(N'Lỗi khởi động hệ điều hành', N'Máy tính không thể vào Windows, chỉ hiện màn hình đen hoặc vòng tròn xoay mãi.', N'Cao', 1),
(N'Lỗi cập nhật hệ điều hành', N'Quá trình cập nhật bị lỗi, không thể hoàn tất, hoặc gây lỗi hệ thống.', N'Nguy hiểm', 1);


-- ============ ---
-- Bảng Software_Issues 
-- ============ ---

INSERT INTO Software_Issues (SoftwareID, IssueID) VALUES
(1, 4), -- Trình quản lý kết nối Wi-Fi có thể ảnh hưởng đến khả năng lưu tệp (mất kết nối)
(8, 4); -- Phần mềm đọc PDF có thể xung đột với Word
-- ============ ---
-- 
-- ============ ---
INSERT INTO Hardware_Issues (HardwareID, IssueID) VALUES
()

-- ============ ---
-- 
-- ============ ---
INSERT INTO Internet_Issues (InternetID, IssueID) VALUES
()

-- ============ ---
-- 
-- ============ ---

-- ============ ---
-- 
-- ============ ---







