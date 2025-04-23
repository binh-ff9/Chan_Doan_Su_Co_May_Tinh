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

INSERT INTO Software (Type_Software, Funtion, CategoryID)
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
-- BẢNG HARDWARE
-- ============ ---

INSERT INTO Hardware (Name_Hardware, Type_Hardware, Funtion_Hardware, CategoryID) VALUES
(N'Máy in', N'Ngoại vi', N'In tài liệu, hình ảnh', 2),
(N'Màn hình', N'Ngoại vi', N'Hiển thị hình ảnh, video từ máy tính', 2),
(N'Bàn phím', N'Ngoại vi', N'Nhập liệu từ người dùng vào máy tính', 2),
(N'Mouse', N'Ngoại vi', N'Chỉ huy con trỏ trên màn hình, thao tác với các đối tượng', 2),
(N'Ổ cứng ngoài', N'Nội Vi', N'Lưu trữ dữ liệu, sao lưu', 2),
(N'Memory RAM', N'Nội Vi', N'Cung cấp bộ nhớ tạm thời cho máy tính', 2),
(N'VGA Card', N'Nội Vi', N'Xử lý đồ họa, giúp hiển thị hình ảnh trên màn hình', 2),
(N'Motherboard', N'Nội Vi', N'Chứa các linh kiện quan trọng và kết nối các phần cứng khác trong máy tính', 2),
(N'Pin Laptop', N'Nội Vi', N'Cung cấp năng lượng cho laptop khi không cắm sạc', 2),
(N'Microphone', N'Ngoại vi', N'Ghi âm âm thanh từ môi trường xung quanh', 2);



-- ============ ---
-- BẢNG ISSUES
-- ============ ---

-- Lỗi liên quan đến Máy in (CategoryID = 1)
INSERT INTO Issues (Issue_Name, Describe, Level_, CategoryID) VALUES
(N'Lỗi không in được', N'Máy in không nhận lệnh in hoặc không kết nối với máy tính.', N'Cao', 1),
(N'Lỗi kẹt giấy', N'Giấy bị kẹt trong máy in, không thể tiếp tục in.', N'Trung bình', 1);

-- Lỗi liên quan đến Màn hình (CategoryID = 1)
INSERT INTO Issues (Issue_Name, Describe, Level_, CategoryID) VALUES
(N'Màn hình bị nhòe', N'Màn hình hiển thị bị mờ hoặc nhòe, ảnh không rõ nét.', N'Trung bình', 1),
(N'Màn hình không lên', N'Màn hình không hiển thị gì, dù máy tính vẫn bật.', N'Cao', 1);

-- Lỗi liên quan đến Bàn phím (CategoryID = 1)
INSERT INTO Issues (Issue_Name, Describe, Level_, CategoryID) VALUES
(N'Lỗi phím không phản hồi', N'Một số phím trên bàn phím không hoạt động.', N'Trung bình', 1),
(N'Lỗi kết nối USB', N'Bàn phím không nhận tín hiệu khi cắm vào máy tính.', N'Cao', 1);

-- Lỗi liên quan đến Mouse (CategoryID = 1)
INSERT INTO Issues (Issue_Name, Describe, Level_, CategoryID) VALUES
(N'Lỗi chuột không di chuyển', N'Chuột không phản hồi hoặc không di chuyển được trên màn hình.', N'Trung bình', 1),
(N'Lỗi nhấp chuột', N'Nhấp chuột không hoạt động, đôi khi không nhận tín hiệu.', N'Cao', 1);

-- Lỗi liên quan đến Ổ cứng ngoài (CategoryID = 1)
INSERT INTO Issues (Issue_Name, Describe, Level_, CategoryID) VALUES
(N'Ổ cứng ngoài không nhận', N'Ổ cứng không được nhận diện khi kết nối với máy tính.', N'Nguy hiểm', 1),
(N'Lỗi mất dữ liệu', N'Dữ liệu trong ổ cứng ngoài không thể truy xuất hoặc bị mất.', N'Cao', 1);

-- Lỗi liên quan đến Memory RAM (CategoryID = 1)
INSERT INTO Issues (Issue_Name, Describe, Level_, CategoryID) VALUES
(N'Lỗi bộ nhớ RAM', N'Máy tính báo lỗi bộ nhớ không đủ hoặc không nhận dạng bộ nhớ RAM.', N'Cao', 1),
(N'Lỗi máy chạy chậm', N'Máy tính chạy chậm hoặc bị treo, nguyên nhân có thể do bộ nhớ RAM không đủ hoặc bị lỗi.', N'Trung bình', 1);

-- Lỗi liên quan đến VGA Card (CategoryID = 1)
INSERT INTO Issues (Issue_Name, Describe, Level_, CategoryID) VALUES
(N'Lỗi hiển thị đồ họa', N'VGA card không hiển thị hình ảnh, hoặc hình ảnh bị giật, mất màu.', N'Cao', 1),
(N'Lỗi không nhận card đồ họa', N'Máy tính không nhận VGA card, không hiển thị được đồ họa.', N'Nguy hiểm', 1);

-- Lỗi liên quan đến Motherboard (CategoryID = 1)
INSERT INTO Issues (Issue_Name, Describe, Level_, CategoryID) VALUES
(N'Lỗi Motherboard', N'Motherboard không nhận tín hiệu hoặc không khởi động được máy tính.', N'Nguy hiểm', 1),
(N'Lỗi kết nối các linh kiện', N'Motherboard bị lỗi khiến các linh kiện như RAM, VGA không hoạt động.', N'Cao', 1);

-- Lỗi liên quan đến Pin Laptop (CategoryID = 1)
INSERT INTO Issues (Issue_Name, Describe, Level_, CategoryID) VALUES
(N'Pin laptop không sạc', N'Pin không nhận sạc, laptop chỉ có thể sử dụng khi cắm nguồn điện.', N'Cao', 1),
(N'Lỗi pin giảm nhanh', N'Pin laptop giảm nhanh chóng dù mới sạc đầy.', N'Trung bình', 1);

-- Lỗi liên quan đến Microphone (CategoryID = 1)
INSERT INTO Issues (Issue_Name, Describe, Level_, CategoryID) VALUES
(N'Microphone không ghi âm', N'Microphone không nhận tín hiệu âm thanh hoặc không ghi âm được.', N'Cao', 1),
(N'Lỗi âm thanh trong', N'Microphone thu âm thanh kém, bị nhiễu hoặc không rõ.', N'Trung bình', 1);



-- Lỗi liên quan đến Hệ điều hành (CategoryID = 2)
INSERT INTO Issues (Issue_Name, Describe, Level_, CategoryID) 
VALUES
(N'Lỗi khởi động hệ điều hành', N'Máy tính không thể vào Windows, chỉ hiện màn hình đen hoặc vòng tròn xoay mãi.', N'Cao', 2),
(N'Lỗi cập nhật hệ điều hành', N'Quá trình cập nhật bị lỗi, không thể hoàn tất, hoặc gây lỗi hệ thống.', N'Nguy hiểm', 2);

-- Lỗi liên quan đến Trình duyệt (CategoryID = 2)
INSERT INTO Issues (Issue_Name, Describe, Level_, CategoryID) 
VALUES
(N'Lỗi không truy cập được trang web', N'Báo lỗi DNS hoặc mạng dù Internet vẫn hoạt động.', N'Trung bình', 2),
(N'Lỗi đăng nhập tài khoản Google', N'Trình duyệt không đăng nhập được tài khoản hoặc tự đăng xuất.', N'Cao', 2);

-- Lỗi liên quan đến Văn phòng (CategoryID = 2)
INSERT INTO Issues (Issue_Name, Describe, Level_, CategoryID) 
VALUES
(N'Lỗi font chữ bị lỗi trong Word', N'Tài liệu mở ra toàn ký tự lạ hoặc chữ bị biến dạng.', N'Thấp', 2),
(N'Excel báo lỗi khi lưu file', N'Lưu file gặp lỗi định dạng hoặc mất dữ liệu.', N'Cao', 2);

-- Lỗi liên quan đến Lập trình (CategoryID = 2)
INSERT INTO Issues (Issue_Name, Describe, Level_, CategoryID) 
VALUES
(N'Lỗi không nhận môi trường biên dịch', N'VS Code không nhận compiler như gcc, javac.', N'Cao', 2),
(N'Không debug được trong IDE', N'Breakpoints không hoạt động hoặc không hiển thị biến.', N'Trung bình', 2);

-- Lỗi liên quan đến Đồ họa (CategoryID = 2)
INSERT INTO Issues (Issue_Name, Describe, Level_, CategoryID) 
VALUES
(N'Lỗi không mở được file thiết kế', N'Tệp PSD hoặc AI bị hỏng hoặc phần mềm báo lỗi định dạng.', N'Nguy hiểm', 2),
(N'Lỗi công cụ không hoạt động đúng', N'Công cụ brush, gradient hoạt động sai hoặc không phản hồi.', N'Trung bình', 2);

-- Lỗi liên quan đến Chống virus (CategoryID = 2)
INSERT INTO Issues (Issue_Name, Describe, Level_, CategoryID) 
VALUES
(N'Lỗi không cập nhật được cơ sở dữ liệu virus', N'Kaspersky hoặc Windows Defender báo lỗi khi cập nhật.', N'Cao', 2),
(N'Lỗi phát hiện nhầm phần mềm hợp lệ', N'Chương trình bị xóa dù không có mã độc.', N'Nguy hiểm', 2);

-- Lỗi liên quan đến PDF (CategoryID = 2)
INSERT INTO Issues (Issue_Name, Describe, Level_, CategoryID) 
VALUES
(N'Lỗi không mở được file PDF', N'File báo lỗi hỏng hoặc không tương thích.', N'Trung bình', 2),
(N'Lỗi khi chỉnh sửa nội dung file PDF', N'Một số đoạn văn bản không sửa được, bị khóa.', N'Thấp', 2);

-- Lỗi liên quan đến Điều khiển từ xa (CategoryID = 2)
INSERT INTO Issues (Issue_Name, Describe, Level_, CategoryID) 
VALUES
(N'Không kết nối được với thiết bị từ xa', N'TeamViewer báo lỗi kết nối hoặc timeout.', N'Cao', 2),
(N'Lỗi mất điều khiển trong phiên kết nối', N'Đang điều khiển thì bị ngắt kết nối hoặc lag.', N'Nguy hiểm', 2);

-- Lỗi liên quan đến Nghe nhạc/Xem phim (CategoryID = 2)
INSERT INTO Issues (Issue_Name, Describe, Level_, CategoryID) 
VALUES
(N'Lỗi không mở được file video/audio', N'File mp4, mp3 không phát được hoặc không có tiếng.', N'Thấp', 2),
(N'Lỗi phụ đề không hiển thị', N'Phụ đề bị sai lệch thời gian hoặc không hiện khi xem phim.', N'Trung bình', 2);

----------------------------- Mạng CategoryID = 3
-- Lỗi liên quan đến kết nối mạng có dây (Ethernet)
INSERT INTO Issues (Issue_Name, Describe, Level_, CategoryID) VALUES
(N'Mạng có dây không nhận', N'Cáp mạng bị lỏng hoặc card mạng không hoạt động.', N'Cao', 3),
(N'Tốc độ mạng chậm', N'Dù kết nối dây nhưng tốc độ truy cập rất chậm.', N'Trung bình', 3);

-- Lỗi liên quan đến mạng không dây (Wi-Fi)
INSERT INTO Issues (Issue_Name, Describe, Level_, CategoryID) VALUES
(N'Mạng Wi-Fi không hiển thị', N'Thiết bị không tìm thấy mạng Wi-Fi.', N'Cao', 3),
(N'Wi-Fi chập chờn', N'Kết nối lúc có lúc không hoặc bị rớt mạng thường xuyên.', N'Trung bình', 3);

-- Lỗi liên quan đến mạng di động
INSERT INTO Issues (Issue_Name, Describe, Level_, CategoryID) VALUES
(N'Mạng di động yếu', N'Tín hiệu 3G/4G/5G yếu hoặc không có mạng.', N'Cao', 3),
(N'Không kết nối được Internet qua dữ liệu di động', N'Bật dữ liệu di động nhưng không truy cập được mạng.', N'Trung bình', 3);

-- Lỗi liên quan đến mạng cá nhân (Bluetooth, USB tethering)
INSERT INTO Issues (Issue_Name, Describe, Level_, CategoryID) VALUES
(N'Không chia sẻ mạng qua Bluetooth', N'Không thể chia sẻ kết nối Internet qua Bluetooth.', N'Thấp', 3),
(N'Không kết nối được USB tethering', N'Máy tính không nhận mạng khi kết nối bằng USB.', N'Trung bình', 3);

-- Lỗi liên quan đến mạng cục bộ (LAN)
INSERT INTO Issues (Issue_Name, Describe, Level_, CategoryID) VALUES
(N'Mạng LAN bị lỗi IP', N'Trùng địa chỉ IP hoặc không nhận địa chỉ IP.', N'Cao', 3),
(N'Không truy cập được các thiết bị trong mạng LAN', N'Máy tính không thấy hoặc không truy cập được máy khác.', N'Trung bình', 3);

-- Lỗi liên quan đến mạng diện rộng (WAN/Internet)
INSERT INTO Issues (Issue_Name, Describe, Level_, CategoryID) VALUES
(N'Mạng Internet gián đoạn', N'Không thể truy cập Internet dù thiết bị kết nối được Wi-Fi hoặc dây mạng.', N'Cao', 3),
(N'Mạng toàn quốc bị sự cố', N'Sự cố từ nhà cung cấp khiến nhiều khu vực không có Internet.', N'Nguy hiểm', 3);

