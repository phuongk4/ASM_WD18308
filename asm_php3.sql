-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 20, 2024 at 03:12 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `asm_php3`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_07_20_133430_create_posts_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `tag` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `views` bigint UNSIGNED NOT NULL DEFAULT '0',
  `author` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `body`, `tag`, `image`, `views`, `author`, `created_at`, `updated_at`) VALUES
(1, 'U19 Thái Lan đá đèn sáng, vì sao U19 Việt Nam đá sân tối?', 'Tối 19-7, U19 Thái Lan ra quân ở bảng C giải U19 Đông Nam Á và thắng Singapore 2-1. Trận đấu này diễn ra trên sân Gelora 10 November ở tỉnh Surabaya, Indonesia.\r\n\r\nU19 Việt Nam phải thắng Úc để tự quyết suất bán kết\r\nHai đội thi đấu trong điều kiện bình thường, ánh sáng tốt, không bị hạn chế tầm nhìn. Sân Gelora 10 November cũng là sân U19 Việt Nam đã hòa 1-1 trước Myanmar hôm 18-7.\r\n\r\nKhi theo dõi trận đấu của U19 Việt Nam, người xem liên tục than phiền về điều kiện ánh sáng. Chỉ có bốn góc sân sáng rực, còn phần giữa sân có cảm giác thiếu sáng nghiêm trọng.\r\n\r\nĐiều đó khiến nhiều người thắc mắc: Vì sao trận đấu của U19 Việt Nam ánh sáng lại tối thui? Hay điều kiện tổ chức thi đấu cho các đội khách chỉ ở mức nghèo nàn như vậy?\r\n\r\nExpand article logo  Tiếp tục đọc\r\nThực tế, khi theo dõi trên sân thì không tối như khi xem qua truyền hình. Dù vậy, ánh sáng từ bốn giàn đèn dường như chưa được phân bố đều. Điều này khiến mặt sân khi lên hình rất tối.', 'Đời sống', 'https://img-s-msn-com.akamaized.net/tenant/amp/entityid/BB1qj7xw.img?w=730&h=483&m=6', 10, '', NULL, NULL),
(2, 'HLV Zambia bị cấm tiếp xúc riêng với học trò nữ tại Olympic 2024', 'Do đang bị điều tra lạm dụng tình dục, HLV Bruce Mwape không được tiếp xúc riêng với bất kỳ cầu thủ nào trong đội nữ Zambia khi dự Olympic Paris 2024.\r\n\r\nLĐBĐ thế giới (FIFA) vẫn đang điều tra cáo buộc Mwape xoa tay lên ngực một cầu thủ sau buổi tập tại World Cup nữ năm ngoái ở New Zealand. Hồi tháng 5, ông bị cáo buộc cố tình chạm vào ngực một nhân viên hợp đồng của FIFA cũng tại World Cup nữ ở New Zealand.\r\n\r\nCáo buộc HLV tuyển nữ Zambia có hành vi sai trái về tình dục xuất hiện từ năm 2022. Ông bị cáo buộc ép các cầu thủ quan hệ tình dục và đe dọa trừng phạt nếu dám nói bất kỳ điều gì đã xảy ra. LĐBĐ Zambia (FAZ) cho biết cuộc điều tra về cáo buộc lạm dụng tình dục trong đội nữ đã được chuyển tới FIFA.Do đang bị điều tra lạm dụng tình dục, HLV Bruce Mwape không được tiếp xúc riêng với bất kỳ cầu thủ nào trong đội nữ Zambia khi dự Olympic Paris 2024.\r\n\r\nLĐBĐ thế giới (FIFA) vẫn đang điều tra cáo buộc Mwape xoa tay lên ngực một cầu thủ sau buổi tập tại World Cup nữ năm ngoái ở New Zealand. Hồi tháng 5, ông bị cáo buộc cố tình chạm vào ngực một nhân viên hợp đồng của FIFA cũng tại World Cup nữ ở New Zealand.\r\n\r\nCáo buộc HLV tuyển nữ Zambia có hành vi sai trái về tình dục xuất hiện từ năm 2022. Ông bị cáo buộc ép các cầu thủ quan hệ tình dục và đe dọa trừng phạt nếu dám nói bất kỳ điều gì đã xảy ra. LĐBĐ Zambia (FAZ) cho biết cuộc điều tra về cáo buộc lạm dụng tình dục trong đội nữ đã được chuyển tới FIFA.', 'Đời sống', 'https://img-s-msn-com.akamaized.net/tenant/amp/entityid/BB1qjSxu.img?w=768&h=512&m=6&x=659&y=107&s=81&d=81', 20, 'TQP', NULL, NULL),
(3, 'Người dân nơi tận cùng Tổ quốc lập bàn thờ tưởng nhớ Tổng bí thư Nguyễn Phú Trọng', 'Nghe tin Tổng bí thư Nguyễn Phú Trọng từ trần, nhiều người dân ở tỉnh Cà Mau, nơi tận cùng Tổ quốc, bàng hoàng xúc động, tiếc thương.\r\n\r\nCộng đồng mạng trích dẫn những câu nói nổi tiếng của Tổng bí thư Nguyễn Phú Trọng\r\nLà người con xứ rừng U Minh Hạ, ông Nguyễn Văn Ánh (79 tuổi) cho biết ông xúc động và hụt hẫng, buồn không ngủ được suốt đêm qua khi nghe tin Tổng bí thư đã ra đi mãi mãi.\r\n\r\n\"Mới hôm kia tôi nghe thông tin bác bệnh, tôi buồn và lo cho sức khỏe của Tổng bí thư. Nay nghe thông tin bác ra đi mà lòng buồn khôn xiết. Là người con Cà Mau, chưa một lần gặp bác ngoài đời nhưng thông qua những hình ảnh trên báo đài, tôi biết đến bác là người quá phúc hậu.\r\nNhững việc làm của bác đối với dân, với nước quá sức lớn lao. Phải chi ở gần, tôi cũng đi ra đó một chuyến để có thể tiễn bác một đoạn. Ở xa quá, tôi sẽ thắp 3 nén hương lên bàn thờ Bác Hồ, Đại tướng Võ Nguyên Giáp và thêm một nén hương cho Tổng bí thư, hy vọng bác được an nghỉ\", ông Ánh nói trong xúc động.\r\n\r\n\"Tôi nhớ như in cách nay 15 năm, ngày 8-12-2009, trên cương vị Chủ tịch Quốc hội, trong chuyến về thăm và làm việc tại Cà Mau, dù đường sá xa xôi, đi lại còn nhiều vất vả nhưng bác Nguyễn Phú Trọng đã không quản ngại khó khăn, cách trở vùng sông nước để đặt chân đến mũi Cà Mau trồng cây lưu niệm.\r\n\r\nTám năm sau đó, trên cương vị Tổng bí thư, ngày 20-2-2017, bác Nguyễn Phú Trọng đã đi trên đường Hồ Chí Minh về tận mũi Cà Mau, ánh mắt rạng ngời ngắm nhìn dáng hình đất nước với những tán rừng mới trồng.\r\n\r\nGiờ đây Tổng bí thư đã ra đi, chúng tôi không có cơ hội ra miền Bắc tiễn nên lập bàn thờ để sớm hôm thờ cúng, nhang khói\", đại tá Võ Hà Đô - nguyên trưởng Ban Tuyên giáo, Hội Cựu chiến binh tỉnh Cà Mau - chia sẻ.', 'chính trị ', 'https://img-s-msn-com.akamaized.net/tenant/amp/entityid/BB1qj66b.img?w=730&h=413&m=6&x=258&y=78&s=77&d=77', 1100, 'TQP', NULL, NULL),
(4, 'Giá vàng nhẫn tròn trơn giảm mạnh', 'TPO - Kết thúc giao dịch ngày 20/7, giá vàng nhẫn tròn trơn liên tiếp giảm giá, về mức 75,8 - 77,2 triệu đồng/lượng mua vào - bán ra. Các doanh nghiệp vàng 2 lần giảm giá (đầu giờ sáng và cuối giờ chiều ngày 20/7), tổng mức giảm giá vàng lên tới 750.000 đồng/lượng.\r\n\r\nThời điểm 17h30 ngày 20/7, Công ty Vàng bạc đá quý Sài Gòn niêm yết giá vàng nhẫn tròn trơn 75,7 - 77,1 triệu đồng/lượng, giảm 200.000 đồng/lượng so với buổi sáng.\r\n\r\nTập đoàn Doji cũng hạ giá vàng nhẫn tròn trơn về mức 75,9 - 77,15 triệu đồng/lượng. Mức giá này giảm 250.000 đồng/lượng chiều mua vào và giảm 350.000 đồng/lượng chiều bán ra so với buổi sáng.\r\n\r\nChỉ trong phiên giao dịch ngày 20/7, giá vàng nhẫn tròn trơn giảm tới 750.000 đồng/lượng so với ngày 19/7. Đây cũng là mức giảm giá sâu nhất trong 1 tuần qua. Đà giảm của giá vàng nhẫn tròn trơn xuất phát từ việc giá vàng thế giới quay đầu giảm.\r\nVới vàng miếng SJC, 4 ngân hàng quốc doanh (Agribank, BIDV, Vietcombank, VietinBank) và doanh nghiệp đồng loạt niêm yết 78,5 - 80 triệu đồng/lượng mua vào - bán ra. Chênh lệch giá mua vào - bán ra vàng SJC ở mức 1,5 triệu đồng/lượng.\r\n\r\nGiá vàng nhẫn tròn trơn mức 75,8 - 77,2 triệu đồng/lượng mua vào - bán ra. (Ảnh: BTMC).\r\n\r\nSau 45 ngày đứng im, giá vàng SJC cũng tăng mạnh 3 triệu đồng/lượng, đạt mức 80 triệu đồng/lượng. Giá vàng SJC tăng mạnh nhưng thị trường dường như “đóng băng” bởi doanh nghiệp hết vàng miếng SJC bán ra. Người dân chờ đăng ký mua vàng trực tuyến tại các ngân hàng quốc doanh.\r\n\r\nCùng thời điểm, giá vàng thế giới niêm yết 2.400 USD/ounce, giảm 40 USD/ounce so với cuối phiên giao dịch trước đó. Quy đổi theo tỷ giá hiện hành, giá vàng thế giới khoảng 74,9 triệu đồng/lượng, chưa kể thuế phí.\r\n\r\nTrên thị trường tiền tệ, Ngân hàng Nhà nước niêm yết tỷ giá trung tâm 24.246 đồng/USD, giảm 5 đồng/USD so với hôm qua.\r\n\r\nTại ngân hàng thương mại, tỷ giá USD quanh mức 25.158 - 25.458 đồng/USD, tăng 11 đồng/USD cả 2 chiều mua vào - bán ra.', 'Kinh tế', 'https://th.bing.com/th?id=ORMS.92d3f1bd72aeefd1b4ebcc2bafb05f21&pid=Wdp&w=268&h=140&qlt=90&c=1&rs=1&dpr=1.25&p=0', 2, 'Tạ Quốc Phương', NULL, NULL),
(5, 'Việt Nam sáng tạo khi xây dựng PII', 'Chuyên gia của Tổ chức Sở hữu trí tuệ thế giới (WIPO) đánh giá \"có nhiều điều học hỏi được từ kinh nghiệm xây dựng chỉ số đổi mới sáng tạo cấp địa phương (PII) của Việt Nam\".\r\n\r\nThông tin được Trưởng ban nghiên cứu các chỉ số tổng hợp, Vụ Phân tích dữ liệu và kinh tế, WIPO, Sacha Wunsch-Vincent nói tại Hội thảo \"Đo lường và thúc đẩy kết quả đổi mới sáng tạo cấp địa phương: Vai trò của các chỉ số đổi mới sáng tạo tại khu vực\" hôm 12/7.\r\n\r\nSự kiện do Tổ chức Sở hữu trí tuệ thế giới (WIPO) tổ chức, nằm trong khuôn khổ kỳ họp lần thứ 65 của Đại hội đồng các quốc gia thành viên, với tham gia của các đại biểu từ các quốc gia thành viên WIPO, chuyên gia về xây dựng chỉ số đổi mới sáng tạo cấp địa phương.Theo ông Sacha Wunsch-Vincent đánh giá Việt Nam sáng tạo khi \"đưa vào một Trụ cột về Tác động trong đo lường về đổi mới sáng tạo\". Ông cho hay trước đây, Chỉ số đổi mới sáng tạo toàn cầu (GII) không có trụ cột về Tác động ở cấp quốc gia mà chỉ có công cụ để đo lường tác động của đổi mới sáng tạo cấp toàn cầu. Theo đó \"có nhiều điều học hỏi được từ kinh nghiệm xây dựng chỉ số PII của Việt Nam\". Trong báo cáo GII sẽ công bố vào tháng 9 tới sẽ có các chỉ số về tác động của đổi mới sáng tạo cấp độ quốc gia.\r\n\r\nTrong bài chia sẻ tại hội thảo, ông Nguyễn Võ Hưng, Viện Chiến lược và Chính sách Khoa học và Công nghệ, Học viện Khoa học công nghệ và Đổi mới sáng tạo, cho biết Chỉ số đổi mới sáng tạo cấp địa phương (PII) của Việt Nam được xây dựng dựa trên khung GII của WIPO với phương pháp xây dựng chỉ số tổng hợp theo chuẩn quốc tế, dưới sự hỗ trợ của các chuyên gia của WIPO về mặt chuyên môn, phương pháp luận.\r\n\r\nChỉ số PII của Việt Nam có điểm mới và sự sáng tạo so với GII khi đưa vào trong khung chỉ số một trụ cột Tác động, thể hiện tác động của khoa học, công nghệ và đổi mới sáng tạo đến hoạt động sản xuất-kinh doanh và đến phát triển kinh tế - xã hội của địa phương.\r\n\r\nÔng Hưng cho biết, kết quả PII năm 2023 đã được báo cáo Chính phủ và được các địa phương đón nhận. Nhiều địa phương đã tích cực tìm hiểu nội hàm, ý nghĩa của khung chỉ số và của từng chỉ số, các điểm mạnh, điểm yếu và thảo luận các giải pháp cải thiện phù hợp.', 'Khoa học ', 'https://i1-vnexpress.vnecdn.net/2024/07/15/anh4-1721018992-1714-1721019170.jpg?w=1020&h=0&q=100&dpr=1&fit=crop&s=Lrif42JVTYUeTzDIlncJWg', 10, 'Tạ Quốc Phương', NULL, NULL),
(6, 'Vụ tấn công nhà mạng chấn động nước Mỹ, Google sắp có thương vụ lớn nhất lịch sử', 'Vụ tấn công nhà mạng chấn động nước Mỹ\r\n\r\nAT&T – nhà mạng di động lớn thứ hai và nhà mạng cố định lớn nhất nước Mỹ - vừa tiết lộ sự cố tấn công mạng nghiêm trọng.\r\n\r\nAT&T cho biết, dữ liệu bị xâm phạm bao gồm số điện thoại của “gần như tất cả” khách hàng di động và khách hàng của các nhà cung cấp không dây sử dụng mạng của họ trong khoảng thời gian từ ngày 1/5/2022 đến ngày 31/10/2022.\r\n\r\nNhật ký bị đánh cắp cũng chứa hồ sơ về mọi số điện thoại mà khách hàng AT&T đã gọi điện hoặc nhắn tin – bất kể nội mạng hay ngoại mạng – số lần họ tương tác, độ dài cuộc gọi. Tuy nhiên, nhà mạng nhấn mạnh dữ liệu này không gồm nội dung cuộc gọi, tin nhắn hay thời điểm liên lạc. “Một số lượng rất nhỏ” khách hàng cũng bị ảnh hưởng vào ngày 2/1/2023.\r\n\r\nỦy ban Truyền thông liên bang Mỹ (FCC) cho biết, đang điều tra sự cố rò rỉ tại AT&T và đang phối hợp với các nhà hành pháp.\r\n\r\nTheo hồ sơ trình lên Ủy ban Chứng khoán và Giao dịch Mỹ (SEC), AT&T phát hiện vụ tấn công vào ngày 19/4 sau khi dữ liệu khách hàng bị tải xuống bất hợp pháp từ một workspace (không gian làm việc) trên nền tảng đám mây Snowflake. Hồi tháng 3, nhà mạng cũng chia sẻ là nạn nhân của một vụ tấn công, làm 73 triệu khách hàng bị lộ thông tin cá nhân như mã số an sinh xã hội. Người phát ngôn khẳng định sự cố tháng 4 không có liên quan gì đến sự cố tháng 3.\r\n\r\nTrên blog, nhà mạng Mỹ nói chưa có dấu hiệu kẻ tấn công phát tán dữ liệu lấy được và đang hợp tác với nhà chức trách để giải quyết vấn đề.\r\n\r\nMicrosoft gặp sự cố toàn cầu\r\n\r\nWSJ đưa tin, dịch vụ đám mây và Microsoft 365 đang gặp gián đoạn, ảnh hưởng tới hàng nghìn người dùng trên khắp thế giới.\r\n\r\nViệc không thể truy cập vào nền tảng điện toán đám mây do Microsoft cung cấp khiến các hãng hàng không phải huỷ nhiều chuyến bay.\r\n\r\nTheo trang theo dõi sự cố Downdetector.com, hàng nghìn người dùng đang báo cáo sự cố truy cập liên quan ứng dụng và dịch vụ Microsoft 365.\r\nTrên mạng xã hội X, tài khoản Microsoft 365 Status xác nhận “một sự cố đã ảnh hưởng đến truy cập ứng dụng và dịch vụ” của công ty.\r\n\r\nTrong khi đó, trên website trạng thái của Azure - nền tảng điện toán đám mây, Microsoft cho hay sự cố bắt đầu từ khoảng gần nửa đêm giờ miền tây ngày 18/7 (khoảng 10h sáng tại Việt Nam ngày 19/7), ảnh hưởng đến toàn bộ hệ thống trên khắp miền trung nước Mỹ.\r\n\r\nTrong thông báo cập nhật, \"gã khổng lồ\" công nghệ Mỹ nói đã xác định được nguyên nhân sự cố và đang nỗ lực khôi phục quyền truy cập cho người dùng.\r\n\r\nTrong 1 diễn biến khác cùng thời điểm, theo ABC.net.au, một sự cố kỹ thuật được cho là liên quan đến hãng bảo mật CrowdStrike khiến nhiều máy tính Microsoft tại Australia và toàn cầu gặp lỗi vào chiều ngày 19/7.\r\n\r\nSự cố ảnh hưởng đến hàng loạt tổ chức, doanh nghiệp và cơ quan chính phủ của Australia khi các laptop tự khởi động lại và hiển thị “màn hình xanh chết chóc”.\r\n\r\nSự cố gián đoạn dịch vụ cũng được ghi nhận tại Mỹ và New Zealand.\r\n\r\nGoogle sắp có thương vụ lớn nhất lịch sử\r\n\r\nTheo WSJ, Google đang tiến gần tới một thoả thuận mua lại công ty khởi nghiệp giải pháp an ninh mạng 4 năm tuổi - Wiz, có giá trị lên tới 23 tỷ USD.\r\n\r\nCác nguồn tin cho biết, gã khổng lồ tìm kiếm đã bước vào giai đoạn thảo luận sâu hơn và một thoả thuận có thể xảy ra nếu mọi chuyện tiến triển thuận lợi.\r\n\r\nThe New York Times cho biết, Wiz sẽ là thương vụ mua lại lớn nhất của Google, nếu thương vụ này thành công.\r\n\r\nĐược thành lập vào tháng 3/2020, Wiz là công ty khởi nghiệp chuyên cung cấp các giải pháp bảo mật cho doanh nghiệp sử dụng dịch vụ lưu trữ đám mây, chẳng hạn như từ Amazon Web Services.\r\n\r\nTrong vòng chưa đầy một năm, giá trị của startup này đã đạt mức 1,7 tỷ USD và nhanh chóng nhận được nhiều khoản đầu tư từ những công ty bao gồm Salesforce, Blackstone và Algae - đưa Wiz trở thành một trong những công ty khởi nghiệp phát triển nhanh nhất vào thời điểm đó.\r\n\r\nTrung Quốc đạt bước tiến quan trọng trong mạng 6G\r\n\r\nTheo Tân Hoa Xã, một nhóm kỹ sư viễn thông Trung Quốc đã thiết lập mạng thử nghiệm thực địa 6G đầu tiên trên thế giới.\r\n\r\nCác kỹ sư viễn thông đến từ Đại học Bưu chính Viễn thông Trung Quốc đã thiết lập mạng thử nghiệm thực địa, có thể đạt năng lực truyền dẫn 6G trên cơ sở hạ tầng 4G có sẵn.\r\n\r\nNhóm trình bày những phát hiện ban đầu về hoạt động của mạng thử nghiệm tại một hội nghị tổ chức ở Bắc Kinh ngày 10/7.\r\n\r\nMạng sử dụng kỹ thuật có tên “giao tiếp ngữ nghĩa” (semantic communication), cải thiện gấp 10 lần các thước đo truyền thông quan trọng, bao gồm dung lượng, phạm vi phủ sóng và tính hiệu quả.\r\n\r\nTheo Tân Hoa Xã, mạng phục vụ như nền tảng để các viện tiến hành nghiên cứu lý thuyết và xác minh ban đầu công nghệ quan trọng của 6G.\r\n\r\nTheo nhóm nghiên cứu, là mạng thử nghiệm thực địa 6G “đầu tiên trên thế giới”, nó hạ thấp rào cản đầu vào đối với nghiên cứu 6G, giúp dễ tiếp cận hơn và thúc đẩy đổi mới sáng tạo. Mạng tích hợp sâu giữa truyền thông và AI, là “hướng đi quan trọng” trong sự phát triển của công nghệ truyền thông.\r\n\r\nTrung Quốc đặt mục tiêu thương mại hóa 6G vào năm 2030 và dự kiến thiết lập tiêu chuẩn cho công nghệ này vào năm 2025, theo Wang Zhiqin, trưởng nhóm thúc đẩy 6G tại Trung Quốc.', 'Công nghệ', 'https://static-images.vnncdn.net/vps_images_publish/000001/000003/2024/7/20/loi-micrisoft-422.jpg?width=0&s=_u_YeQpK_ECFbYcvNbDpnA', 1230, '', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
