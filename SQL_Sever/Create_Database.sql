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
    Name_Software NVARCHAR(255) NOT NULL,
    Type_Software NVARCHAR(255) NOT NULL,
    Funtion NVARCHAR(MAX) NOT NULL,
    Version_ NVARCHAR(255) CHECK (Version_ IS NULL OR Lower(Version_) LIKE 'v[0-9]%'), -- Lower check khi nhập v thường hay v hoa của nhập được 
    CategoryID INTEGER DEFAULT 1,
    FOREIGN KEY (CategoryID) REFERENCES Category(CategoryID),
	UNIQUE(Name_Software, Version_)
);

CREATE TABLE Hardware (
    HardwareID INTEGER IDENTITY(1,1) PRIMARY KEY,
    Name_Hardware NVARCHAR(255) NOT NULL,
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

CREATE TABLE Issues (
    IssueID INTEGER PRIMARY KEY,
    Issue_Name NVARCHAR(255),
    Describe TEXT,
    Level NVARCHAR(15),
    CategoryID INTEGER,
    FOREIGN KEY (CategoryID) REFERENCES Category(CategoryID)
);

CREATE TABLE Diagnose (
    DiagnoseID INTEGER PRIMARY KEY,
    Diagnose_Name NVARCHAR(255),
    Describe TEXT
);

CREATE TABLE Issue_Diagnose (
    IssueID INTEGER,
    DiagnoseID INTEGER,
    FOREIGN KEY (IssueID) REFERENCES Issues(IssueID),
    FOREIGN KEY (DiagnoseID) REFERENCES Diagnose(DiagnoseID)
);

CREATE TABLE Solution (
    SolutionID INTEGER PRIMARY KEY,
    Solution_Name NVARCHAR(255),
    Detail TEXT,
    SuccessRate VARCHAR(5)
);

CREATE TABLE Solution_Step (
    StepID INTEGER PRIMARY KEY,
    Step_Name NVARCHAR(255),
    Tutorial NVARCHAR,
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
    TagID INTEGER PRIMARY KEY,
    Tag_Name NVARCHAR(255)
);

CREATE TABLE Issue_Tag (
    IssueID INTEGER,
    TagID INTEGER,
    FOREIGN KEY (IssueID) REFERENCES Issues(IssueID),
    FOREIGN KEY (TagID) REFERENCES Tags(TagID)
);