-- Lỗi liên quan đến mạng đô thị (MAN)
INSERT INTO Issues (Issue_Name, Describe, Level_, CategoryID) VALUES
(N'Mạng đô thị không đồng bộ', N'Kết nối giữa các khu vực trong hệ thống MAN không ổn định.', N'Trung bình', 3),
(N'Mạng đô thị chậm trong giờ cao điểm', N'Băng thông bị quá tải trong giờ cao điểm.', N'Thấp', 3);

-- Lỗi liên quan đến mạng ngang hàng (P2P)
INSERT INTO Issues (Issue_Name, Describe, Level_, CategoryID) VALUES
(N'Lỗi khi chia sẻ dữ liệu qua P2P', N'Không thể truyền tệp hoặc kết nối đến thiết bị khác.', N'Trung bình', 3),
(N'Mạng P2P không ổn định', N'Kết nối không liên tục hoặc dễ bị gián đoạn.', N'Thấp', 3);



-- ============ ---
-- Bảng Software_Issues 
-- ============ ---

-- Insert into Software_Issues
-- Hệ điều hành
INSERT INTO Software_Issues (SoftwareID, IssueID) VALUES (1, (SELECT IssueID FROM Issues WHERE Issue_Name = N'Lỗi khởi động hệ điều hành'));
INSERT INTO Software_Issues (SoftwareID, IssueID) VALUES (1, (SELECT IssueID FROM Issues WHERE Issue_Name = N'Lỗi cập nhật hệ điều hành'));

-- Trình duyệt
INSERT INTO Software_Issues (SoftwareID, IssueID) VALUES (2, (SELECT IssueID FROM Issues WHERE Issue_Name = N'Lỗi không truy cập được trang web'));
INSERT INTO Software_Issues (SoftwareID, IssueID) VALUES (2, (SELECT IssueID FROM Issues WHERE Issue_Name = N'Lỗi đăng nhập tài khoản Google'));

-- Văn phòng
INSERT INTO Software_Issues (SoftwareID, IssueID) VALUES (3, (SELECT IssueID FROM Issues WHERE Issue_Name = N'Lỗi font chữ bị lỗi trong Word'));
INSERT INTO Software_Issues (SoftwareID, IssueID) VALUES (3, (SELECT IssueID FROM Issues WHERE Issue_Name = N'Excel báo lỗi khi lưu file'));

-- Lập trình
INSERT INTO Software_Issues (SoftwareID, IssueID) VALUES (4, (SELECT IssueID FROM Issues WHERE Issue_Name = N'Lỗi không nhận môi trường biên dịch'));
INSERT INTO Software_Issues (SoftwareID, IssueID) VALUES (4, (SELECT IssueID FROM Issues WHERE Issue_Name = N'Không debug được trong IDE'));

-- Đồ họa
INSERT INTO Software_Issues (SoftwareID, IssueID) VALUES (5, (SELECT IssueID FROM Issues WHERE Issue_Name = N'Lỗi không mở được file thiết kế'));
INSERT INTO Software_Issues (SoftwareID, IssueID) VALUES (5, (SELECT IssueID FROM Issues WHERE Issue_Name = N'Lỗi công cụ không hoạt động đúng'));

-- Chống virus
INSERT INTO Software_Issues (SoftwareID, IssueID) VALUES (6, (SELECT IssueID FROM Issues WHERE Issue_Name = N'Lỗi không cập nhật được cơ sở dữ liệu virus'));
INSERT INTO Software_Issues (SoftwareID, IssueID) VALUES (6, (SELECT IssueID FROM Issues WHERE Issue_Name = N'Lỗi phát hiện nhầm phần mềm hợp lệ'));

-- PDF
INSERT INTO Software_Issues (SoftwareID, IssueID) VALUES (7, (SELECT IssueID FROM Issues WHERE Issue_Name = N'Lỗi không mở được file PDF'));
INSERT INTO Software_Issues (SoftwareID, IssueID) VALUES (7, (SELECT IssueID FROM Issues WHERE Issue_Name = N'Lỗi khi chỉnh sửa nội dung file PDF'));

-- Điều khiển từ xa
INSERT INTO Software_Issues (SoftwareID, IssueID) VALUES (8, (SELECT IssueID FROM Issues WHERE Issue_Name = N'Không kết nối được với thiết bị từ xa'));
INSERT INTO Software_Issues (SoftwareID, IssueID) VALUES (8, (SELECT IssueID FROM Issues WHERE Issue_Name = N'Lỗi mất điều khiển trong phiên kết nối'));

-- Nghe nhạc/Xem phim
INSERT INTO Software_Issues (SoftwareID, IssueID) VALUES (9, (SELECT IssueID FROM Issues WHERE Issue_Name = N'Lỗi không mở được file video/audio'));
INSERT INTO Software_Issues (SoftwareID, IssueID) VALUES (9, (SELECT IssueID FROM Issues WHERE Issue_Name = N'Lỗi phụ đề không hiển thị'));


-- ============ ---
-- Bảng Hardware_Issues
-- ============ ---

-- Máy in
INSERT INTO Hardware_Issues (HardwareID, IssueID) VALUES (1, (SELECT IssueID FROM Issues WHERE Issue_Name = N'Lỗi không in được'));
INSERT INTO Hardware_Issues (HardwareID, IssueID) VALUES (1, (SELECT IssueID FROM Issues WHERE Issue_Name = N'Lỗi kẹt giấy'));

-- Màn hình
INSERT INTO Hardware_Issues (HardwareID, IssueID) VALUES (2, (SELECT IssueID FROM Issues WHERE Issue_Name = N'Màn hình bị nhòe'));
INSERT INTO Hardware_Issues (HardwareID, IssueID) VALUES (2, (SELECT IssueID FROM Issues WHERE Issue_Name = N'Màn hình không lên'));

-- Bàn phím
INSERT INTO Hardware_Issues (HardwareID, IssueID) VALUES (3, (SELECT IssueID FROM Issues WHERE Issue_Name = N'Lỗi phím không phản hồi'));
INSERT INTO Hardware_Issues (HardwareID, IssueID) VALUES (3, (SELECT IssueID FROM Issues WHERE Issue_Name = N'Lỗi kết nối USB'));

-- Mouse
INSERT INTO Hardware_Issues (HardwareID, IssueID) VALUES (4, (SELECT IssueID FROM Issues WHERE Issue_Name = N'Lỗi chuột không di chuyển'));
INSERT INTO Hardware_Issues (HardwareID, IssueID) VALUES (4, (SELECT IssueID FROM Issues WHERE Issue_Name = N'Lỗi nhấp chuột'));

-- Ổ cứng ngoài
INSERT INTO Hardware_Issues (HardwareID, IssueID) VALUES (5, (SELECT IssueID FROM Issues WHERE Issue_Name = N'Ổ cứng ngoài không nhận'));
INSERT INTO Hardware_Issues (HardwareID, IssueID) VALUES (5, (SELECT IssueID FROM Issues WHERE Issue_Name = N'Lỗi mất dữ liệu'));

-- Memory RAM
INSERT INTO Hardware_Issues (HardwareID, IssueID) VALUES (6, (SELECT IssueID FROM Issues WHERE Issue_Name = N'Lỗi bộ nhớ RAM'));
INSERT INTO Hardware_Issues (HardwareID, IssueID) VALUES (6, (SELECT IssueID FROM Issues WHERE Issue_Name = N'Lỗi máy chạy chậm'));

-- VGA Card
INSERT INTO Hardware_Issues (HardwareID, IssueID) VALUES (7, (SELECT IssueID FROM Issues WHERE Issue_Name = N'Lỗi hiển thị đồ họa'));
INSERT INTO Hardware_Issues (HardwareID, IssueID) VALUES (7, (SELECT IssueID FROM Issues WHERE Issue_Name = N'Lỗi không nhận card đồ họa'));

-- Motherboard
INSERT INTO Hardware_Issues (HardwareID, IssueID) VALUES (8, (SELECT IssueID FROM Issues WHERE Issue_Name = N'Lỗi Motherboard'));
INSERT INTO Hardware_Issues (HardwareID, IssueID) VALUES (8, (SELECT IssueID FROM Issues WHERE Issue_Name = N'Lỗi kết nối các linh kiện'));

-- Pin Laptop
INSERT INTO Hardware_Issues (HardwareID, IssueID) VALUES (9, (SELECT IssueID FROM Issues WHERE Issue_Name = N'Pin laptop không sạc'));
INSERT INTO Hardware_Issues (HardwareID, IssueID) VALUES (9, (SELECT IssueID FROM Issues WHERE Issue_Name = N'Lỗi pin giảm nhanh'));

-- Microphone
INSERT INTO Hardware_Issues (HardwareID, IssueID) VALUES (10, (SELECT IssueID FROM Issues WHERE Issue_Name = N'Microphone không ghi âm'));
INSERT INTO Hardware_Issues (HardwareID, IssueID) VALUES (10, (SELECT IssueID FROM Issues WHERE Issue_Name = N'Lỗi âm thanh trong'));


-- ============ ---
-- Bảng Internet_Issues
-- ============ ---
-- Kết nối mạng có dây
INSERT INTO Internet_Issues (InternetID, IssueID)
SELECT 1, IssueID FROM Issues WHERE Issue_Name IN (
    N'Mạng có dây không nhận',
    N'Tốc độ mạng chậm'
);

-- Kết nối mạng không dây
INSERT INTO Internet_Issues (InternetID, IssueID)
SELECT 2, IssueID FROM Issues WHERE Issue_Name IN (
    N'Mạng Wi-Fi không hiển thị',
    N'Wi-Fi chập chờn'
);

-- Mạng di động
INSERT INTO Internet_Issues (InternetID, IssueID)
SELECT 3, IssueID FROM Issues WHERE Issue_Name IN (
    N'Mạng di động yếu',
    N'Không kết nối được Internet qua dữ liệu di động'
);

-- Mạng cá nhân
INSERT INTO Internet_Issues (InternetID, IssueID)
SELECT 4, IssueID FROM Issues WHERE Issue_Name IN (
    N'Không chia sẻ mạng qua Bluetooth',
    N'Không kết nối được USB tethering'
);

-- Mạng cục bộ
INSERT INTO Internet_Issues (InternetID, IssueID)
SELECT 5, IssueID FROM Issues WHERE Issue_Name IN (
    N'Mạng LAN bị lỗi IP',
    N'Không truy cập được các thiết bị trong mạng LAN'
);

-- Mạng diện rộng
INSERT INTO Internet_Issues (InternetID, IssueID)
SELECT 6, IssueID FROM Issues WHERE Issue_Name IN (
    N'Mạng Internet gián đoạn',
    N'Mạng toàn quốc bị sự cố'
);

-- Mạng đô thị
INSERT INTO Internet_Issues (InternetID, IssueID)
SELECT 7, IssueID FROM Issues WHERE Issue_Name IN (
    N'Mạng đô thị không đồng bộ',
    N'Mạng đô thị chậm trong giờ cao điểm'
);

-- Mạng ngang hàng
INSERT INTO Internet_Issues (InternetID, IssueID)
SELECT 8, IssueID FROM Issues WHERE Issue_Name IN (
    N'Lỗi khi chia sẻ dữ liệu qua P2P',
    N'Mạng P2P không ổn định'
);

-- ============ ---
-- Bảng Diagnose
-- ============ ---

INSERT INTO Diagnose (DiagnoseID, Diagnose_Name) VALUES
(1, N'Kiểm tra kết nối'),
(2, N'Kiểm tra driver'),
(3, N'Khởi động lại thiết bị'),
(4, N'Kiểm tra nguồn điện'),
(5, N'Vệ sinh thiết bị'),
(6, N'Kiểm tra cơ chế bên trong'),
(7, N'Kiểm tra cài đặt phần mềm'),
(8, N'Chạy công cụ chẩn đoán'),
(9, N'Xác định linh kiện hỏng'),
(10, N'Kiểm tra xung đột phần cứng'),
(11, N'Kiểm tra nhiệt độ'),
(12, N'Kiểm tra bộ nhớ'),
(13, N'Kiểm tra firmware'),
(14, N'Kiểm tra dữ liệu'),
(15, N'Kiểm tra tương thích');
INSERT INTO Diagnose (DiagnoseID, Diagnose_Name) VALUES -- software
(16, N'Kiểm tra lỗi khởi động'),
(17, N'Kiểm tra cập nhật hệ thống'),
(18, N'Kiểm tra kết nối internet'),
(19, N'Kiểm tra thiết lập tài khoản'),
(20, N'Kiểm tra lỗi font chữ'),
(21, N'Kiểm tra định dạng file'),
(22, N'Kiểm tra môi trường lập trình'),
(23, N'Kiểm tra cấu hình IDE'),
(24, N'Kiểm tra tính tương thích phần mềm'),
(25, N'Kiểm tra lỗi phần mềm'),
(26, N'Kiểm tra tường lửa'),
(27, N'Kiểm tra phần mềm bảo mật'),
(28, N'Kiểm tra codec và trình xem'),
(29, N'Kiểm tra cài đặt phụ đề'),
(30, N'Kiểm tra quyền truy cập');
	INSERT INTO Diagnose (DiagnoseID, Diagnose_Name) VALUES
	(36, N'Kiểm tra kết nối cáp mạng'),
	(37, N'Kiểm tra card mạng'),
	(38, N'Kiểm tra cấu hình IP'),
	(39, N'Kiểm tra bật/tắt Wi-Fi'),
	(40, N'Kiểm tra router Wi-Fi'),
	(41, N'Kiểm tra băng tần Wi-Fi'),
	(42, N'Kiểm tra vùng phủ sóng'),
	(43, N'Kiểm tra cài đặt dữ liệu di động'),
	(44, N'Kiểm tra SIM'),
	(45, N'Kiểm tra quyền Bluetooth'),
	(46, N'Kiểm tra USB tethering'),
	(47, N'Kiểm tra driver USB'),
	(48, N'Kiểm tra xung đột IP'),
	(49, N'Kiểm tra cấu hình firewall'),
	(50, N'Kiểm tra switch/hub'),
	(51, N'Kiểm tra kết nối với ISP'),
	(52, N'Kiểm tra DNS'),
	(53, N'Kiểm tra thông báo từ ISP'),
	(54, N'Kiểm tra băng thông MAN'),
	(55, N'Kiểm tra đồng bộ hóa MAN'),
	(56, N'Kiểm tra cài đặt chia sẻ file'),
	(57, N'Kiểm tra quyền truy cập');

