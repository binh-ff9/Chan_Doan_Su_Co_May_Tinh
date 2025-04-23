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

-- Lỗi liên quan đến Máy in (HardwareID = 1)
INSERT INTO Issues (Issue_Name, Describe, Level_, SoftwareID) VALUES
(N'Lỗi không in được', N'Máy in không nhận lệnh in hoặc không kết nối với máy tính.', N'Cao', 1),
(N'Lỗi kẹt giấy', N'Giấy bị kẹt trong máy in, không thể tiếp tục in.', N'Trung bình', 1);

-- Lỗi liên quan đến Màn hình (HardwareID = 2)
INSERT INTO Issues (Issue_Name, Describe, Level_, SoftwareID) VALUES
(N'Màn hình bị nhòe', N'Màn hình hiển thị bị mờ hoặc nhòe, ảnh không rõ nét.', N'Trung bình', 2),
(N'Màn hình không lên', N'Màn hình không hiển thị gì, dù máy tính vẫn bật.', N'Cao', 2);

-- Lỗi liên quan đến Bàn phím (HardwareID = 3)
INSERT INTO Issues (Issue_Name, Describe, Level_, SoftwareID) VALUES
(N'Lỗi phím không phản hồi', N'Một số phím trên bàn phím không hoạt động.', N'Trung bình', 3),
(N'Lỗi kết nối USB', N'Bàn phím không nhận tín hiệu khi cắm vào máy tính.', N'Cao', 3);

-- Lỗi liên quan đến Mouse (HardwareID = 4)
INSERT INTO Issues (Issue_Name, Describe, Level_, SoftwareID) VALUES
(N'Lỗi chuột không di chuyển', N'Chuột không phản hồi hoặc không di chuyển được trên màn hình.', N'Trung bình', 4),
(N'Lỗi nhấp chuột', N'Nhấp chuột không hoạt động, đôi khi không nhận tín hiệu.', N'Cao', 4);

-- Lỗi liên quan đến Ổ cứng ngoài (HardwareID = 5)
INSERT INTO Issues (Issue_Name, Describe, Level_, SoftwareID) VALUES
(N'Ổ cứng ngoài không nhận', N'Ổ cứng không được nhận diện khi kết nối với máy tính.', N'Nguy hiểm', 5),
(N'Lỗi mất dữ liệu', N'Dữ liệu trong ổ cứng ngoài không thể truy xuất hoặc bị mất.', N'Cao', 5);

-- Lỗi liên quan đến Memory RAM (HardwareID = 6)
INSERT INTO Issues (Issue_Name, Describe, Level_, SoftwareID) VALUES
(N'Lỗi bộ nhớ RAM', N'Máy tính báo lỗi bộ nhớ không đủ hoặc không nhận dạng bộ nhớ RAM.', N'Cao', 6),
(N'Lỗi máy chạy chậm', N'Máy tính chạy chậm hoặc bị treo, nguyên nhân có thể do bộ nhớ RAM không đủ hoặc bị lỗi.', N'Trung bình', 6);

-- Lỗi liên quan đến VGA Card (HardwareID = 7)
INSERT INTO Issues (Issue_Name, Describe, Level_, SoftwareID) VALUES
(N'Lỗi hiển thị đồ họa', N'VGA card không hiển thị hình ảnh, hoặc hình ảnh bị giật, mất màu.', N'Cao', 7),
(N'Lỗi không nhận card đồ họa', N'Máy tính không nhận VGA card, không hiển thị được đồ họa.', N'Nguy hiểm', 7);

-- Lỗi liên quan đến Motherboard (HardwareID = 8)
INSERT INTO Issues (Issue_Name, Describe, Level_, SoftwareID) VALUES
(N'Lỗi Motherboard', N'Motherboard không nhận tín hiệu hoặc không khởi động được máy tính.', N'Nguy hiểm', 8),
(N'Lỗi kết nối các linh kiện', N'Motherboard bị lỗi khiến các linh kiện như RAM, VGA không hoạt động.', N'Cao', 8);

-- Lỗi liên quan đến Pin Laptop (HardwareID = 9)
INSERT INTO Issues (Issue_Name, Describe, Level_, SoftwareID) VALUES
(N'Pin laptop không sạc', N'Pin không nhận sạc, laptop chỉ có thể sử dụng khi cắm nguồn điện.', N'Cao', 9),
(N'Lỗi pin giảm nhanh', N'Pin laptop giảm nhanh chóng dù mới sạc đầy.', N'Trung bình', 9);

-- Lỗi liên quan đến Microphone (HardwareID = 10)
INSERT INTO Issues (Issue_Name, Describe, Level_, SoftwareID) VALUES
(N'Microphone không ghi âm', N'Microphone không nhận tín hiệu âm thanh hoặc không ghi âm được.', N'Cao', 10),
(N'Lỗi âm thanh trong', N'Microphone thu âm thanh kém, bị nhiễu hoặc không rõ.', N'Trung bình', 10);




----------------------------------------------

