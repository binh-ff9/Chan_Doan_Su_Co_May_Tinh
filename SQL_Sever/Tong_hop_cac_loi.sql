-- Lỗi SOFTWARE
INSERT INTO Issues (Issue_Name, Describe, Level_, SoftwareID) VALUES
(N'Lỗi khởi động hệ điều hành', N'Máy tính không thể vào Windows, chỉ hiện màn hình đen hoặc vòng tròn xoay mãi.', N'Cao', 1),
(N'Lỗi cập nhật hệ điều hành', N'Quá trình cập nhật bị lỗi, không thể hoàn tất, hoặc gây lỗi hệ thống.', N'Nguy hiểm', 1);

INSERT INTO Issues (Issue_Name, Describe, Level_, SoftwareID) VALUES
(N'Lỗi không truy cập được trang web', N'Báo lỗi DNS hoặc mạng dù Internet vẫn hoạt động.', N'Trung bình', 2),
(N'Lỗi đăng nhập tài khoản Google', N'Trình duyệt không đăng nhập được tài khoản hoặc tự đăng xuất.', N'Cao', 2);

INSERT INTO Issues (Issue_Name, Describe, Level_, SoftwareID) VALUES
(N'Lỗi font chữ bị lỗi trong Word', N'Tài liệu mở ra toàn ký tự lạ hoặc chữ bị biến dạng.', N'Thấp', 3),
(N'Excel báo lỗi khi lưu file', N'Lưu file gặp lỗi định dạng hoặc mất dữ liệu.', N'Cao', 3);

INSERT INTO Issues (Issue_Name, Describe, Level_, SoftwareID) VALUES
(N'Lỗi không nhận môi trường biên dịch', N'VS Code không nhận compiler như gcc, javac.', N'Cao', 4),
(N'Không debug được trong IDE', N'Breakpoints không hoạt động hoặc không hiển thị biến.', N'Trung bình', 4);

INSERT INTO Issues (Issue_Name, Describe, Level_, SoftwareID) VALUES
(N'Lỗi không mở được file thiết kế', N'Tệp PSD hoặc AI bị hỏng hoặc phần mềm báo lỗi định dạng.', N'Nguy hiểm', 5),
(N'Lỗi công cụ không hoạt động đúng', N'Công cụ brush, gradient hoạt động sai hoặc không phản hồi.', N'Trung bình', 5);

INSERT INTO Issues (Issue_Name, Describe, Level_, SoftwareID) VALUES
(N'Lỗi không cập nhật được cơ sở dữ liệu virus', N'Kaspersky hoặc Windows Defender báo lỗi khi cập nhật.', N'Cao', 6),
(N'Lỗi phát hiện nhầm phần mềm hợp lệ', N'Chương trình bị xóa dù không có mã độc.', N'Nguy hiểm', 6);

INSERT INTO Issues (Issue_Name, Describe, Level_, SoftwareID) VALUES
(N'Lỗi không mở được file PDF', N'File báo lỗi hỏng hoặc không tương thích.', N'Trung bình', 7),
(N'Lỗi khi chỉnh sửa nội dung file PDF', N'Một số đoạn văn bản không sửa được, bị khóa.', N'Thấp', 7);

INSERT INTO Issues (Issue_Name, Describe, Level_, SoftwareID) VALUES
(N'Không kết nối được với thiết bị từ xa', N'TeamViewer báo lỗi kết nối hoặc timeout.', N'Cao', 8),
(N'Lỗi mất điều khiển trong phiên kết nối', N'Đang điều khiển thì bị ngắt kết nối hoặc lag.', N'Nguy hiểm', 8);

INSERT INTO Issues (Issue_Name, Describe, Level_, SoftwareID) VALUES
(N'Không kết nối được với thiết bị từ xa', N'TeamViewer báo lỗi kết nối hoặc timeout.', N'Cao', 8),
(N'Lỗi mất điều khiển trong phiên kết nối', N'Đang điều khiển thì bị ngắt kết nối hoặc lag.', N'Nguy hiểm', 8);

INSERT INTO Issues (Issue_Name, Describe, Level_, SoftwareID) VALUES
(N'Lỗi không mở được file video/audio', N'File mp4, mp3 không phát được hoặc không có tiếng.', N'Thấp', 9),
(N'Lỗi phụ đề không hiển thị', N'Phụ đề bị sai lệch thời gian hoặc không hiện khi xem phim.', N'Mức độ', 9);

----------------------------------------------

-- Lỗi hardware

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


----------------------------------------------