-- ============ ---
-- BẢNG Issue_Diagnose
-- ============ ---

INSERT INTO Issue_Diagnose (IssueID, DiagnoseID) VALUES
(1, 1),
(1, 2),
(1, 4),
(1, 8),
(2, 5),
(2, 6),
(3, 11),
(3, 2),
(4, 1),
(4, 4),
(4, 9),
(5, 2),
(5, 3),
(6, 1),
(6, 2),
(6, 10),
(7, 1),
(7, 2),
(8, 1),
(8, 2),
(9, 1),
(9, 2),
(9, 14),
(10, 14),
(10, 9),
(11, 12),
(11, 2),
(12, 11),
(12, 12),
(13, 2),
(13, 10),
(14, 1),
(14, 9),
(15, 1),
(15, 4),
(15, 9),
(16, 1),
(16, 10),
(17, 1),
(17, 4),
(17, 13),
(18, 11),
(18, 7),
(19, 1),
(19, 2),
(19, 7),
(20, 11),
(20, 7);

INSERT INTO Issue_Diagnose (IssueID, DiagnoseID)
VALUES
(21, 16), -- Lỗi khởi động hệ điều hành liên kết với "Kiểm tra lỗi khởi động"
(21, 17),
(22, 16), -- Lỗi cập nhật hệ điều hành liên kết với "Kiểm tra lỗi khởi động"
(22, 17), -- Lỗi cập nhật hệ điều hành liên kết với "Kiểm tra cập nhật hệ thống"
(23, 18), -- Lỗi không truy cập được trang web liên kết với "Kiểm tra kết nối internet"
(23, 19), -- Lỗi không truy cập được trang web liên kết với "Kiểm tra thiết lập tài khoản"
(24, 19), -- Lỗi đăng nhập tài khoản Google liên kết với "Kiểm tra thiết lập tài khoản"
(25, 20), -- Lỗi font chữ bị lỗi trong Word liên kết với "Kiểm tra lỗi font chữ"
(25, 21), -- Lỗi font chữ bị lỗi trong Word liên kết với "Kiểm tra định dạng file"
(26, 21), -- Excel báo lỗi khi lưu file liên kết với "Kiểm tra định dạng file"
(27, 22), -- Lỗi không nhận môi trường biên dịch liên kết với "Kiểm tra môi trường lập trình"
(27, 23), -- Lỗi không nhận môi trường biên dịch liên kết với "Kiểm tra cấu hình IDE"
(28, 23), -- Không debug được trong IDE liên kết với "Kiểm tra cấu hình IDE"
(29, 24), -- Lỗi không mở được file thiết kế liên kết với "Kiểm tra tính tương thích phần mềm"
(29, 25), -- Lỗi không mở được file thiết kế liên kết với "Kiểm tra lỗi phần mềm"
(30, 25), -- Lỗi công cụ không hoạt động đúng liên kết với "Kiểm tra lỗi phần mềm"
(31, 26), -- Lỗi không cập nhật được cơ sở dữ liệu virus liên kết với "Kiểm tra tường lửa"
(31, 27), -- Lỗi không cập nhật được cơ sở dữ liệu virus liên kết với "Kiểm tra phần mềm bảo mật"
(32, 27), -- Lỗi phát hiện nhầm phần mềm hợp lệ liên kết với "Kiểm tra phần mềm bảo mật"
(33, 28), -- Lỗi không mở được file PDF liên kết với "Kiểm tra codec và trình xem"
(33, 29), -- Lỗi không mở được file PDF liên kết với "Kiểm tra cài đặt phụ đề"
(34, 29), -- Lỗi khi chỉnh sửa nội dung file PDF liên kết với "Kiểm tra cài đặt phụ đề"
(35, 30), -- Không kết nối được với thiết bị từ xa liên kết với "Kiểm tra quyền truy cập"
(35, 26), -- Không kết nối được với thiết bị từ xa liên kết với "Kiểm tra tường lửa"
(36, 30); -- Lỗi mất điều khiển trong phiên kết nối liên kết với "Kiểm tra quyền truy cập"

INSERT INTO Issue_Diagnose (IssueID, DiagnoseID) VALUES
(39, 36),
(39, 37),
(40, 36),
(40, 51),
(41, 39),
(41, 40),
(42, 40),
(42, 41),
(42, 42),
(43, 44),
(43, 42),
(44, 43),
(44, 44),
(45, 45),
(46, 46),
(46, 47),
(47, 38),
(47, 48),
(48, 56),
(48, 57),
(49, 49),
(49, 51),
(50, 51),
(50, 53),
(51, 54),
(51, 55),
(52, 54),
(53, 56),
(54, 56),
(54, 57);

-- ============ ---
-- BẢNG SOLUTION
-- ============ ---
INSERT INTO Solution (SolutionID, Solution_Name, SuccessRate) VALUES
(1, N'Kết nối lại cáp thiết bị', 0.85),
(2, N'Cài đặt lại driver', 0.80),
(3, N'Khởi động lại thiết bị', 0.75),
(4, N'Kiểm tra nguồn điện và thay thế nếu cần', 0.90),
(5, N'Vệ sinh bụi bẩn khỏi thiết bị', 0.70),
(6, N'Sửa chữa cơ chế bên trong', 0.65),
(7, N'Cấu hình lại phần mềm', 0.80),
(8, N'Thực hiện chẩn đoán hệ thống', 0.75),
(9, N'Thay thế linh kiện bị hỏng', 0.95),
(10, N'Giải quyết xung đột phần cứng', 0.85),
(11, N'Cải thiện tản nhiệt', 0.80),
(12, N'Nâng cấp hoặc thay thế bộ nhớ', 0.90),
(13, N'Cập nhật firmware', 0.85),
(14, N'Khôi phục dữ liệu bị mất', 0.60),
(15, N'Thay thế bằng thiết bị tương thích', 0.95);
INSERT INTO Solution (SolutionID, Solution_Name, SuccessRate) VALUES
(16, N'Khôi phục hệ thống', 0.85),
(17, N'Cài đặt lại Windows Update', 0.75),
(18, N'Xóa cache trình duyệt', 0.90),
(19, N'Đặt lại tài khoản Google', 0.85),
(20, N'Cài đặt lại font chữ', 0.95),
(21, N'Chuyển đổi định dạng file', 0.80),
(22, N'Thiết lập biến môi trường', 0.75),
(23, N'Cấu hình lại IDE', 0.85),
(24, N'Cập nhật phần mềm đồ họa', 0.80),
(25, N'Sửa lỗi công cụ đồ họa', 0.70),
(26, N'Cập nhật cơ sở dữ liệu virus thủ công', 0.95),
(27, N'Thêm ngoại lệ cho phần mềm', 0.90),
(28, N'Sửa chữa tệp PDF', 0.75),
(29, N'Cài đặt lại quyền truy cập', 0.85),
(30, N'Kiểm tra cấu hình mạng', 0.80),
(31, N'Tắt tường lửa tạm thời', 0.90),
(32, N'Cài đặt codec', 0.95),
(33, N'Cấu hình phụ đề', 0.85),
(34, N'Cập nhật trình xem', 0.90),
(35, N'Quét và sửa lỗi hệ thống', 0.85);
INSERT INTO Solution (SolutionID, Solution_Name, SuccessRate) VALUES
(36, N'Kết nối lại cáp mạng', 0.90),
(37, N'Cài đặt lại driver card mạng', 0.85),
(38, N'Cấu hình lại IP', 0.80),
(39, N'Bật lại Wi-Fi', 0.95),
(40, N'Khởi động lại router Wi-Fi', 0.85),
(41, N'Chuyển đổi băng tần Wi-Fi', 0.75),
(42, N'Di chuyển đến vùng có sóng tốt hơn', 0.70),
(43, N'Cấu hình lại APN', 0.80),
(44, N'Kiểm tra và thay thế SIM', 0.90),
(45, N'Cấp quyền Bluetooth cho ứng dụng', 0.95),
(46, N'Cấu hình lại USB tethering', 0.85),
(47, N'Cài đặt driver USB', 0.90),
(48, N'Sửa xung đột IP', 0.85),
(49, N'Cấu hình lại firewall', 0.80),
(50, N'Kiểm tra và thay thế switch/hub', 0.75),
(51, N'Liên hệ với ISP để kiểm tra kết nối', 0.60),
(52, N'Thay đổi cài đặt DNS', 0.85),
(53, N'Chờ đợi ISP khắc phục sự cố', 0.50),
(54, N'Tối ưu hóa sử dụng băng thông', 0.70),
(55, N'Cấu hình lại đồng bộ hóa MAN', 0.65),
(56, N'Cấu hình lại chia sẻ file', 0.80),
(57, N'Cấp quyền truy cập cho thiết bị', 0.85);


-- ============ ---
-- Diagnose_Solution
-- ============ ---
INSERT INTO Diagnose_Solution (DiagnoseID, SolutionID) VALUES
(1, 1), -- Kiểm tra kết nối -> Kết nối lại cáp thiết bị
(2, 2), -- Kiểm tra driver -> Cài đặt lại driver
(3, 3), -- Khởi động lại thiết bị -> Khởi động lại thiết bị
(4, 4), -- Kiểm tra nguồn điện -> Kiểm tra nguồn điện và thay thế nếu cần
(5, 5), -- Vệ sinh thiết bị -> Vệ sinh bụi bẩn khỏi thiết bị
(6, 6), -- Kiểm tra cơ chế bên trong -> Sửa chữa cơ chế bên trong
(7, 7), -- Kiểm tra cài đặt phần mềm -> Cấu hình lại phần mềm
(8, 8), -- Chạy công cụ chẩn đoán -> Thực hiện chẩn đoán hệ thống
(9, 9), -- Xác định linh kiện hỏng -> Thay thế linh kiện bị hỏng
(10, 10), -- Kiểm tra xung đột phần cứng -> Giải quyết xung đột phần cứng
(11, 11), -- Kiểm tra nhiệt độ -> Cải thiện tản nhiệt
(12, 12), -- Kiểm tra bộ nhớ -> Nâng cấp hoặc thay thế bộ nhớ
(13, 13), -- Kiểm tra firmware -> Cập nhật firmware
(14, 14), -- Kiểm tra dữ liệu -> Khôi phục dữ liệu bị mất
(15, 15); -- Kiểm tra tương thích -> Thay thế bằng thiết bị tương thích

INSERT INTO Diagnose_Solution (DiagnoseID, SolutionID) VALUES
(16, 16), -- Kiểm tra lỗi khởi động -> Khôi phục hệ thống
(17, 17), -- Kiểm tra cập nhật hệ thống -> Cài đặt lại Windows Update
(18, 18), -- Kiểm tra kết nối internet -> Xóa cache trình duyệt
(18, 30), -- Kiểm tra kết nối internet -> Kiểm tra cấu hình mạng
(19, 19), -- Kiểm tra thiết lập tài khoản -> Đặt lại tài khoản Google
(20, 20), -- Kiểm tra lỗi font chữ -> Cài đặt lại font chữ
(21, 21), -- Kiểm tra định dạng file -> Chuyển đổi định dạng file
(22, 22), -- Kiểm tra môi trường lập trình -> Thiết lập biến môi trường
(23, 23), -- Kiểm tra cấu hình IDE -> Cấu hình lại IDE
(24, 24), -- Kiểm tra tính tương thích phần mềm -> Cập nhật phần mềm đồ họa
(25, 25), -- Kiểm tra lỗi phần mềm -> Sửa lỗi công cụ đồ họa
(26, 30), -- Kiểm tra tường lửa -> Kiểm tra cấu hình mạng
(26, 31), -- Kiểm tra tường lửa -> Tắt tường lửa tạm thời
(27, 26), -- Kiểm tra phần mềm bảo mật -> Cập nhật cơ sở dữ liệu virus thủ công
(27, 27), -- Kiểm tra phần mềm bảo mật -> Thêm ngoại lệ cho phần mềm
(28, 32), -- Kiểm tra codec và trình xem -> Cài đặt codec
(28, 34), -- Kiểm tra codec và trình xem -> Cập nhật trình xem
(29, 33), -- Kiểm tra cài đặt phụ đề -> Cấu hình phụ đề
(30, 29), -- Kiểm tra quyền truy cập -> Cài đặt lại quyền truy cập
(16, 35), -- Kiểm tra lỗi khởi động -> Quét và sửa lỗi hệ thống
(17, 35), -- Kiểm tra cập nhật hệ thống -> Quét và sửa lỗi hệ thống
(21, 28); -- Kiểm tra định dạng file -> Sửa chữa tệp PDF
-- Chèn dữ liệu vào bảng Diagnose_Solution để liên kết Diagnose và Solution
INSERT INTO Diagnose_Solution (DiagnoseID, SolutionID) VALUES
(36, 36), -- Kiểm tra kết nối cáp mạng -> Kết nối lại cáp mạng
(37, 37), -- Kiểm tra card mạng -> Cài đặt lại driver card mạng
(38, 38), -- Kiểm tra cấu hình IP -> Cấu hình lại IP
(39, 39), -- Kiểm tra bật/tắt Wi-Fi -> Bật lại Wi-Fi
(40, 40), -- Kiểm tra router Wi-Fi -> Khởi động lại router Wi-Fi
(41, 41), -- Kiểm tra băng tần Wi-Fi -> Chuyển đổi băng tần Wi-Fi
(42, 42), -- Kiểm tra vùng phủ sóng -> Di chuyển đến vùng có sóng tốt hơn
(43, 43), -- Kiểm tra cài đặt dữ liệu di động -> Cấu hình lại APN
(44, 44), -- Kiểm tra SIM -> Kiểm tra và thay thế SIM
(45, 45), -- Kiểm tra quyền Bluetooth -> Cấp quyền Bluetooth cho ứng dụng
(46, 46), -- Kiểm tra USB tethering -> Cấu hình lại USB tethering
(47, 47), -- Kiểm tra driver USB -> Cài đặt driver USB
(48, 48), -- Kiểm tra xung đột IP -> Sửa xung đột IP
(49, 49), -- Kiểm tra cấu hình firewall -> Cấu hình lại firewall
(50, 50), -- Kiểm tra switch/hub -> Kiểm tra và thay thế switch/hub
(51, 51), -- Kiểm tra kết nối với ISP -> Liên hệ với ISP để kiểm tra kết nối
(52, 52), -- Kiểm tra DNS -> Thay đổi cài đặt DNS
(53, 53), -- Kiểm tra thông báo từ ISP -> Chờ đợi ISP khắc phục sự cố
(54, 54), -- Kiểm tra băng thông MAN -> Tối ưu hóa sử dụng băng thông
(55, 55), -- Kiểm tra đồng bộ hóa MAN -> Cấu hình lại đồng bộ hóa MAN
(56, 56), -- Kiểm tra cài đặt chia sẻ file -> Cấu hình lại chia sẻ file
(57, 57); -- Kiểm tra quyền truy cập -> Cấp quyền truy cập cho thiết bị

