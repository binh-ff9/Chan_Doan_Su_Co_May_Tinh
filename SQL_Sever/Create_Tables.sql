IF EXISTS (
    SELECT name 
    FROM sys.databases 
    WHERE name = N'HeThongChanDoanSuCoMayTinh'
)
BEGIN
    DROP DATABASE HeThongChanDoanSuCoMayTinh;
END
GO

CREATE DATABASE HeThongChanDoanSuCoMayTinh;
GO

USE HeThongChanDoanSuCoMayTinh;

-- =====================
-- TẠO CÁC BẢNG CHÍNH
-- =====================

CREATE TABLE Category (
    CategoryID INTEGER PRIMARY KEY,
    Type_ NVARCHAR(255)
);

CREATE TABLE Software (
    SoftwareID INTEGER IDENTITY(1,1) PRIMARY KEY,
    Type_Software NVARCHAR(255) NOT NULL UNIQUE,
    Funtion NVARCHAR(MAX) NOT NULL,
    CategoryID INTEGER DEFAULT 1,
    FOREIGN KEY (CategoryID) REFERENCES Category(CategoryID),
);

CREATE TABLE Hardware (
    HardwareID INTEGER IDENTITY(1,1) PRIMARY KEY,
    Name_Hardware NVARCHAR(255) NOT NULL UNIQUE,
    Type_Hardware NVARCHAR(MAX) CHECK (Type_Hardware IN (N'Ngoại vi', N'Nội Vi')) NOT NULL,
    Funtion_Hardware NVARCHAR(MAX) NOT NULL,
    CategoryID INTEGER DEFAULT 2,
    FOREIGN KEY (CategoryID) REFERENCES Category(CategoryID)
);

CREATE TABLE Internet (
    InternetID INTEGER IDENTITY(1,1) PRIMARY KEY,
    Internet_Name NVARCHAR(255) UNIQUE(Internet_Name) NOT NULL,
    Describe NVARCHAR(MAX) NOT NULL,
    Stable NVARCHAR(255)  DEFAULT N'Ổn định' CHECK (Stable IN (N'Rất ổn định', N'Ổn định', N'Không ổn định')), -- TÍNH ỔN ĐỊNH
	Coverage NVARCHAR(255) CHECK (Coverage IN (N'Toàn quốc', N'Vùng ven', N'Chưa xác định')), -- TÍNH BAO PHỦ
    Mobile NVARCHAR(255) CHECK (Mobile IN (N'Di động',N'Cố định'))    ,
    CategoryID INTEGER DEFAULT 3,
    FOREIGN KEY (CategoryID) REFERENCES Category(CategoryID)
);

-- =====================
-- BẢNG VỀ LỖI & GIẢI PHÁP
-- =====================

-- Tạo bảng Issues
CREATE TABLE Issues (
    IssueID INTEGER IDENTITY(1,1) PRIMARY KEY,
    Issue_Name NVARCHAR(255) NOT NULL UNIQUE, -- Tên lỗi không trùng lặp và bắt buộc nhập
    Describe NVARCHAR(MAX) NOT NULL,          -- Bắt buộc nhập mô tả lỗi
    Level_ NVARCHAR(15) 
        CHECK (Level_ IN (N'Thấp', N'Trung bình', N'Cao', N'Nguy hiểm')) 
        DEFAULT N'Trung bình',                -- Giới hạn mức độ và đặt mặc định
    CategoryID INTEGER NOT NULL,
    FOREIGN KEY (CategoryID) REFERENCES Category(CategoryID)
);

-- Tạo bảng Software_Issues
CREATE TABLE Software_Issues (
    SoftwareID INTEGER,
    IssueID INTEGER,
    PRIMARY KEY (SoftwareID, IssueID),
    FOREIGN KEY (SoftwareID) REFERENCES Software(SoftwareID),
    FOREIGN KEY (IssueID) REFERENCES Issues(IssueID)
);

-- Tạo bảng Hardware_Issues
CREATE TABLE Hardware_Issues (
    HardwareID INTEGER,
    IssueID INTEGER,
    PRIMARY KEY (HardwareID, IssueID),
    FOREIGN KEY (HardwareID) REFERENCES Hardware(HardwareID),
    FOREIGN KEY (IssueID) REFERENCES Issues(IssueID)
);

-- Tạo bảng Internet_Issues
CREATE TABLE Internet_Issues (
    InternetID INTEGER,
    IssueID INTEGER,
    PRIMARY KEY (InternetID, IssueID),
    FOREIGN KEY (InternetID) REFERENCES Internet(InternetID),
    FOREIGN KEY (IssueID) REFERENCES Issues(IssueID)
);

CREATE TABLE Diagnose (
    DiagnoseID INTEGER PRIMARY KEY,
    Diagnose_Name NVARCHAR(MAX)
);

SELECT * FROM Issue_Diagnose;
CREATE TABLE Issue_Diagnose (
    IssueID INTEGER,
    DiagnoseID INTEGER,
	PRIMARY KEY (DiagnoseID, IssueID),
    FOREIGN KEY (IssueID) REFERENCES Issues(IssueID),
    FOREIGN KEY (DiagnoseID) REFERENCES Diagnose(DiagnoseID)
);

CREATE TABLE Solution (
    SolutionID INTEGER PRIMARY KEY,
    Solution_Name NVARCHAR(255),
    SuccessRate VARCHAR(5)
);

CREATE TABLE Solution_Step (
    StepID INTEGER PRIMARY KEY,
    Step_Name NVARCHAR(255),
    Tutorial NVARCHAR(MAX),
    SolutionID INTEGER,
    FOREIGN KEY (SolutionID) REFERENCES Solution(SolutionID)
);

CREATE TABLE Issue_Solution (
    IssueID INTEGER,
    SolutionID INTEGER,
    FOREIGN KEY (IssueID) REFERENCES Issues(IssueID),
    FOREIGN KEY (SolutionID) REFERENCES Solution(SolutionID)
);

CREATE TABLE Diagnose_Solution (
    DiagnoseID INTEGER,
    SolutionID INTEGER,
    PRIMARY KEY (DiagnoseID, SolutionID),
    FOREIGN KEY (DiagnoseID) REFERENCES Diagnose(DiagnoseID),
    FOREIGN KEY (SolutionID) REFERENCES Solution(SolutionID)
);


-- =====================
-- TAGS CHO ISSUE
-- =====================

CREATE TABLE Tags (
    TagID INTEGER PRIMARY KEY IDENTITY(1,1),
    Tag_Name NVARCHAR(255)
);

CREATE TABLE Issue_Tag (
    IssueID INTEGER,
    TagID INTEGER,
	PRIMARY KEY(IssueID, TagID),
    FOREIGN KEY (IssueID) REFERENCES Issues(IssueID),
    FOREIGN KEY (TagID) REFERENCES Tags(TagID)
);