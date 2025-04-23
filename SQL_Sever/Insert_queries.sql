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
    (3, N'Internet'),
    (4, N'Virus');

-- ============ ---
-- BẢNG SOFTWARE
-- ============ ---

INSERT INTO Software (Name_Software, Type_Software, Funtion, Version_, CategoryID) VALUES 
(N'Trình quản lý kết nối Wi-Fi', N'Hệ thống', N'Quản lý và kết nối mạng Wi-Fi', N'v2.1', 1),
(N'Trình điều khiển bàn phím', N'Driver', N'Giao tiếp giữa hệ điều hành và bàn phím', N'v1.0', 1),
(N'Driver USB', N'Driver', N'Hỗ trợ nhận diện thiết bị USB', N'v1.2', 1),
(N'Trình điều khiển card đồ họa', N'Driver', N'Hỗ trợ hiển thị hình ảnh từ GPU', N'v3.5', 1),
(N'Trình điều khiển âm thanh', N'Driver', N'Quản lý và xử lý âm thanh', N'v2.3', 1),
(N'Phần mềm trình duyệt', N'Ứng dụng', N'Truy cập và duyệt Internet', N'v109.0', 1),
(N'Phần mềm cập nhật hệ thống', N'Hệ thống', N'Cập nhật bản vá lỗi và tính năng mới', N'v5.7', 1),
(N'Phần mềm đọc PDF', N'Ứng dụng', N'Mở và xem tệp PDF', N'v3.1', 1),
(N'Ứng dụng phát video trực tuyến', N'Ứng dụng', N'Xem video trực tuyến trên nền tảng web', N'v12.0', 1);

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
INSERT INTO Issues (Issue_Name, Describe, Level_, CategoryID) VALUES
(N'Lỗi khởi động chậm', N'Hệ thống mất nhiều thời gian để khởi động.', N'Trung bình', 1),
(N'Máy tự động sleep khi đang sử dụng', N'Thiết bị chuyển sang chế độ ngủ không mong muốn.', N'Thấp', 1),
(N'Không cài được driver', N'Hệ thống từ chối hoặc không nhận driver.', N'Trung bình', 1),
(N'Tệp Word bị lỗi không lưu được', N'Văn bản không thể lưu hoặc tự động bị đóng.', N'Trung bình', 1),
(N'Lỗi Full Disk 100%', N'Sử dụng ổ đĩa luôn ở mức 100% khiến máy chậm.', N'Cao', 2),