-- ============ ---
--  BẢNG ISSUE_SOLUTION 
-- ============ ---
-- Lỗi máy in
INSERT INTO Issue_Solution (IssueID, SolutionID) VALUES
(1, 1), (1, 2), (1, 3), (1, 4), (1, 7), (1, 8), -- Lỗi không in được
(2, 3), (2, 5), (2, 6); -- Lỗi kẹt giấy

-- Lỗi màn hình
INSERT INTO Issue_Solution (IssueID, SolutionID) VALUES
(3, 1), (3, 2), (3, 8), (3, 9), -- Màn hình bị nhòe
(4, 1), (4, 4), (4, 8), (4, 9), (4, 10); -- Màn hình không lên

-- Lỗi bàn phím
INSERT INTO Issue_Solution (IssueID, SolutionID) VALUES
(5, 5), (5, 6), (5, 9), -- Lỗi phím không phản hồi
(6, 1), (6, 2), (6, 3), (6, 7); -- Lỗi kết nối USB

-- Lỗi chuột
INSERT INTO Issue_Solution (IssueID, SolutionID) VALUES
(7, 1), (7, 2), (7, 3), (7, 5), -- Lỗi chuột không di chuyển
(8, 1), (8, 5), (8, 6), (8, 9); -- Lỗi nhấp chuột

-- Lỗi ổ cứng ngoài
INSERT INTO Issue_Solution (IssueID, SolutionID) VALUES
(9, 1), (9, 2), (9, 3), (9, 7), (9, 8), -- Ổ cứng ngoài không nhận
(10, 8), (10, 12), (10, 14); -- Lỗi mất dữ liệu

-- Lỗi RAM
INSERT INTO Issue_Solution (IssueID, SolutionID) VALUES
(11, 6), (11, 8), (11, 9), (11, 12), (11, 15), -- Lỗi bộ nhớ RAM
(12, 8), (12, 11), (12, 12); -- Lỗi máy chạy chậm

-- Lỗi VGA Card
INSERT INTO Issue_Solution (IssueID, SolutionID) VALUES
(13, 1), (13, 2), (13, 6), (13, 8), (13, 9), (13, 11), -- Lỗi hiển thị đồ họa
(14, 2), (14, 6), (14, 8), (14, 9), (14, 10), (14, 15); -- Lỗi không nhận card đồ họa

-- Lỗi Motherboard
INSERT INTO Issue_Solution (IssueID, SolutionID) VALUES
(15, 4), (15, 6), (15, 8), (15, 9), (15, 11), -- Lỗi Motherboard
(16, 6), (16, 8), (16, 9), (16, 10), (16, 13); -- Lỗi kết nối các linh kiện

-- Lỗi Pin Laptop
INSERT INTO Issue_Solution (IssueID, SolutionID) VALUES
(17, 4), (17, 8), (17, 9), -- Pin laptop không sạc
(18, 4), (18, 8), (18, 9), (18, 11); -- Lỗi pin giảm nhanh

-- Lỗi Microphone
INSERT INTO Issue_Solution (IssueID, SolutionID) VALUES
(19, 1), (19, 2), (19, 7), (19, 8), -- Microphone không ghi âm
(20, 1), (20, 2), (20, 5), (20, 7), (20, 8); -- Lỗi âm thanh trong

-- software
-- Lỗi liên quan đến Hệ điều hành
INSERT INTO Issue_Solution (IssueID, SolutionID) VALUES
(21, 16), (21, 35), -- Lỗi khởi động hệ điều hành
(22, 17), (22, 35); -- Lỗi cập nhật hệ điều hành

-- Lỗi liên quan đến Trình duyệt
INSERT INTO Issue_Solution (IssueID, SolutionID) VALUES
(23, 18), (23, 30), (23, 31), -- Lỗi không truy cập được trang web
(24, 18), (24, 19); -- Lỗi đăng nhập tài khoản Google

-- Lỗi liên quan đến Văn phòng
INSERT INTO Issue_Solution (IssueID, SolutionID) VALUES
(25, 20), -- Lỗi font chữ bị lỗi trong Word
(26, 21), (26, 35); -- Excel báo lỗi khi lưu file

-- Lỗi liên quan đến Lập trình
INSERT INTO Issue_Solution (IssueID, SolutionID) VALUES
(27, 22), (27, 35), -- Lỗi không nhận môi trường biên dịch
(28, 23), (28, 35); -- Không debug được trong IDE

-- Lỗi liên quan đến Đồ họa
INSERT INTO Issue_Solution (IssueID, SolutionID) VALUES
(29, 24), (29, 21), -- Lỗi không mở được file thiết kế
(30, 24), (30, 25); -- Lỗi công cụ không hoạt động đúng

-- Lỗi liên quan đến Chống virus
INSERT INTO Issue_Solution (IssueID, SolutionID) VALUES
(31, 26), (31, 30), (31, 31), -- Lỗi không cập nhật được cơ sở dữ liệu virus
(32, 27), (32, 35); -- Lỗi phát hiện nhầm phần mềm hợp lệ

-- Lỗi liên quan đến PDF
INSERT INTO Issue_Solution (IssueID, SolutionID) VALUES
(33, 28), (33, 34), -- Lỗi không mở được file PDF
(34, 28), (34, 29); -- Lỗi khi chỉnh sửa nội dung file PDF

-- Lỗi liên quan đến Điều khiển từ xa
INSERT INTO Issue_Solution (IssueID, SolutionID) VALUES
(35, 30), (35, 31), -- Không kết nối được với thiết bị từ xa
(36, 30), (36, 35); -- Lỗi mất điều khiển trong phiên kết nối

-- Lỗi liên quan đến Nghe nhạc/Xem phim
INSERT INTO Issue_Solution (IssueID, SolutionID) VALUES
(37, 32), (37, 34), -- Lỗi không mở được file video/audio
(38, 33), (38, 34); -- Lỗi phụ đề không hiển thị

-- Mạng có dây không nhận - Giải pháp 36, 37, 38, 40
INSERT INTO Issue_Solution (IssueID, SolutionID) VALUES
(39, 36), -- Kết nối lại cáp mạng
(39, 37), -- Cài đặt lại driver card mạng
(39, 38), -- Cấu hình lại IP
(39, 40); -- Khởi động lại router Wi-Fi

-- Tốc độ mạng chậm - Giải pháp 36, 37, 41, 10
INSERT INTO Issue_Solution (IssueID, SolutionID) VALUES
(40, 36), -- Kết nối lại cáp mạng
(40, 37), -- Cài đặt lại driver card mạng
(40, 41), -- Chuyển đổi băng tần Wi-Fi
(40, 10);  -- Giải quyết xung đột phần cứng

-- Mạng Wi-Fi không hiển thị - Giải pháp 39, 40, 42
INSERT INTO Issue_Solution (IssueID, SolutionID) VALUES
(41, 39), -- Bật lại Wi-Fi
(41, 40), -- Khởi động lại router Wi-Fi
(41, 42); -- Di chuyển đến vùng có sóng tốt hơn

-- Wi-Fi chập chờn - Giải pháp 39, 40, 41
INSERT INTO Issue_Solution (IssueID, SolutionID) VALUES
(42, 39), -- Bật lại Wi-Fi
(42, 40), -- Khởi động lại router Wi-Fi
(42, 41); -- Chuyển đổi băng tần Wi-Fi

-- Mạng di động yếu - Giải pháp 43, 44, 45
INSERT INTO Issue_Solution (IssueID, SolutionID) VALUES
(43, 43), -- Cấu hình lại APN
(43, 44), -- Kiểm tra và thay thế SIM
(43, 45); -- Cấp quyền Bluetooth cho ứng dụng

-- Không kết nối được Internet qua dữ liệu di động - Giải pháp 43, 44, 46
INSERT INTO Issue_Solution (IssueID, SolutionID) VALUES
(44, 43), -- Cấu hình lại APN
(44, 44), -- Kiểm tra và thay thế SIM
(44, 46); -- Cấu hình lại USB tethering

-- Không chia sẻ mạng qua Bluetooth - Giải pháp 45, 46, 57
INSERT INTO Issue_Solution (IssueID, SolutionID) VALUES
(45, 45), -- Cấp quyền Bluetooth cho ứng dụng
(45, 46), -- Cấu hình lại USB tethering
(45, 57); -- Cấp quyền truy cập cho thiết bị

-- Không kết nối được USB tethering - Giải pháp 46, 47, 48
INSERT INTO Issue_Solution (IssueID, SolutionID) VALUES
(46, 46), -- Cấu hình lại USB tethering
(46, 47), -- Cài đặt driver USB
(46, 48); -- Sửa xung đột IP

-- Mạng LAN bị lỗi IP - Giải pháp 48, 49, 50
INSERT INTO Issue_Solution (IssueID, SolutionID) VALUES
(47, 48), -- Sửa xung đột IP
(47, 49), -- Cấu hình lại firewall
(47, 50); -- Kiểm tra và thay thế switch/hub

-- Không truy cập được các thiết bị trong mạng LAN - Giải pháp 48, 49, 50
INSERT INTO Issue_Solution (IssueID, SolutionID) VALUES
(48, 48), -- Sửa xung đột IP
(48, 49), -- Cấu hình lại firewall
(48, 50); -- Kiểm tra và thay thế switch/hub

-- Mạng Internet gián đoạn - Giải pháp 51, 52, 53
INSERT INTO Issue_Solution (IssueID, SolutionID) VALUES
(49, 51), -- Liên hệ với ISP để kiểm tra kết nối
(49, 52), -- Thay đổi cài đặt DNS
(49, 53); -- Chờ đợi ISP khắc phục sự cố

-- Mạng toàn quốc bị sự cố - Giải pháp 53, 51, 52
INSERT INTO Issue_Solution (IssueID, SolutionID) VALUES
(50, 53), -- Chờ đợi ISP khắc phục sự cố
(50, 51), -- Liên hệ với ISP để kiểm tra kết nối
(50, 52); -- Thay đổi cài đặt DNS

-- Mạng đô thị không đồng bộ - Giải pháp 54, 55, 56
INSERT INTO Issue_Solution (IssueID, SolutionID) VALUES
(51, 54), -- Tối ưu hóa sử dụng băng thông
(51, 55), -- Cấu hình lại đồng bộ hóa MAN
(51, 56); -- Cấu hình lại chia sẻ file

-- Mạng đô thị chậm trong giờ cao điểm - Giải pháp 54, 55, 56
INSERT INTO Issue_Solution (IssueID, SolutionID) VALUES
(52, 54), -- Tối ưu hóa sử dụng băng thông
(52, 55), -- Cấu hình lại đồng bộ hóa MAN
(52, 56); -- Cấu hình lại chia sẻ file

-- Lỗi khi chia sẻ dữ liệu qua P2P - Giải pháp 7, 8, 10
INSERT INTO Issue_Solution (IssueID, SolutionID) VALUES
(53, 7),  -- Cấu hình lại phần mềm
(53, 8),  -- Thực hiện chẩn đoán hệ thống
(53, 10); -- Giải quyết xung đột phần cứng

-- Mạng P2P không ổn định - Giải pháp 7, 8, 10
INSERT INTO Issue_Solution (IssueID, SolutionID) VALUES
(54, 7),  -- Cấu hình lại phần mềm
(54, 8),  -- Thực hiện chẩn đoán hệ thống
(54, 10); -- Giải quyết xung đột phần cứng

-- ============ ---
-- Solution_Step
-- ============ ---
INSERT INTO Solution_Step (StepID, Step_Name, Tutorial, SolutionID) VALUES
-- Các bước cho giải pháp "Kết nối lại cáp thiết bị"
(1, N'Ngắt kết nối', N'Ngắt kết nối cáp khỏi thiết bị và máy tính.', 1),
(2, N'Kiểm tra cáp', N'Kiểm tra cáp xem có bị hỏng hoặc đứt không.', 1),
(3, N'Kết nối lại', N'Cắm lại cáp vào cổng đúng trên thiết bị và máy tính.', 1),
(4, N'Xác nhận kết nối', N'Kiểm tra xem thiết bị đã được nhận diện chưa.', 1),

