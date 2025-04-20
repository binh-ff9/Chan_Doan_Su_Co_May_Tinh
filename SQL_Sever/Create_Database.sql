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

-- Create Category Table
CREATE TABLE Category (
    CategoryID INT PRIMARY KEY,
    Type_ NVARCHAR(255) NOT NULL
);

-- Create Hardware Table
CREATE TABLE Hardware (
    HardwareID INT PRIMARY KEY IDENTITY(1,1),
    Name_Hardware NVARCHAR(255) NOT NULL,
    Type NVARCHAR(255),
    Function_Hardware TEXT,
    Brand TEXT,
    CategoryID INT,
    FOREIGN KEY (CategoryID) REFERENCES Category(CategoryID)
);

-- Create Software Table
CREATE TABLE Software (
    SoftwareID INT PRIMARY KEY IDENTITY(1,1),
    Name_Software NVARCHAR(255) NOT NULL,
    Type NVARCHAR(255),
    Function_Software TEXT,
    Version NVARCHAR(255),
    CategoryID INT,
    FOREIGN KEY (CategoryID) REFERENCES Category(CategoryID)
);

-- Create Internet Table
CREATE TABLE Internet (
    InternetID INT PRIMARY KEY IDENTITY(1,1),
    Internet_Name NVARCHAR(255) NOT NULL,
    Describe TEXT,
    Status NVARCHAR(255),
    Coverage NVARCHAR(255),
    Mobile BIT,
    CategoryID INT,
    FOREIGN KEY (CategoryID) REFERENCES Category(CategoryID)
);

-- Create Diagnose Table
CREATE TABLE Diagnose (
    DiagnoseID INT PRIMARY KEY IDENTITY(1,1),
    Diagnose_Name NVARCHAR(255) NOT NULL,
    Describe TEXT
);

-- Create Solution Table
CREATE TABLE Solution (
    SolutionID INT PRIMARY KEY IDENTITY(1,1),
    Solution_Name NVARCHAR(255) NOT NULL,
    Detail TEXT,
    SuccessRate DECIMAL(5,2)
);

-- Create Solution_Step Table
CREATE TABLE Solution_Step (
    StepID INT PRIMARY KEY IDENTITY(1,1),
    Step_Name NVARCHAR(255) NOT NULL,
    Detail TEXT,
    SolutionID INT,
    FOREIGN KEY (SolutionID) REFERENCES Solution(SolutionID)
);

-- Create Issues Table
CREATE TABLE Issues (
    IssueID INT PRIMARY KEY IDENTITY(1,1),
    Issue_Name NVARCHAR(255) NOT NULL,
    Describe TEXT,
    Level NVARCHAR(15),
    CategoryID INT,
    FOREIGN KEY (CategoryID) REFERENCES Category(CategoryID)
);

-- Create Virus Table
CREATE TABLE Virus (
    VirusID INT PRIMARY KEY IDENTITY(1,1),
    VirusName NVARCHAR(255) NOT NULL,
    Type NVARCHAR(255),
    Behavior TEXT,
    Danger_Level NVARCHAR(255),
    CategoryID INT,
    FOREIGN KEY (CategoryID) REFERENCES Category(CategoryID)
);

-- Create Tags Table
CREATE TABLE Tags (
    TagID INT PRIMARY KEY IDENTITY(1,1),
    Tag_Name NVARCHAR(255) NOT NULL
);

-- Create Diagnose_Solution (junction table)
CREATE TABLE Diagnose_Solution (
    DiagnoseID INT,
    SolutionID INT,
    PRIMARY KEY (DiagnoseID, SolutionID),
    FOREIGN KEY (DiagnoseID) REFERENCES Diagnose(DiagnoseID),
    FOREIGN KEY (SolutionID) REFERENCES Solution(SolutionID)
);

-- Create Issue_Diagnose (junction table)
CREATE TABLE Issue_Diagnose (
    IssueID INT,
    DiagnoseID INT,
    PRIMARY KEY (IssueID, DiagnoseID),
    FOREIGN KEY (IssueID) REFERENCES Issues(IssueID),
    FOREIGN KEY (DiagnoseID) REFERENCES Diagnose(DiagnoseID)
);

-- Create Issue_Solution (junction table)
CREATE TABLE Issue_Solution (
    IssueID INT,
    SolutionID INT,
    PRIMARY KEY (IssueID, SolutionID),
    FOREIGN KEY (IssueID) REFERENCES Issues(IssueID),
    FOREIGN KEY (SolutionID) REFERENCES Solution(SolutionID)
);

-- Create Issue_Tag (junction table)
CREATE TABLE Issue_Tag (
    IssueID INT,
    TagID INT,
    PRIMARY KEY (IssueID, TagID),
    FOREIGN KEY (IssueID) REFERENCES Issues(IssueID),
    FOREIGN KEY (TagID) REFERENCES Tags(TagID)
);