(N'Lỗi cập nhật Windows không hoàn tất', N'Cập nhật treo hoặc thất bại liên tục.', N'Trung bình', 1),
(N'Thiết bị Bluetooth mất kết nối liên tục', N'Kết nối không ổn định giữa các thiết bị Bluetooth.', N'Thấp', 2),
(N'Không thể bật chế độ máy bay', N'Chế độ máy bay không hoạt động hoặc bị vô hiệu hóa.', N'Thấp', 1),
(N'Lỗi giao diện người dùng bị đơ', N'Một phần giao diện UI không phản hồi.', N'Trung bình', 1),
(N'Máy báo lỗi "Access Denied"', N'Người dùng không đủ quyền truy cập tệp hoặc thư mục.', N'Trung bình', 1),
(N'Máy tính không kết nối được VPN', N'VPN bị lỗi xác thực hoặc không vào được mạng.', N'Trung bình', 3),
(N'Email bị gửi vào spam', N'Thư hợp lệ vẫn bị đánh dấu là spam.', N'Thấp', 1),
(N'Máy bị nhiễm adware hiển thị quảng cáo', N'Quảng cáo xuất hiện ngẫu nhiên trên trình duyệt.', N'Cao', 2),
(N'Ứng dụng bị treo khi mở nhiều tab', N'Không xử lý được đa nhiệm dẫn đến crash.', N'Trung bình', 1),
(N'Lỗi không tương thích màn hình phụ', N'Màn hình phụ không hoạt động đúng độ phân giải.', N'Trung bình', 2),
(N'Lỗi không thể thoát ứng dụng', N'Ứng dụng không thể đóng bằng cách thông thường.', N'Trung bình', 1),
(N'Không đồng bộ được với OneDrive', N'Tệp không thể tải lên hoặc tải xuống từ OneDrive.', N'Thấp', 1),
(N'Lỗi proxy trong trình duyệt', N'Không thể duyệt web do cấu hình proxy sai.', N'Trung bình', 3),
(N'Thông báo pin giả', N'Hệ thống hiển thị sai mức pin.', N'Thấp', 2),
(N'Thời gian hệ thống bị sai liên tục', N'Không cập nhật được giờ hoặc tự động thay đổi.', N'Thấp', 1),
(N'Lỗi phần mềm không phản hồi', N'Phần mềm chạy nhưng không có phản hồi người dùng.', N'Trung bình', 1),
(N'Không thể bật đèn bàn phím', N'Đèn nền bàn phím không hoạt động.', N'Thấp', 2),
(N'Lỗi khi mở tệp Excel', N'Tệp không mở được hoặc hiển thị sai dữ liệu.', N'Trung bình', 1),
(N'Không thể gỡ cài đặt phần mềm', N'Ứng dụng không có trong danh sách hoặc không gỡ được.', N'Trung bình', 1),
(N'Lỗi mạng nội bộ không chia sẻ được file', N'Máy không tìm thấy máy khác trong cùng mạng LAN.', N'Trung bình', 3),
(N'Màn hình bị ám màu', N'Màn hình hiển thị sai màu hoặc bị lệch sắc độ.', N'Trung bình', 2),
(N'Lỗi không tìm thấy server', N'Hệ thống không thể định vị máy chủ.', N'Cao', 3),
(N'Không thể bật Task Manager', N'Ứng dụng Task Manager bị vô hiệu hóa hoặc không chạy.', N'Cao', 1),
(N'Máy bị nhiễm trojan', N'Mã độc điều khiển hệ thống ngầm.', N'Cao', 2),
(N'Ổ cứng không hiển thị dung lượng đúng', N'Sai số về dung lượng thật và hiển thị.', N'Trung bình', 2),
(N'Lỗi thao tác cử chỉ touchpad', N'Touchpad không nhận thao tác 2 ngón hoặc 3 ngón.', N'Thấp', 2),
(N'Lỗi màn hình không tự xoay', N'Chế độ xoay màn hình không hoạt động trên laptop/tablet.', N'Thấp', 2),
(N'Không phát hiện webcam', N'Hệ điều hành không phát hiện được camera tích hợp.', N'Trung bình', 2),
(N'Không thể thay đổi hình nền', N'Hệ điều hành không cho phép đổi background.', N'Thấp', 1),
(N'Lỗi khi thay đổi độ phân giải màn hình', N'Không áp dụng được cài đặt độ phân giải mới.', N'Trung bình', 2),
(N'Lỗi thông báo tràn RAM', N'Thông báo hết RAM khi mở nhiều ứng dụng.', N'Cao', 2),
(N'Trình duyệt bị redirect đến trang lạ', N'Có thể do malware thay đổi cấu hình.', N'Cao', 2),
(N'Không thể cài đặt bản vá bảo mật', N'Hệ thống từ chối hoặc không thể cập nhật.', N'Cao', 1),
(N'Không thể reset máy về trạng thái ban đầu', N'Tùy chọn reset bị khóa hoặc lỗi.', N'Cao', 1),
(N'Máy tự động tắt không báo trước', N'Tự động shutdown gây mất dữ liệu.', N'Cao', 2),
(N'Lỗi màn hình sọc ngang dọc', N'Màn hình hiển thị sọc do lỗi phần cứng.', N'Cao', 2),
(N'Máy tính bị khóa do phần mềm độc hại', N'Màn hình bị khoá hoàn toàn bởi ransomware.', N'Cao', 2),
(N'Lỗi driver card đồ họa', N'Không chạy được ứng dụng đồ họa hoặc game.', N'Cao', 2),
(N'Không thể chỉnh độ sáng màn hình', N'Thiết lập độ sáng không hoạt động.', N'Trung bình', 2),
(N'Máy khởi động vào BIOS liên tục', N'Máy không vào được hệ điều hành.', N'Cao', 2),
(N'Phần mềm gián điệp theo dõi người dùng', N'Spyware thu thập thông tin mà không được phép.', N'Cao', 2),
(N'Máy tính nhiễm worm phát tán qua mạng', N'Worm tự nhân bản và lan rộng.', N'Cao', 2),
(N'Lỗi kích hoạt bản quyền Windows', N'Hệ điều hành không được kích hoạt.', N'Trung bình', 1),
(N'Thông báo lỗi hệ điều hành thiếu file .dll', N'Máy tính báo thiếu file .dll cần thiết để chạy ứng dụng.', N'Trung bình', 1),
(N'Không thể mở Control Panel', N'Hệ điều hành không cho phép truy cập Control Panel.', N'Trung bình', 1),
(N'CPU quá nóng', N'Nhiệt độ CPU vượt mức cho phép gây ảnh hưởng hiệu năng.', N'Cao', 2),
(N'Lỗi màn hình xanh (BSOD)', N'Máy tính bị lỗi nghiêm trọng và hiển thị màn hình xanh.', N'Cao', 2),
(N'Virus gây chậm hệ thống', N'Hệ thống chậm do bị nhiễm virus.', N'Cao', 2),
(N'Không thể kết nối Internet', N'Máy tính không thể truy cập được Internet.', N'Cao', 3),
(N'Tin tặc kiểm soát từ xa', N'Hệ thống bị điều khiển từ xa trái phép.', N'Cao', 2),
(N'Ổ cứng phát ra tiếng động lạ', N'Dấu hiệu ổ cứng sắp hỏng.', N'Cao', 2),
(N'Tệp bị mã hóa bởi ransomware', N'File bị khóa và yêu cầu trả tiền chuộc.', N'Cao', 2),
(N'Máy tính tự khởi động lại liên tục', N'Máy tự động restart không rõ lý do.', N'Cao', 1),
(N'Không nhận ổ đĩa ngoài', N'Thiết bị lưu trữ ngoài không hiển thị trên máy tính.', N'Trung bình', 2),
(N'Ứng dụng bị lỗi font chữ', N'Không hiển thị đúng font trong giao diện hoặc văn bản.', N'Thấp', 1),
(N'Laptop không sạc pin', N'Pin không nhận sạc hoặc không đầy dù đã cắm.', N'Trung bình', 2),
(N'Trình duyệt tự động mở tab lạ', N'Có thể bị nhiễm malware hoặc adware.', N'Cao', 2),
(N'Máy tính phát ra tiếng bíp khi khởi động', N'Thể hiện lỗi phần cứng nào đó.', N'Cao', 2),
(N'Tệp bị lỗi CRC khi giải nén', N'Tệp tải về bị hỏng hoặc không đầy đủ.', N'Thấp', 1),