-- Các bước cho giải pháp "Cài đặt lại driver"
(5, N'Gỡ cài đặt driver', N'Vào Trình quản lý thiết bị, tìm và gỡ cài đặt driver.', 2),
(6, N'Tải driver mới', N'Tải driver mới nhất từ trang web chính thức của nhà sản xuất.', 2),
(7, N'Cài đặt driver', N'Chạy tệp cài đặt và làm theo hướng dẫn.', 2),
(8, N'Khởi động lại', N'Khởi động lại máy tính sau khi cài đặt.', 2),

-- Các bước cho giải pháp "Khởi động lại thiết bị"
(9, N'Tắt thiết bị', N'Tắt hoàn toàn thiết bị.', 3),
(10, N'Chờ đợi', N'Đợi ít nhất 30 giây.', 3),
(11, N'Bật lại', N'Bật lại thiết bị và kiểm tra.', 3),

-- Các bước cho giải pháp "Kiểm tra nguồn điện và thay thế nếu cần"
(12, N'Kiểm tra dây nguồn', N'Kiểm tra xem dây nguồn có bị hỏng hoặc lỏng không.', 4),
(13, N'Thử ổ cắm khác', N'Cắm thiết bị vào ổ cắm khác để xác định vấn đề.', 4),
(14, N'Kiểm tra pin', N'Nếu thiết bị chạy bằng pin, thử thay pin mới.', 4),
(15, N'Thay thế bộ nguồn', N'Nếu cần, thay thế bộ nguồn của thiết bị.', 4),

-- Các bước cho giải pháp "Vệ sinh bụi bẩn khỏi thiết bị"
(16, N'Tắt và ngắt kết nối', N'Tắt thiết bị và ngắt kết nối khỏi nguồn điện.', 5),
(17, N'Mở thiết bị (nếu có thể)', N'Mở nắp hoặc vỏ thiết bị theo hướng dẫn của nhà sản xuất.', 5),
(18, N'Làm sạch bằng khí nén', N'Sử dụng bình xịt khí nén để loại bỏ bụi bẩn.', 5),
(19, N'Lau sạch các bề mặt', N'Sử dụng vải mềm và cồn isopropyl để lau các bề mặt.', 5),
(20, N'Lắp lại và kiểm tra', N'Lắp lại thiết bị và kiểm tra hoạt động.', 5);
-- Các bước cho giải pháp "Sửa chữa cơ chế bên trong"
INSERT INTO Solution_Step (StepID, Step_Name, Tutorial, SolutionID) VALUES
(21, N'Tháo thiết bị', N'Tháo thiết bị theo hướng dẫn của nhà sản xuất.', 6),
(22, N'Xác định bộ phận hỏng', N'Kiểm tra các bộ phận bên trong để xác định vấn đề.', 6),
(23, N'Sửa chữa hoặc thay thế', N'Sửa chữa hoặc thay thế bộ phận bị hỏng.', 6),
(24, N'Lắp lại và kiểm tra', N'Lắp lại thiết bị và kiểm tra hoạt động.', 6),

-- Các bước cho giải pháp "Cấu hình lại phần mềm"

(25, N'Mở cài đặt', N'Mở cài đặt hoặc bảng điều khiển liên quan đến thiết bị.', 7),
(26, N'Đặt lại cấu hình', N'Đặt lại các cài đặt về mặc định hoặc điều chỉnh theo nhu cầu.', 7),
(27, N'Lưu cài đặt', N'Lưu các thay đổi cài đặt.', 7),
(28, N'Kiểm tra hoạt động', N'Kiểm tra xem thiết bị có hoạt động đúng không.', 7),

-- Các bước cho giải pháp "Thực hiện chẩn đoán hệ thống"
(29, N'Chạy công cụ chẩn đoán', N'Chạy công cụ chẩn đoán hệ thống hoặc thiết bị.', 8),
(30, N'Phân tích kết quả', N'Xem xét kết quả chẩn đoán để xác định vấn đề.', 8),
(31, N'Thực hiện sửa chữa', N'Thực hiện các bước sửa chữa được đề xuất.', 8),
(32, N'Kiểm tra lại', N'Chạy lại chẩn đoán để xác nhận vấn đề đã được khắc phục.', 8),

-- Các bước cho giải pháp "Thay thế linh kiện bị hỏng"
(33, N'Xác định linh kiện hỏng', N'Xác định chính xác linh kiện nào bị hỏng.', 9),
(34, N'Mua linh kiện thay thế', N'Mua linh kiện thay thế phù hợp với thiết bị.', 9),
(35, N'Tháo linh kiện cũ', N'Tháo linh kiện bị hỏng khỏi thiết bị.', 9),
(36, N'Lắp linh kiện mới', N'Lắp linh kiện mới vào và kiểm tra hoạt động.', 9),

-- Giải quyết xung đột phần cứng
(37, N'Xác định xung đột', N'Kiểm tra Trình quản lý thiết bị để xác định xung đột.', 10),
(38, N'Cập nhật driver', N'Cập nhật các driver liên quan đến thiết bị xung đột.', 10),
(39, N'Thay đổi cổng hoặc khe cắm', N'Thử cắm thiết bị vào cổng hoặc khe cắm khác.', 10),
(40, N'Kiểm tra tương thích', N'Xác nhận rằng tất cả các thiết bị đều tương thích với nhau.', 10),

-- Cải thiện tản nhiệt
(41, N'Vệ sinh quạt và tản nhiệt', N'Làm sạch quạt và tản nhiệt khỏi bụi bẩn.', 11),
(42, N'Thêm quạt làm mát', N'Thêm quạt làm mát bổ sung nếu cần.', 11),
(43, N'Thay thế keo tản nhiệt', N'Thay thế keo tản nhiệt cũ bằng keo mới.', 11),
(44, N'Kiểm tra nhiệt độ', N'Sử dụng phần mềm để theo dõi nhiệt độ sau khi sửa chữa.', 11),

-- Nâng cấp hoặc thay thế bộ nhớ
(45, N'Kiểm tra dung lượng', N'Kiểm tra dung lượng bộ nhớ hiện tại và yêu cầu tối thiểu.', 12),
(46, N'Mua RAM tương thích', N'Mua RAM mới tương thích với hệ thống.', 12),
(47, N'Tháo RAM cũ', N'Tháo RAM cũ (nếu cần thay thế).', 12),
(48, N'Lắp RAM mới', N'Lắp RAM mới vào khe cắm và kiểm tra hoạt động.', 12),

-- Cập nhật firmware
(49, N'Kiểm tra phiên bản hiện tại', N'Kiểm tra phiên bản firmware hiện tại của thiết bị.', 13),
(50, N'Tải firmware mới', N'Tải firmware mới nhất từ trang web chính thức.', 13),
(51, N'Sao lưu dữ liệu', N'Sao lưu dữ liệu quan trọng trước khi cập nhật.', 13),
(52, N'Cập nhật firmware', N'Thực hiện cập nhật theo hướng dẫn của nhà sản xuất.', 13),

-- Khôi phục dữ liệu bị mất
(53, N'Sử dụng công cụ khôi phục', N'Sử dụng phần mềm khôi phục dữ liệu.', 14),
(54, N'Quét thiết bị lưu trữ', N'Quét thiết bị lưu trữ để tìm dữ liệu có thể khôi phục.', 14),
(55, N'Chọn dữ liệu cần khôi phục', N'Chọn các tệp cần khôi phục từ kết quả quét.', 14),
(56, N'Lưu dữ liệu khôi phục', N'Lưu dữ liệu đã khôi phục vào vị trí an toàn.', 14),

-- Thay thế bằng thiết bị tương thích
(57, N'Nghiên cứu thiết bị tương thích', N'Tìm hiểu các thiết bị tương thích với hệ thống.', 15),
(58, N'Mua thiết bị mới', N'Mua thiết bị mới tương thích.', 15),
(59, N'Cài đặt thiết bị', N'Cài đặt thiết bị mới theo hướng dẫn của nhà sản xuất.', 15),
(60, N'Kiểm tra hoạt động', N'Kiểm tra hoạt động của thiết bị mới.', 15);

INSERT INTO Solution_Step (StepID, Step_Name, Tutorial, SolutionID) VALUES
(61, N'Mở Recovery', N'Khởi động lại máy tính và nhấn F8 liên tục để vào chế độ Recovery.', 16),
(62, N'Chọn System Restore', N'Chọn chức năng System Restore từ menu Recovery.', 16),
(63, N'Chọn điểm phục hồi', N'Chọn điểm phục hồi gần nhất khi hệ thống vẫn còn hoạt động tốt.', 16),
(64, N'Xác nhận phục hồi', N'Xác nhận và chờ quá trình phục hồi hoàn tất.', 16);

-- Các bước cho "Cài đặt lại Windows Update"
INSERT INTO Solution_Step (StepID, Step_Name, Tutorial, SolutionID) VALUES
(65, N'Dừng dịch vụ Windows Update', N'Mở Command Prompt với quyền Admin và gõ "net stop wuauserv".', 17),
(66, N'Xóa thư mục SoftwareDistribution', N'Xóa thư mục %windir%\\SoftwareDistribution.', 17),
(67, N'Khởi động lại dịch vụ Windows Update', N'Gõ "net start wuauserv" trong Command Prompt.', 17),
(68, N'Kiểm tra cập nhật', N'Mở Windows Update và kiểm tra cập nhật mới.', 17);

-- Các bước cho "Xóa cache trình duyệt"
INSERT INTO Solution_Step (StepID, Step_Name, Tutorial, SolutionID) VALUES
(69, N'Mở cài đặt trình duyệt', N'Mở menu cài đặt (Nhấn Ctrl+Shift+Delete trong nhiều trình duyệt).', 18),
(70, N'Chọn dữ liệu cần xóa', N'Chọn cookies, cache, lịch sử duyệt web.', 18),
(71, N'Xóa dữ liệu', N'Nhấn nút Xóa hoặc Clear Data.', 18),
(72, N'Khởi động lại trình duyệt', N'Đóng và mở lại trình duyệt.', 18);

-- Các bước cho "Đặt lại tài khoản Google"
INSERT INTO Solution_Step (StepID, Step_Name, Tutorial, SolutionID) VALUES
(73, N'Đăng xuất tài khoản', N'Đăng xuất khỏi tất cả tài khoản Google hiện tại.', 19),
(74, N'Xóa dữ liệu trình duyệt', N'Thực hiện các bước xóa cache và cookie.', 19),
(75, N'Đăng nhập lại', N'Nhập lại thông tin đăng nhập.', 19),
(76, N'Xác minh hai bước nếu có', N'Hoàn thành xác minh hai bước nếu được yêu cầu.', 19);

-- Các bước cho "Cài đặt lại font chữ"
INSERT INTO Solution_Step (StepID, Step_Name, Tutorial, SolutionID) VALUES
(77, N'Mở Control Panel', N'Mở Control Panel và chọn "Fonts".', 20),
(78, N'Xác định font bị lỗi', N'Tìm font bị lỗi trong tài liệu.', 20),
(79, N'Cài đặt lại font', N'Cài đặt lại font bị lỗi hoặc thay thế bằng font khác.', 20),
(80, N'Kiểm tra trong văn bản', N'Mở lại tài liệu để kiểm tra font.', 20);

-- Các bước cho "Chuyển đổi định dạng file"
INSERT INTO Solution_Step (StepID, Step_Name, Tutorial, SolutionID) VALUES
(81, N'Mở với phần mềm tương thích', N'Mở file với phần mềm có thể đọc được định dạng.', 21),
(82, N'Chọn "Lưu dưới dạng"', N'Chọn tùy chọn "Save As" hoặc "Lưu dưới dạng".', 21),
(83, N'Chọn định dạng mới', N'Chọn định dạng file mới tương thích hơn.', 21),
(84, N'Kiểm tra file mới', N'Mở file mới để kiểm tra nội dung và định dạng.', 21);

-- Các bước cho "Thiết lập biến môi trường"
INSERT INTO Solution_Step (StepID, Step_Name, Tutorial, SolutionID) VALUES
(85, N'Mở System Properties', N'Chuột phải vào This PC, chọn Properties, sau đó chọn Advanced System Settings.', 22),
(86, N'Mở Environment Variables', N'Nhấn vào nút Environment Variables.', 22),
(87, N'Thêm hoặc sửa PATH', N'Thêm đường dẫn đến compiler vào biến PATH.', 22),
(88, N'Kiểm tra từ Command Prompt', N'Mở Command Prompt và kiểm tra lệnh "gcc --version" hoặc "javac -version".', 22);

-- Các bước cho "Cấu hình lại IDE"
INSERT INTO Solution_Step (StepID, Step_Name, Tutorial, SolutionID) VALUES
(89, N'Mở cài đặt IDE', N'Mở menu cài đặt của IDE (thường là File > Preferences hoặc File > Settings).', 23),
(90, N'Cấu hình debugger', N'Tìm đến mục debugger trong cài đặt.', 23),
(91, N'Thiết lập lại các tùy chọn', N'Cài đặt lại các tùy chọn debug như breakpoints, biến theo dõi.', 23),
(92, N'Kiểm tra debug', N'Chạy thử debug trên một chương trình đơn giản.', 23);

-- Các bước cho "Cập nhật phần mềm đồ họa"
INSERT INTO Solution_Step (StepID, Step_Name, Tutorial, SolutionID) VALUES
(93, N'Kiểm tra phiên bản hiện tại', N'Mở phần mềm đồ họa và kiểm tra phiên bản (Help > About).', 24),
(94, N'Tải bản cập nhật', N'Truy cập trang web chính thức để tải bản cập nhật mới nhất.', 24),
(95, N'Cài đặt bản cập nhật', N'Đóng phần mềm và cài đặt bản cập nhật.', 24),
(96, N'Kiểm tra sau khi cập nhật', N'Mở lại phần mềm và thử mở file đã bị lỗi.', 24);

