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
    Version_ NVARCHAR(255) CHECK (Version_ IS NULL OR Version_ LIKE '[0-9]%'), -- Phiên bảng
    CategoryID INTEGER DEFAULT 1,
    FOREIGN KEY (CategoryID) REFERENCES Category(CategoryID),
	UNIQUE(Name_Software, Version_)
);

CREATE TABLE Hardware (
    HardwareID INTEGER PRIMARY KEY,
    Name_Hardware NVARCHAR(255),
    Type_Hardware NVARCHAR(MAX) CHECK (Type_Hardware IN ('Ngoại vi', 'Nội Vi')),
    Funtion_Hardware NVARCHAR(MAX),
    Brand NVARCHAR(255),
    CategoryID INTEGER DEFAULT 1,
    FOREIGN KEY (CategoryID) REFERENCES Category(CategoryID)
);

CREATE TABLE Internet (
    InternetID INTEGER PRIMARY KEY,
    Internet_Name NVARCHAR(255),
    Describe TEXT,
    Stable NVARCHAR(255),
    Coverage NVARCHAR(255),
    Mobile NVARCHAR(255) CHECK (Mobile IN (N'Di động',N'Cố định'))    ,
    CategoryID INTEGER DEFAULT 1,
    FOREIGN KEY (CategoryID) REFERENCES Category(CategoryID)
);

CREATE TABLE Virus (
    VirusID INTEGER PRIMARY KEY,
    VirusName NVARCHAR(255),
    Type NVARCHAR(255),
    Behavior TEXT,
    Danger_Level NVARCHAR(255),
    CategoryID INTEGER,
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