(N'Ứng dụng không tương thích với hệ điều hành', N'Không thể cài hoặc chạy ứng dụng do khác phiên bản.', N'Trung bình', 1),
(N'Màn hình không hiển thị hình ảnh', N'Màn hình tối đen dù máy tính vẫn hoạt động.', N'Cao', 2),
(N'Không thể kết nối máy chiếu', N'Máy tính không xuất hình ảnh ra máy chiếu.', N'Trung bình', 2),
(N'Máy tính không tắt được', N'Lệnh shutdown không có tác dụng.', N'Trung bình', 1),
(N'Không thể kết nối Wi-Fi', N'Lỗi xảy ra khi máy tính không thể bắt được tín hiệu Wi-Fi.', N'Thấp', 3),
(N'Bàn phím không phản hồi', N'Người dùng nhấn phím nhưng không có phản hồi.', N'Thấp', 2),
(N'Máy tính không nhận USB', N'Thiết bị USB không được nhận diện.', N'Thấp', 2),
(N'Màn hình nhấp nháy', N'Hình ảnh trên màn hình liên tục nhấp nháy hoặc chập chờn.', N'Thấp', 2),
(N'Loa không phát âm thanh', N'Không có âm thanh phát ra từ hệ thống dù đã bật loa.', N'Thấp', 2),
(N'Không thể in tài liệu', N'Không gửi được lệnh in hoặc máy in không phản hồi.', N'Thấp', 2),
(N'Chuột di chuyển chậm', N'Tốc độ con trỏ không phản ánh đúng thao tác người dùng.', N'Thấp', 2),
(N'Không thể mở tệp đính kèm email', N'Lỗi khi cố gắng mở tệp gửi kèm trong email.', N'Thấp', 1),
(N'Trình duyệt bị treo', N'Trình duyệt ngừng hoạt động và không phản hồi.', N'Thấp', 1),
(N'Không thể cập nhật phần mềm', N'Hệ thống không thể tải về và cài đặt bản cập nhật.', N'Thấp', 1),
(N'Thông báo lỗi "File Not Found"', N'Hệ thống không tìm thấy tệp cần thiết để chạy chương trình.', N'Thấp', 1),
(N'Không thể kết nối Bluetooth', N'Thiết bị Bluetooth không thể ghép nối hoặc nhận diện.', N'Thấp', 2),
(N'Màn hình đen sau khi khởi động', N'Máy tính hiển thị màn hình đen thay vì vào hệ điều hành.', N'Trung bình', 2),
(N'Không thể mở ứng dụng', N'Tệp thực thi ứng dụng bị lỗi hoặc thiếu.', N'Trung bình', 1),
(N'Lỗi đồng bộ hóa thời gian hệ thống', N'Thời gian hệ thống không đúng và không thể cập nhật.', N'Trung bình', 1),
(N'Không thể kết nối máy in', N'Máy in không được phát hiện hoặc kết nối thất bại.', N'Trung bình', 2),
(N'Lỗi khi cài đặt phần mềm', N'Quá trình cài đặt bị gián đoạn hoặc báo lỗi.', N'Trung bình', 1),
(N'Không thể phát video trực tuyến', N'Video không chạy hoặc bị gián đoạn khi phát trên trình duyệt.', N'Trung bình', 1),
(N'Lỗi khi mở tệp PDF', N'Tệp PDF không thể mở do lỗi phần mềm hoặc thiếu plugin.', N'Trung bình', 1),
(N'Không thể kết nối mạng LAN', N'Máy tính không nhận mạng nội bộ thông qua cáp.', N'Trung bình', 3);


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