-- Các bước cho "Sửa lỗi công cụ đồ họa"
INSERT INTO Solution_Step (StepID, Step_Name, Tutorial, SolutionID) VALUES
(97, N'Đặt lại tùy chọn công cụ', N'Mở cài đặt công cụ và đặt lại về mặc định.', 25),
(98, N'Kiểm tra bộ nhớ', N'Đảm bảo có đủ bộ nhớ RAM và ổ đĩa cho phần mềm.', 25),
(99, N'Kiểm tra card đồ họa', N'Cập nhật driver card đồ họa nếu cần thiết.', 25),
(100, N'Khôi phục cài đặt mặc định', N'Đặt lại toàn bộ cài đặt phần mềm về mặc định.', 25);

-- Các bước cho các giải pháp khác
INSERT INTO Solution_Step (StepID, Step_Name, Tutorial, SolutionID) VALUES
-- Cập nhật cơ sở dữ liệu virus thủ công
(101, N'Tải cơ sở dữ liệu virus', N'Truy cập trang web chính thức của phần mềm bảo mật để tải.', 26),
(102, N'Tắt phần mềm bảo mật', N'Tạm thời tắt phần mềm bảo mật.', 26),
(103, N'Cài đặt cơ sở dữ liệu mới', N'Cài đặt cơ sở dữ liệu virus đã tải.', 26),
(104, N'Khởi động lại phần mềm', N'Khởi động lại phần mềm bảo mật và kiểm tra.', 26),

-- Thêm ngoại lệ cho phần mềm
(105, N'Mở cài đặt phần mềm bảo mật', N'Mở phần mềm bảo mật và tìm đến phần cài đặt.', 27),
(106, N'Tìm mục Exclusions/Exceptions', N'Tìm mục Ngoại lệ hoặc Loại trừ trong cài đặt.', 27),
(107, N'Thêm phần mềm vào danh sách', N'Thêm đường dẫn của phần mềm bị chặn vào danh sách ngoại lệ.', 27),
(108, N'Lưu cài đặt và kiểm tra', N'Lưu cài đặt và thử chạy lại phần mềm đã thêm ngoại lệ.', 27),

-- Sửa chữa tệp PDF
(109, N'Mở công cụ sửa chữa PDF', N'Mở Adobe Acrobat hoặc công cụ sửa chữa PDF khác.', 28),
(110, N'Chọn tùy chọn sửa chữa', N'Tìm đến tùy chọn "Repair PDF" hoặc "Recover PDF".', 28),
(111, N'Chọn file PDF bị lỗi', N'Chọn file PDF cần sửa chữa.', 28),
(112, N'Lưu file đã sửa', N'Lưu file PDF đã sửa chữa với tên mới.', 28),

-- Cài đặt lại quyền truy cập
(113, N'Mở thuộc tính file', N'Chuột phải vào file và chọn Properties.', 29),
(114, N'Chọn tab Security', N'Chọn tab Security hoặc Bảo mật.', 29),
(115, N'Chỉnh sửa quyền', N'Nhấn Edit hoặc Chỉnh sửa để thay đổi quyền.', 29),
(116, N'Áp dụng quyền mới', N'Chọn người dùng và cấp quyền đọc/ghi cần thiết.', 29),

-- Kiểm tra cấu hình mạng
(117, N'Mở Command Prompt', N'Mở Command Prompt để kiểm tra kết nối mạng.', 30),
(118, N'Kiểm tra kết nối', N'Gõ "ping google.com" để kiểm tra kết nối internet.', 30),
(119, N'Kiểm tra cấu hình IP', N'Gõ "ipconfig /all" để kiểm tra cấu hình IP.', 30),
(120, N'Đặt lại cấu hình mạng', N'Gõ "ipconfig /release" rồi "ipconfig /renew" để lấy IP mới.', 30),

-- Tắt tường lửa tạm thời
(121, N'Mở Windows Security', N'Mở Windows Security từ Control Panel hoặc Settings.', 31),
(122, N'Chọn Firewall & Network Protection', N'Chọn mục Firewall & Network Protection.', 31),
(123, N'Tắt tường lửa', N'Tắt tường lửa cho mạng riêng hoặc công cộng.', 31),
(124, N'Thử lại kết nối', N'Thử lại kết nối hoặc chạy phần mềm bị chặn.', 31),

-- Cài đặt codec
(125, N'Tải bộ codec', N'Tải bộ codec như K-Lite Codec Pack từ trang web chính thức.', 32),
(126, N'Cài đặt codec', N'Chạy tệp cài đặt và làm theo hướng dẫn.', 32),
(127, N'Chọn cài đặt phù hợp', N'Chọn cài đặt phù hợp với nhu cầu sử dụng.', 32),
(128, N'Kiểm tra phát lại', N'Mở lại file media để kiểm tra phát lại.', 32),

-- Cấu hình phụ đề
(129, N'Mở tùy chọn phụ đề', N'Mở trình xem video và tìm cài đặt phụ đề.', 33),
(130, N'Điều chỉnh thời gian', N'Sử dụng tùy chọn điều chỉnh thời gian phụ đề.', 33),
(131, N'Thay đổi định dạng phụ đề', N'Chọn định dạng phụ đề phù hợp (srt, sub, idx).', 33),
(132, N'Lưu cài đặt', N'Lưu cài đặt và kiểm tra phụ đề.', 33),

-- Cập nhật trình xem
(133, N'Kiểm tra phiên bản', N'Kiểm tra phiên bản hiện tại của trình xem.', 34),
(134, N'Tải phiên bản mới', N'Tải phiên bản mới nhất từ trang web chính thức.', 34),
(135, N'Cài đặt phiên bản mới', N'Cài đặt phiên bản mới nhất của trình xem.', 34),
(136, N'Kiểm tra sau khi cập nhật', N'Mở lại file và kiểm tra.', 34),

-- Quét và sửa lỗi hệ thống
(137, N'Mở Command Prompt với quyền Admin', N'Nhấp chuột phải vào Start, chọn Command Prompt (Admin).', 35),
(138, N'Chạy SFC', N'Gõ "sfc /scannow" và nhấn Enter để quét và sửa lỗi hệ thống.', 35),
(139, N'Chạy DISM nếu cần', N'Gõ "DISM /Online /Cleanup-Image /RestoreHealth" nếu SFC không khắc phục được.', 35),
(140, N'Khởi động lại máy tính', N'Khởi động lại máy tính sau khi quá trình hoàn tất.', 35);

-------- internet
-- Solution 36: Kết nối lại cáp mạng
INSERT INTO Solution_Step (StepID, Step_Name, Tutorial, SolutionID) VALUES
(141, N'Kiểm tra cáp mạng', N'Kiểm tra xem cáp mạng đã được kết nối đúng cách ở cả hai đầu. Đảm bảo cáp được cắm chặt vào cổng mạng của máy tính và thiết bị mạng (router/modem).', 36),
(142, N'Kiểm tra cổng mạng', N'Kiểm tra cổng mạng trên máy tính và thiết bị mạng không bị hỏng. Quan sát đèn trên cổng mạng xem có sáng không.', 36),
(143, N'Thử cáp mạng khác', N'Nếu có sẵn, hãy thử sử dụng cáp mạng khác để xác định xem cáp hiện tại có bị hỏng không.', 36),
(144, N'Thử cổng mạng khác', N'Nếu thiết bị mạng có nhiều cổng, hãy thử kết nối vào cổng khác để xác định xem cổng hiện tại có bị hỏng không.', 36);

-- Solution 37: Cài đặt lại driver card mạng
INSERT INTO Solution_Step (StepID, Step_Name, Tutorial, SolutionID) VALUES
(145, N'Mở Device Manager', N'Trên Windows, click chuột phải vào Start Menu, chọn "Device Manager". Trên macOS, mở System Preferences > Network.', 37),
(146, N'Tìm card mạng', N'Trong Device Manager, mở rộng mục "Network adapters" để tìm card mạng của bạn.', 37),
(147, N'Gỡ cài đặt driver', N'Click chuột phải vào card mạng và chọn "Uninstall device". Đánh dấu vào ô "Delete the driver software for this device" nếu có.', 37),
(148, N'Khởi động lại máy tính', N'Sau khi gỡ cài đặt, khởi động lại máy tính để Windows tự động cài đặt lại driver mặc định.', 37),
(149, N'Cài đặt driver mới nhất', N'Truy cập trang web của nhà sản xuất và tải driver mới nhất cho card mạng của bạn.', 37);

-- Solution 38: Cấu hình lại IP
INSERT INTO Solution_Step (StepID, Step_Name, Tutorial, SolutionID) VALUES
(150, N'Mở Network Settings', N'Trên Windows, mở Settings > Network & Internet > Status > Network and Sharing Center. Trên macOS, mở System Preferences > Network.', 38),
(151, N'Truy cập cài đặt adapter', N'Trong Network and Sharing Center, click vào "Change adapter settings". Trên macOS, chọn interface mạng đang sử dụng.', 38),
(152, N'Cấu hình IPv4', N'Click chuột phải vào adapter mạng đang sử dụng, chọn "Properties". Sau đó chọn "Internet Protocol Version 4 (TCP/IPv4)" và click "Properties".', 38),
(153, N'Chọn DHCP hoặc Static IP', N'Chọn "Obtain an IP address automatically" để sử dụng DHCP hoặc "Use the following IP address" để cấu hình IP tĩnh.', 38),
(154, N'Cấu hình DNS', N'Chọn "Obtain DNS server address automatically" hoặc "Use the following DNS server addresses" và nhập các địa chỉ DNS server (ví dụ: 8.8.8.8 và 8.8.4.4 cho Google DNS).', 38);

-- Solution 39: Bật lại Wi-Fi
INSERT INTO Solution_Step (StepID, Step_Name, Tutorial, SolutionID) VALUES
(155, N'Kiểm tra công tắc vật lý', N'Trên nhiều laptop có công tắc vật lý hoặc phím Fn + phím chức năng để bật/tắt Wi-Fi. Hãy kiểm tra và đảm bảo Wi-Fi được bật.', 39),
(156, N'Kiểm tra Airplane Mode', N'Đảm bảo Airplane Mode/Chế độ máy bay đã tắt trên thiết bị của bạn.', 39),
(157, N'Bật Wi-Fi trên thanh tác vụ', N'Click vào biểu tượng Wi-Fi trên thanh tác vụ (Windows) hoặc thanh menu (macOS) và bật Wi-Fi.', 39),
(158, N'Bật Wi-Fi trong Settings', N'Trên Windows, mở Settings > Network & Internet > Wi-Fi và bật công tắc Wi-Fi. Trên macOS, mở System Preferences > Network và bật Wi-Fi.', 39);

-- Solution 40: Khởi động lại router Wi-Fi
INSERT INTO Solution_Step (StepID, Step_Name, Tutorial, SolutionID) VALUES
(159, N'Tắt nguồn router', N'Nhấn nút nguồn trên router để tắt hoặc rút phích cắm điện.', 40),
(160, N'Đợi 30 giây', N'Đợi ít nhất 30 giây để đảm bảo router hoàn toàn mất điện và các thành phần được xả hết.', 40),
(161, N'Bật nguồn router', N'Cắm lại phích điện hoặc nhấn nút nguồn để bật router.', 40),
(162, N'Đợi router khởi động', N'Đợi 1-2 phút để router hoàn tất quá trình khởi động. Quan sát đèn báo hiệu để đảm bảo router đã hoạt động bình thường.', 40),
(163, N'Kiểm tra kết nối', N'Thử kết nối lại với Wi-Fi để kiểm tra xem vấn đề đã được giải quyết chưa.', 40);

-- Solution 41: Chuyển đổi băng tần Wi-Fi
INSERT INTO Solution_Step (StepID, Step_Name, Tutorial, SolutionID) VALUES
(164, N'Xác định các băng tần có sẵn', N'Router hiện đại thường hỗ trợ hai băng tần là 2.4GHz và 5GHz. Kiểm tra xem router của bạn có hỗ trợ cả hai không.', 41),
(165, N'Truy cập giao diện quản lý router', N'Mở trình duyệt web và nhập địa chỉ IP của router (thường là 192.168.0.1 hoặc 192.168.1.1) để truy cập giao diện quản lý.', 41),
(166, N'Đăng nhập vào router', N'Nhập tên người dùng và mật khẩu để đăng nhập (thường được in trên nhãn dán ở đáy router).', 41),
(167, N'Cấu hình băng tần', N'Tìm phần cài đặt Wi-Fi hoặc Wireless trong giao diện quản lý, chuyển sang băng tần khác (từ 2.4GHz sang 5GHz hoặc ngược lại).', 41),
(168, N'Lưu cài đặt và kết nối lại', N'Lưu cài đặt mới và kết nối thiết bị của bạn với mạng Wi-Fi mới.', 41);

-- Solution 42: Di chuyển đến vùng có sóng tốt hơn
INSERT INTO Solution_Step (StepID, Step_Name, Tutorial, SolutionID) VALUES
(169, N'Kiểm tra cường độ tín hiệu', N'Quan sát biểu tượng Wi-Fi trên thiết bị để xem cường độ tín hiệu hiện tại.', 42),
(170, N'Xác định vị trí router', N'Xác định vị trí của router Wi-Fi trong nhà hoặc văn phòng.', 42),
(171, N'Di chuyển gần router hơn', N'Di chuyển thiết bị của bạn đến gần router hơn để cải thiện cường độ tín hiệu.', 42),
(172, N'Tránh chướng ngại vật', N'Tránh các chướng ngại vật như tường dày, tủ kim loại, hoặc thiết bị điện tử khác có thể gây nhiễu tín hiệu Wi-Fi.', 42);

