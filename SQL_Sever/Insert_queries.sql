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


INSERT INTO Software (Name_Software, Type_Software, Funtion, Version_) VALUES
('Antivirus Pro', N'Bảo Mật', N'Quét Virush', 'v3.0'),
('Code Editor', N'Lập trình', N'Chỉnh sửa code', 'v2.1'),
('Photo Editor Pro', N'Ứng dụng', N'Chỉnh sửa ảnh chuyên nghiệp', 'v1.2.5'),
('Music Player X', N'Ứng dụng', N'Phát nhạc nhiều định dạng', 'v3.0'),
('PDF Reader', N'Ứng dụng', N'Đọc file PDF', 'v2.4'),
('Firewall Defender', N'Hệ Thống', N'Chống xâm nhập trái phép', 'v5.0'),
('Game Booster', N'Tiện ích', N'Tăng hiệu suất chơi game', 'v1.1'),
('Video Editor Lite', N'Ứng dụng', N'Chỉnh sửa video cơ bản', 'v2.0'),
('Zip Extractor', N'Tiện ích', N'Nén và giải nén file', 'v3.2'),
('Browser Ultra', N'Ứng dụng', N'Duyệt web nhanh và an toàn', 'v1.0'),
('System Monitor', N'Hệ Thống', N'Giám sát hiệu năng hệ thống', 'v2.2'),
('Screen Recorder', N'Ứng dụng', N'Ghi lại màn hình', 'v4.5'),
('Text Editor X', N'Lập trình', N'Soạn thảo văn bản mã nguồn', 'v1.6'),
('Database Manager', N'Lập trình', N'Quản lý cơ sở dữ liệu', 'v3.1'),
('Network Analyzer', 'Networking', N'Phân tích kết nối mạng', 'v2.3'),
('Antivirus Basic', N'Bảo Mật', N'Quét và diệt virus cơ bản', 'v1.0'),
('Backup Utility', N'Hệ Thống', N'Sao lưu hệ thống và dữ liệu', 'v2.1'),
('Note Taking App', N'Ứng dụng', N'Ghi chú nhanh và đồng bộ', 'v3.3'),
('Cloud Sync Tool', N'Tiện ích', N'Đồng bộ dữ liệu đám mây', 'v2.0'),
('Virtual Machine Pro', N'Hệ Thống', N'Giả lập hệ điều hành', 'v6.1'),
('Password Manager', N'Bảo Mật', N'Quản lý mật khẩu bảo mật', 'v4.0'),
('Voice Assistant', 'AI', N'Trợ lý ảo điều khiển bằng giọng nói', 'v2.5'),
(N'Cốc Cốc', N'Ứng dụng', N'Duyệt web, hỗ trợ tải video, vào Facebook', 'v118.0.6092.199');

-- ============ ---
-- BẢNG HARDWARE
-- ============ ---

INSERT INTO Hardware (Name_Hardware, Type_Hardware, Funtion_Hardware)
VALUES 
    (N'Bàn phím', N'Ngoại vi', N'Dùng để nhập dữ liệu'),
    (N'CPU', N'Nội Vi', N'Bộ xử lý trung tâm'),
    (N'Màn hình', N'Ngoại vi', N'Hiển thị hình ảnh'),
    (N'RAM', N'Nội Vi', N'Bộ nhớ truy cập ngẫu nhiên'),
    (N'Chuột', N'Ngoại vi', N'Dùng để điều khiển con trỏ'),
    (N'Nguồn máy tính', N'Nội Vi', N'Cung cấp điện cho hệ thống'),
    (N'Ổ cứng SSD', N'Nội Vi', N'Lưu trữ dữ liệu nhanh chóng'),
    (N'Loa', N'Ngoại vi', N'Phát âm thanh'),
    (N'Card đồ họa', N'Nội Vi', N'Xử lý hình ảnh và đồ họa'),
    (N'Máy in', N'Ngoại vi', N'In tài liệu'),
    (N'Bo mạch chủ', N'Nội Vi', N'Kết nối và điều phối hoạt động giữa các linh kiện'),
    (N'Tai nghe', N'Ngoại vi', N'Nghe âm thanh cá nhân'),
    (N'Ổ cứng HDD', N'Nội Vi', N'Lưu trữ dữ liệu'),
    (N'Bộ tản nhiệt', N'Nội Vi', N'Giúp làm mát CPU'),
    (N'Micro', N'Ngoại vi', N'Thu âm thanh'),
    (N'Camera', N'Ngoại vi', N'Ghi hình và chụp ảnh'),
    (N'Máy quét', N'Ngoại vi', N'Quét tài liệu thành bản mềm'),
    (N'Bộ chia USB', N'Ngoại vi', N'Kết nối nhiều thiết bị USB cùng lúc'),
    (N'Bàn di chuột', N'Ngoại vi', N'Hỗ trợ sử dụng chuột'),
    (N'Bộ phát Wi-Fi', N'Ngoại vi', N'Cung cấp kết nối Internet không dây'),
    (N'Bộ nhớ flash USB', N'Ngoại vi', N'Lưu trữ dữ liệu di động'),
    (N'Đầu đọc thẻ nhớ', N'Ngoại vi', N'Đọc và ghi dữ liệu trên thẻ nhớ'),
    (N'Bộ điều khiển chơi game', N'Ngoại vi', N'Dùng để chơi game'),
    (N'Bộ chỉnh âm thanh', N'Ngoại vi', N'Điều chỉnh chất lượng âm thanh'),
    (N'Máy chiếu', N'Ngoại vi', N'Hiển thị hình ảnh lớn'),
    (N'Bộ chuyển đổi HDMI sang VGA', N'Ngoại vi', N'Kết nối màn hình VGA với thiết bị HDMI'),
    (N'Bộ mở rộng sóng Wi-Fi', N'Ngoại vi', N'Tăng phạm vi phủ sóng Wi-Fi'),
    (N'Bộ quạt làm mát', N'Nội Vi', N'Giúp làm mát máy tính'),
    (N'Bộ nguồn dự phòng', N'Ngoại vi', N'Cung cấp năng lượng khi mất điện'),
    (N'Bộ cảm biến vân tay', N'Ngoại vi', N'Hỗ trợ đăng nhập bằng vân tay'),
    (N'Đế tản nhiệt laptop', N'Ngoại vi', N'Hỗ trợ làm mát laptop'),
    (N'Bộ chuyển đổi USB-C sang HDMI', N'Ngoại vi', N'Kết nối thiết bị USB-C với màn hình HDMI'),
    (N'Bộ phát Bluetooth', N'Ngoại vi', N'Transmit âm thanh hoặc dữ liệu qua Bluetooth');


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
-- 
-- ============ ---

-- ============ ---
-- 
-- ============ ---

-- ============ ---
-- 
-- ============ ---

-- ============ ---
-- 
-- ============ ---


-- ============ ---
-- 
-- ============ ---


-- ============ ---
-- 
-- ============ ---

-- ============ ---
-- 
-- ============ ---