-- Solution 43: Cấu hình lại APN (tiếp)
INSERT INTO Solution_Step (StepID, Step_Name, Tutorial, SolutionID) VALUES
(173, N'Mở cài đặt mạng di động', N'Trên Android, mở Settings > Network & Internet > Mobile network. Trên iOS, mở Settings > Cellular > Cellular Data Network.', 43),
(174, N'Truy cập cài đặt APN', N'Trên Android, chọn Access Point Names hoặc APN. Trên iOS, các cài đặt APN nằm trong Cellular Data Network.', 43),
(175, N'Xem các APN hiện có', N'Kiểm tra danh sách các APN đã cấu hình trên thiết bị.', 43),
(176, N'Thêm APN mới', N'Chọn "Add new APN" hoặc biểu tượng "+" để thêm APN mới nếu cần.', 43),
(177, N'Nhập thông tin APN', N'Nhập thông tin APN do nhà mạng cung cấp, bao gồm tên, APN, username, password, MCC, MNC, authentication type, và các thông số khác nếu cần.', 43),
(178, N'Lưu và kích hoạt APN', N'Lưu cài đặt và chọn APN mới từ danh sách để kích hoạt nó.', 43);

-- Solution 44: Kiểm tra và thay thế SIM
INSERT INTO Solution_Step (StepID, Step_Name, Tutorial, SolutionID) VALUES
(179, N'Tắt thiết bị', N'Tắt hoàn toàn thiết bị di động trước khi tháo SIM.', 44),
(180, N'Tháo SIM', N'Sử dụng dụng cụ đẩy SIM hoặc ghim để mở khay SIM và tháo SIM ra.', 44),
(181, N'Kiểm tra SIM', N'Kiểm tra SIM có bị hỏng, trầy xước hoặc bẩn không. Lau nhẹ nhàng các điểm tiếp xúc bằng vải khô sạch nếu cần.', 44),
(182, N'Lắp lại SIM', N'Lắp lại SIM vào khay và đảm bảo nó được đặt đúng vị trí.', 44),
(183, N'Thử SIM khác', N'Nếu có sẵn, hãy thử sử dụng SIM khác để xác định xem SIM hiện tại có bị hỏng không.', 44),
(184, N'Liên hệ nhà mạng', N'Nếu vấn đề vẫn còn, hãy liên hệ với nhà mạng để được hỗ trợ hoặc thay thế SIM mới.', 44);

-- Solution 45: Cấp quyền Bluetooth cho ứng dụng
INSERT INTO Solution_Step (StepID, Step_Name, Tutorial, SolutionID) VALUES
(185, N'Mở cài đặt ứng dụng', N'Trên Android, mở Settings > Apps > [Tên ứng dụng]. Trên iOS, mở Settings > [Tên ứng dụng].', 45),
(186, N'Truy cập cài đặt quyền', N'Chọn "Permissions" hoặc "App permissions" trong cài đặt ứng dụng.', 45),
(187, N'Cấp quyền Bluetooth', N'Tìm quyền "Bluetooth" hoặc "Nearby devices" và bật nó lên.', 45),
(188, N'Cấp quyền vị trí (nếu cần)', N'Trên một số thiết bị, quyền vị trí (Location) cũng cần được cấp để Bluetooth hoạt động đúng.', 45),
(189, N'Khởi động lại ứng dụng', N'Đóng hoàn toàn ứng dụng và mở lại để áp dụng các thay đổi về quyền.', 45);

-- Solution 46: Cấu hình lại USB tethering
INSERT INTO Solution_Step (StepID, Step_Name, Tutorial, SolutionID) VALUES
(190, N'Kết nối thiết bị qua USB', N'Kết nối thiết bị di động với máy tính bằng cáp USB.', 46),
(191, N'Mở cài đặt chia sẻ kết nối', N'Trên Android, mở Settings > Network & Internet > Hotspot & tethering. Trên iOS, mở Settings > Personal Hotspot.', 46),
(192, N'Bật USB tethering', N'Bật tùy chọn "USB tethering" trên Android hoặc bật "Personal Hotspot" trên iOS.', 46),
(193, N'Cài đặt driver nếu cần', N'Trên một số máy tính Windows, bạn có thể cần cài đặt driver USB của thiết bị di động nếu chưa được cài đặt.', 46),
(194, N'Kiểm tra kết nối mạng', N'Trên máy tính, kiểm tra xem đã nhận được kết nối mạng từ thiết bị di động chưa.', 46);

-- Solution 47: Cài đặt driver USB
INSERT INTO Solution_Step (StepID, Step_Name, Tutorial, SolutionID) VALUES
(195, N'Xác định thiết bị USB', N'Kết nối thiết bị USB với máy tính và xác định loại thiết bị.', 47),
(196, N'Mở Device Manager', N'Trên Windows, click chuột phải vào Start Menu và chọn "Device Manager".', 47),
(197, N'Tìm thiết bị trong danh sách', N'Tìm thiết bị USB trong danh sách, thường nằm trong mục "Universal Serial Bus controllers" hoặc có biểu tượng cảnh báo màu vàng.', 47),
(198, N'Cập nhật driver', N'Click chuột phải vào thiết bị và chọn "Update driver". Chọn "Search automatically for updated driver software" hoặc tải driver từ trang web của nhà sản xuất.', 47),
(199, N'Khởi động lại máy tính', N'Sau khi cài đặt driver, khởi động lại máy tính để hoàn tất quá trình.', 47);

-- Solution 48: Sửa xung đột IP
INSERT INTO Solution_Step (StepID, Step_Name, Tutorial, SolutionID) VALUES
(200, N'Xác định xung đột IP', N'Trên Windows, mở Command Prompt và gõ "ipconfig /all" để xem thông tin mạng. Nếu có thông báo xung đột IP, bạn sẽ thấy ghi chú về điều này.', 48),
(201, N'Giải phóng IP hiện tại', N'Trong Command Prompt, gõ "ipconfig /release" để giải phóng địa chỉ IP hiện tại.', 48),
(202, N'Yêu cầu IP mới', N'Gõ "ipconfig /renew" để yêu cầu địa chỉ IP mới từ DHCP server.', 48),
(203, N'Cấu hình IP tĩnh', N'Nếu vấn đề vẫn tiếp diễn, hãy cân nhắc sử dụng địa chỉ IP tĩnh nằm ngoài dải DHCP của router.', 48),
(204, N'Kiểm tra các thiết bị khác', N'Kiểm tra xem có thiết bị nào khác trong mạng đang sử dụng cùng địa chỉ IP không.', 48);

-- Solution 49: Cấu hình lại firewall
INSERT INTO Solution_Step (StepID, Step_Name, Tutorial, SolutionID) VALUES
(205, N'Mở cài đặt firewall', N'Trên Windows, mở Control Panel > System and Security > Windows Defender Firewall. Trên macOS, mở System Preferences > Security & Privacy > Firewall.', 49),
(206, N'Kiểm tra trạng thái firewall', N'Kiểm tra xem firewall đã bật hay tắt và cấu hình hiện tại.', 49),
(207, N'Tạm thời tắt firewall để kiểm tra', N'Tạm thời tắt firewall để kiểm tra xem nó có phải là nguyên nhân gây ra vấn đề kết nối không. Lưu ý: chỉ làm điều này khi đang trong mạng an toàn.', 49),
(208, N'Cấu hình quy tắc cho ứng dụng', N'Thêm ngoại lệ cho các ứng dụng cụ thể cần truy cập mạng bằng cách chọn "Allow an app or feature through Windows Defender Firewall".', 49),
(209, N'Khôi phục cài đặt mặc định', N'Nếu bạn đã thực hiện nhiều thay đổi và không chắc chắn, hãy khôi phục cài đặt firewall về mặc định và cấu hình lại từ đầu.', 49);

-- Solution 50: Kiểm tra và thay thế switch/hub
INSERT INTO Solution_Step (StepID, Step_Name, Tutorial, SolutionID) VALUES
(210, N'Kiểm tra đèn báo hiệu', N'Kiểm tra đèn báo hiệu trên switch/hub để xem chúng có hoạt động bình thường không.', 50),
(211, N'Khởi động lại switch/hub', N'Tắt nguồn switch/hub, đợi 30 giây, sau đó bật lại để khởi động lại.', 50),
(212, N'Kiểm tra cáp kết nối', N'Kiểm tra các cáp kết nối giữa switch/hub với router và các thiết bị khác.', 50),
(213, N'Kiểm tra từng cổng', N'Thử kết nối với từng cổng trên switch/hub để xác định xem có cổng nào bị hỏng không.', 50),
(214, N'Thay thế switch/hub', N'Nếu switch/hub bị hỏng, hãy thay thế bằng thiết bị mới.', 50);

-- Solution 51: Liên hệ với ISP để kiểm tra kết nối
INSERT INTO Solution_Step (StepID, Step_Name, Tutorial, SolutionID) VALUES
(215, N'Ghi chú các triệu chứng', N'Ghi lại các triệu chứng cụ thể về vấn đề kết nối mạng bạn đang gặp phải.', 51),
(216, N'Kiểm tra trạng thái dịch vụ', N'Truy cập trang web của ISP hoặc ứng dụng di động để kiểm tra xem có sự cố trong khu vực của bạn không.', 51),
(217, N'Tìm thông tin liên hệ hỗ trợ', N'Tìm số điện thoại hoặc phương thức liên hệ với bộ phận hỗ trợ kỹ thuật của ISP.', 51),
(218, N'Liên hệ với ISP', N'Gọi điện hoặc gửi tin nhắn cho ISP để báo cáo vấn đề và yêu cầu hỗ trợ.', 51),
(219, N'Theo dõi tiến trình', N'Lưu lại mã số vụ việc hoặc thông tin tham chiếu để theo dõi tiến trình xử lý sự cố.', 51);

-- Solution 52: Thay đổi cài đặt DNS
INSERT INTO Solution_Step (StepID, Step_Name, Tutorial, SolutionID) VALUES
(220, N'Mở cài đặt mạng', N'Trên Windows, mở Settings > Network & Internet > Status > Network and Sharing Center. Trên macOS, mở System Preferences > Network.', 52),
(221, N'Truy cập cài đặt adapter', N'Trong Network and Sharing Center, click vào "Change adapter settings". Trên macOS, chọn interface mạng đang sử dụng.', 52),
(222, N'Mở cài đặt IPv4', N'Click chuột phải vào adapter mạng đang sử dụng, chọn "Properties". Sau đó chọn "Internet Protocol Version 4 (TCP/IPv4)" và click "Properties".', 52),
(223, N'Thay đổi DNS servers', N'Chọn "Use the following DNS server addresses" và nhập địa chỉ DNS servers mới (ví dụ: 8.8.8.8 và 8.8.4.4 cho Google DNS, hoặc 1.1.1.1 và 1.0.0.1 cho Cloudflare DNS).', 52),
(224, N'Lưu cài đặt và làm mới cache DNS', N'Click OK để lưu cài đặt, sau đó mở Command Prompt và gõ "ipconfig /flushdns" để làm mới cache DNS.', 52);

-- Solution 53: Chờ đợi ISP khắc phục sự cố
INSERT INTO Solution_Step (StepID, Step_Name, Tutorial, SolutionID) VALUES
(225, N'Xác nhận sự cố với ISP', N'Liên hệ với ISP để xác nhận có sự cố trong khu vực của bạn không.', 53),
(226, N'Hỏi về thời gian dự kiến khắc phục', N'Hỏi ISP về thời gian dự kiến để khắc phục sự cố.', 53),
(227, N'Thiết lập thông báo', N'Đăng ký nhận thông báo khi sự cố được khắc phục nếu ISP cung cấp dịch vụ này.', 53),
(228, N'Cân nhắc giải pháp tạm thời', N'Cân nhắc sử dụng kết nối di động hoặc Wi-Fi công cộng trong thời gian chờ đợi.', 53);

-- Solution 54: Tối ưu hóa sử dụng băng thông
INSERT INTO Solution_Step (StepID, Step_Name, Tutorial, SolutionID) VALUES
(229, N'Kiểm tra các thiết bị kết nối', N'Kiểm tra danh sách các thiết bị đang kết nối với mạng của bạn.', 54),
(230, N'Kiểm tra ứng dụng sử dụng băng thông', N'Kiểm tra các ứng dụng đang chạy và sử dụng băng thông trên thiết bị của bạn.', 54),
(231, N'Tạm dừng tải xuống/tải lên lớn', N'Tạm dừng các hoạt động tải xuống/tải lên dữ liệu lớn khi cần ưu tiên cho các hoạt động khác.', 54),
(232, N'Cấu hình QoS', N'Truy cập giao diện quản lý router và cấu hình Quality of Service (QoS) để ưu tiên các ứng dụng quan trọng.', 54),
(233, N'Nâng cấp gói dịch vụ', N'Nếu thường xuyên gặp vấn đề về băng thông, hãy cân nhắc nâng cấp gói dịch vụ internet với ISP.', 54);

-- Solution 55: Cấu hình lại đồng bộ hóa MAN
INSERT INTO Solution_Step (StepID, Step_Name, Tutorial, SolutionID) VALUES
(234, N'Truy cập thiết bị MAN', N'Kết nối với thiết bị Metropolitan Area Network (MAN) thông qua giao diện quản lý.', 55),
(235, N'Kiểm tra cấu hình đồng bộ', N'Kiểm tra cài đặt đồng bộ hóa hiện tại trong giao diện quản lý.', 55),
(236, N'Điều chỉnh cài đặt đồng bộ', N'Điều chỉnh các thông số đồng bộ hóa theo khuyến nghị của nhà cung cấp dịch vụ.', 55),
(237, N'Khởi động lại thiết bị', N'Lưu cài đặt mới và khởi động lại thiết bị MAN để áp dụng các thay đổi.', 55),
(238, N'Kiểm tra kết nối', N'Kiểm tra kết nối sau khi khởi động lại để đảm bảo vấn đề đã được giải quyết.', 55);

-- Solution 56: Cấu hình lại chia sẻ file
INSERT INTO Solution_Step (StepID, Step_Name, Tutorial, SolutionID) VALUES
(239, N'Mở cài đặt chia sẻ', N'Trên Windows, mở Control Panel > Network and Internet > Network and Sharing Center > Advanced sharing settings.', 56),
(240, N'Bật chia sẻ file và máy in', N'Bật tùy chọn "Turn on file and printer sharing".', 56),
(241, N'Cấu hình khám phá mạng', N'Bật tùy chọn "Turn on network discovery" để các máy tính khác có thể tìm thấy máy tính của bạn trên mạng.', 56),
(242, N'Thiết lập quyền chia sẻ', N'Chọn thư mục cần chia sẻ, click chuột phải và chọn "Properties > Sharing > Advanced Sharing" để cấu hình quyền truy cập.', 56),
(243, N'Kiểm tra tường lửa', N'Đảm bảo tường lửa cho phép chia sẻ file trong mạng.', 56);

-- Solution 57: Cấp quyền truy cập cho thiết bị
INSERT INTO Solution_Step (StepID, Step_Name, Tutorial, SolutionID) VALUES
(244, N'Xác định loại quyền cần cấp', N'Xác định loại quyền truy cập mà thiết bị cần (ví dụ: truy cập camera, vị trí, storage).', 57),
(245, N'Mở cài đặt quyền', N'Trên Android, mở Settings > Apps > [Tên ứng dụng] > Permissions. Trên iOS, mở Settings > [Tên ứng dụng].', 57),
(246, N'Cấp quyền cần thiết', N'Bật các quyền cần thiết cho thiết bị hoặc ứng dụng hoạt động đúng.', 57),
(247, N'Khởi động lại ứng dụng', N'Đóng và mở lại ứng dụng để áp dụng các thay đổi về quyền.', 57),
(248, N'Kiểm tra hoạt động', N'Kiểm tra xem thiết bị hoặc ứng dụng đã hoạt động đúng với các quyền mới chưa.', 57);

-- ============ ---
-- Tags
-- ============ ---
INSERT INTO Tags (Tag_Name) VALUES
(N'Kết nối'),         -- Connection
(N'Hiển thị'),        -- Display
(N'Phần cứng'),       -- Hardware
(N'Phần mềm'),        -- Software
(N'Mạng'),            -- Network
(N'In ấn'),           -- Printing
(N'Nhập liệu'),       -- Input
(N'Lưu trữ'),         -- Storage
(N'Hiệu suất'),       -- Performance
(N'Âm thanh'),        -- Audio
(N'Pin'),             -- Battery
(N'Đồ họa'),          -- Graphics
(N'Hệ thống'),        -- System
(N'Trình duyệt'),     -- Browser
(N'Văn phòng'),       -- Office
(N'Bảo mật'),         -- Security
(N'Wi-Fi'),           -- Wi-Fi
(N'Ethernet'),        -- Ethernet
(N'Dữ liệu'),         -- Data
(N'USB'),             -- USB
(N'Sạc'),             -- Charging
(N'Lập trình'),       -- Programming
(N'File'),            -- File
(N'Video'),           -- Video
(N'Thiết bị ngoại vi'),  -- Peripheral devices
(N'Bluetooth'),       -- Bluetooth
(N'Điều khiển'),      -- Control
(N'Cập nhật'),        -- Update
(N'Khởi động'),       -- Startup
(N'IP');              -- IP

-- ============ ---
-- Issue_Tag
-- ============ ---
INSERT INTO Issue_Tag (IssueID, TagID) VALUES
(1, 6), (1, 3), (1, 25), -- Lỗi không in được: In ấn, Phần cứng, Thiết bị ngoại vi
(2, 6), (2, 3), (2, 25); -- Lỗi kẹt giấy: In ấn, Phần cứng, Thiết bị ngoại vi

-- Monitor issues
INSERT INTO Issue_Tag (IssueID, TagID) VALUES
(3, 2), (3, 3), (3, 12), -- Màn hình bị nhòe: Hiển thị, Phần cứng, Đồ họa
(4, 2), (4, 3), (4, 1);  -- Màn hình không lên: Hiển thị, Phần cứng, Kết nối

-- Keyboard issues
INSERT INTO Issue_Tag (IssueID, TagID) VALUES
(5, 7), (5, 3), (5, 25), -- Lỗi phím không phản hồi: Nhập liệu, Phần cứng, Thiết bị ngoại vi
(6, 7), (6, 3), (6, 20); -- Lỗi kết nối USB: Nhập liệu, Phần cứng, USB

-- Mouse issues
INSERT INTO Issue_Tag (IssueID, TagID) VALUES
(7, 7), (7, 3), (7, 25), -- Lỗi chuột không di chuyển: Nhập liệu, Phần cứng, Thiết bị ngoại vi
(8, 7), (8, 3), (8, 25); -- Lỗi nhấp chuột: Nhập liệu, Phần cứng, Thiết bị ngoại vi

-- External HDD issues
INSERT INTO Issue_Tag (IssueID, TagID) VALUES
(9, 8), (9, 3), (9, 20), -- Ổ cứng ngoài không nhận: Lưu trữ, Phần cứng, USB
(10, 8), (10, 3), (10, 19); -- Lỗi mất dữ liệu: Lưu trữ, Phần cứng, Dữ liệu

-- RAM issues
INSERT INTO Issue_Tag (IssueID, TagID) VALUES
(11, 9), (11, 3), (11, 13), -- Lỗi bộ nhớ RAM: Hiệu suất, Phần cứng, Hệ thống
(12, 9), (12, 3), (12, 13); -- Lỗi máy chạy chậm: Hiệu suất, Phần cứng, Hệ thống

-- VGA Card issues
INSERT INTO Issue_Tag (IssueID, TagID) VALUES
(13, 12), (13, 3), (13, 2), -- Lỗi hiển thị đồ họa: Đồ họa, Phần cứng, Hiển thị
(14, 12), (14, 3), (14, 1); -- Lỗi không nhận card đồ họa: Đồ họa, Phần cứng, Kết nối

-- Motherboard issues
INSERT INTO Issue_Tag (IssueID, TagID) VALUES
(15, 13), (15, 3), (15, 29), -- Lỗi Motherboard: Hệ thống, Phần cứng, Khởi động
(16, 13), (16, 3), (16, 1);  -- Lỗi kết nối các linh kiện: Hệ thống, Phần cứng, Kết nối

-- Laptop Battery issues
INSERT INTO Issue_Tag (IssueID, TagID) VALUES
(17, 11), (17, 3), (17, 21), -- Pin laptop không sạc: Pin, Phần cứng, Sạc
(18, 11), (18, 3), (18, 9);  -- Lỗi pin giảm nhanh: Pin, Phần cứng, Hiệu suất

-- Microphone issues
INSERT INTO Issue_Tag (IssueID, TagID) VALUES
(19, 10), (19, 3), (19, 25), -- Microphone không ghi âm: Âm thanh, Phần cứng, Thiết bị ngoại vi
(20, 10), (20, 3), (20, 25); -- Lỗi âm thanh trong: Âm thanh, Phần cứng, Thiết bị ngoại vi

-- Software issues (CategoryID = 2)
-- OS issues
INSERT INTO Issue_Tag (IssueID, TagID) VALUES
(21, 13), (21, 4), (21, 29), -- Lỗi khởi động hệ điều hành: Hệ thống, Phần mềm, Khởi động
(22, 13), (22, 4), (22, 28); -- Lỗi cập nhật hệ điều hành: Hệ thống, Phần mềm, Cập nhật

-- Browser issues
INSERT INTO Issue_Tag (IssueID, TagID) VALUES
(23, 14), (23, 4), (23, 5), -- Lỗi không truy cập được trang web: Trình duyệt, Phần mềm, Mạng
(24, 14), (24, 4), (24, 19); -- Lỗi đăng nhập tài khoản Google: Trình duyệt, Phần mềm, Dữ liệu

-- Office issues
INSERT INTO Issue_Tag (IssueID, TagID) VALUES
(25, 15), (25, 4), (25, 23), -- Lỗi font chữ bị lỗi trong Word: Văn phòng, Phần mềm, File
(26, 15), (26, 4), (26, 23); -- Excel báo lỗi khi lưu file: Văn phòng, Phần mềm, File

-- Programming issues
INSERT INTO Issue_Tag (IssueID, TagID) VALUES
(27, 22), (27, 4), (27, 13), -- Lỗi không nhận môi trường biên dịch: Lập trình, Phần mềm, Hệ thống
(28, 22), (28, 4), (28, 27); -- Không debug được trong IDE: Lập trình, Phần mềm, Điều khiển

-- Graphics software issues
INSERT INTO Issue_Tag (IssueID, TagID) VALUES
(29, 12), (29, 4), (29, 23), -- Lỗi không mở được file thiết kế: Đồ họa, Phần mềm, File
(30, 12), (30, 4), (30, 27); -- Lỗi công cụ không hoạt động đúng: Đồ họa, Phần mềm, Điều khiển

-- Antivirus issues
INSERT INTO Issue_Tag (IssueID, TagID) VALUES
(31, 16), (31, 4), (31, 28), -- Lỗi không cập nhật được cơ sở dữ liệu virus: Bảo mật, Phần mềm, Cập nhật
(32, 16), (32, 4), (32, 13); -- Lỗi phát hiện nhầm phần mềm hợp lệ: Bảo mật, Phần mềm, Hệ thống

-- PDF issues
INSERT INTO Issue_Tag (IssueID, TagID) VALUES
(33, 23), (33, 4), (33, 15), -- Lỗi không mở được file PDF: File, Phần mềm, Văn phòng
(34, 23), (34, 4), (34, 15); -- Lỗi khi chỉnh sửa nội dung file PDF: File, Phần mềm, Văn phòng

-- Remote control issues
INSERT INTO Issue_Tag (IssueID, TagID) VALUES
(35, 27), (35, 4), (35, 5), -- Không kết nối được với thiết bị từ xa: Điều khiển, Phần mềm, Mạng
(36, 27), (36, 4), (36, 5); -- Lỗi mất điều khiển trong phiên kết nối: Điều khiển, Phần mềm, Mạng

-- Media issues
INSERT INTO Issue_Tag (IssueID, TagID) VALUES
(37, 24), (37, 4), (37, 10), -- Lỗi không mở được file video/audio: Video, Phần mềm, Âm thanh
(38, 24), (38, 4), (38, 23); -- Lỗi phụ đề không hiển thị: Video, Phần mềm, File

-- Network issues (CategoryID = 3)
-- Ethernet issues
INSERT INTO Issue_Tag (IssueID, TagID) VALUES
(39, 18), (39, 5), (39, 1), -- Mạng có dây không nhận: Ethernet, Mạng, Kết nối
(40, 18), (40, 5), (40, 9); -- Tốc độ mạng chậm: Ethernet, Mạng, Hiệu suất

-- Wi-Fi issues
INSERT INTO Issue_Tag (IssueID, TagID) VALUES
(41, 17), (41, 5), (41, 1), -- Mạng Wi-Fi không hiển thị: Wi-Fi, Mạng, Kết nối
(42, 17), (42, 5), (42, 9); -- Wi-Fi chập chờn: Wi-Fi, Mạng, Hiệu suất

-- Mobile network issues
INSERT INTO Issue_Tag (IssueID, TagID) VALUES
(43, 5), (43, 9), (43, 1), -- Mạng di động yếu: Mạng, Hiệu suất, Kết nối
(44, 5), (44, 19), (44, 1); -- Không kết nối được Internet qua dữ liệu di động: Mạng, Dữ liệu, Kết nối

-- Personal network issues
INSERT INTO Issue_Tag (IssueID, TagID) VALUES
(45, 26), (45, 5), (45, 19), -- Không chia sẻ mạng qua Bluetooth: Bluetooth, Mạng, Dữ liệu
(46, 20), (46, 5), (46, 1); -- Không kết nối được USB tethering: USB, Mạng, Kết nối

-- LAN issues
INSERT INTO Issue_Tag (IssueID, TagID) VALUES
(47, 5), (47, 30), (47, 13), -- Mạng LAN bị lỗi IP: Mạng, IP, Hệ thống
(48, 5), (48, 1), (48, 19); -- Không truy cập được các thiết bị trong mạng LAN: Mạng, Kết nối, Dữ liệu

-- WAN/Internet issues
INSERT INTO Issue_Tag (IssueID, TagID) VALUES
(49, 5), (49, 1), (49, 9), -- Mạng Internet gián đoạn: Mạng, Kết nối, Hiệu suất
(50, 5), (50, 13), (50, 9); -- Mạng toàn quốc bị sự cố: Mạng, Hệ thống, Hiệu suất

-- MAN issues
INSERT INTO Issue_Tag (IssueID, TagID) VALUES
(51, 5), (51, 1), (51, 13), -- Mạng đô thị không đồng bộ: Mạng, Kết nối, Hệ thống
(52, 5), (52, 9), (52, 19); -- Mạng đô thị chậm trong giờ cao điểm: Mạng, Hiệu suất, Dữ liệu

-- P2P issues
INSERT INTO Issue_Tag (IssueID, TagID) VALUES
(53, 5), (53, 19), (53, 1), -- Lỗi khi chia sẻ dữ liệu qua P2P: Mạng, Dữ liệu, Kết nối
(54, 5), (54, 1), (54, 9); -- Mạng P2P không ổn định: Mạng, Kết nối, Hiệu suất



-- ============ ---
-- 
-- ============ ---







