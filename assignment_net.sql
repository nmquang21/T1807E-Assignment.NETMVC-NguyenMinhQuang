-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 21, 2019 at 06:09 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `assignment_net`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `Id` int(11) NOT NULL,
  `Name` longtext DEFAULT NULL,
  `Icon` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`Id`, `Name`, `Icon`) VALUES
(1, 'Quần áo thời trang Nam', 'basketball-jersey.png'),
(2, 'Quần áo thời trang Nữ', 'dress.png'),
(3, 'Áo khoác, áo lạnh', 'raincoat.png'),
(4, 'Giày dép Nam', 'shoe.png'),
(5, 'Giày dép Nữ\r\n', 'trainers.png'),
(6, 'Kính thời trang', 'binoculars.png'),
(7, 'Nón thời trang', 'witch-hat.png'),
(8, 'Đồ thời trang khác', 'more.png');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `Id` int(11) NOT NULL,
  `Name` longtext DEFAULT NULL,
  `Price` double NOT NULL,
  `Image` longtext DEFAULT NULL,
  `Description` longtext DEFAULT NULL,
  `Categoty_Id` int(11) DEFAULT NULL,
  `Gender` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`Id`, `Name`, `Price`, `Image`, `Description`, `Categoty_Id`, `Gender`) VALUES
(2, 'Bộ Pyjamas bé trai BA0188', 201000, 'ta_1459483307_8tc8f48402-268x268.jpg', 'Đặc điểm nổi bật:\r\n\r\n- Thiết kế tay dài, quần dài thích hợp sử dụng cho bé vào mùa lạnh hoặc khi thời tiết trở lạnh.\r\n\r\n- Chất liệu thun 100% cotton thấm hút mồ hôi thông thoáng, phù hợp với làn da nhạy cảm của trẻ nhỏ, ngoài ra chất vải không bị xù lông, an toàn và không gây ngứa cho trẻ.\r\n\r\n- Màu sắc nhẹ nhàng, họa tiết xinh xắn. Bé sẽ mặc lên mình chiếc áo xinh xắn, mềm mại, không hề gây mẫn cảm cho da.\r\n\r\n- Đường may tỉ mỉ, chắc chắn.\r\n\r\n- Nhiều size cho bé từ 6 tháng - 8 tuổi.', 1, 1),
(3, 'Quần ngắn Carter 1 cái', 47000, 'quan-ngan-carter-1-cai-1-1-268x268.jpg', 'Chất liệu mềm mại\r\n- Quần Carter ngắn được làm bằng chất liệu cotton cao cấp mềm mịn và với độ co giãn tốt sẽ tạo cho bé sự thoải mái.\r\n- Chất liệu cotton giúp thấm mồ hôi tốt, không gây kích ứng.\r\nThiết kế tiện lợi\r\n- Lưng thun co giãn giúp bé thoải mái khi mặc.\r\n- Quần Carter có nhiều màu sắc, họa tiết dễ thương và thoáng mát cho bé.\r\nNhiều màu sắc\r\n- Quần Carter  ngắn có nhiều màu sắc giúp mẹ dễ dàng lựa chọn và giúp bé có nhiều thay đổi mỗi ngày.', 1, 1),
(4, 'Áo sát nách Carter 1 cái', 45000, 'ao-sat-nach-carter-1-cai-1-1-268x268.jpg', 'Thông tin sản phẩm:\r\n\r\n- Áo sát nách cho bé Carter\'s được làm từ chất liệu 100% cotton cao cấp, thoáng mát, dễ thấm hút mồ hôi. Đường may chắc chắn, tinh tế, mềm mại, loại quần này thoải mái nên sẽ hạn chế được việc gây ra những viết hằn trên da bé, làm tổn thương làn da vốn mỏng manh.\r\n\r\nHướng dẫn sử dụng\r\n\r\n- Không giặt trong nước nóng quá 30oC.\r\n\r\n- Không sử dụng bột giặt có chất tẩy mạnh.\r\n\r\n- Không phơi trực tiếp ngoài trời nắng gắt\r\n\r\n', 1, 1),
(5, 'Bộ bé trai Adidas từ số 1 - 5', 107000, 'bo-be-trai-adidas-tu-so-1-5-1-1-268x268.jpg', 'Thông tin sản phẩm:\r\n\r\n+ Chất liệu mềm mại\r\n+ Bộ quần áo nam cộc tay cho bé được làm từ 100% chất liệu cotton mềm mịn, thoáng mát mang lại cảm giác thoải mái, dễ chịu nhất cho bé yêu, giúp bé thoải mái vận động.\r\n+ Mang đến phong cách thời trang cho bé đầy ngộ nghĩnh, đáng yêu.\r\n+ Đường may chắc chắn, kỹ lưỡng giúp bé thoải mái vui chơi.\r\n+ Xuất xứ: Thái Lan.\r\nHướng dẫn sử dụng:\r\n- Không giặt trong nước nóng quá 400­C.\r\n- Không sử dụng bột giặt có chất tẩy mạnh.', 1, 1),
(6, 'Bộ Pyjama bé gái BA0263 ', 179000, 'ta_1448939260_ehftd3f697-268x268.jpg', 'Thông tin sản phẩm:\r\n\r\nĐầm sát nách GirlyOne DA0719 được may bằng chất vải thun 100% cotton mềm mịn, thoáng mát thấm hút mồ hôi, tạo cho bé sự thoải mái khi vận động.\r\nKiểu dáng xinh xắn, dễ thương, gam màu cùng họa tiết đáng yêu sẽ mang đến phong cách khỏe khoắn, đáng yêu và không kém phần thời trang cho bé của bạn.', 2, 0),
(7, 'Đầm sát nách DA0719 ', 179000, 'dam-sat-nach-da0719-so-4-2-1-268x268.jpg', 'Thông tin sản phẩm:\r\n\r\nĐầm sát nách GirlyOne DA0719 được may bằng chất vải thun 100% cotton mềm mịn, thoáng mát thấm hút mồ hôi, tạo cho bé sự thoải mái khi vận động.\r\nKiểu dáng xinh xắn, dễ thương, gam màu cùng họa tiết đáng yêu sẽ mang đến phong cách khỏe khoắn, đáng yêu và không kém phần thời trang cho bé của bạn.', 2, 0),
(8, 'Đầm Sweety Thái Sk043', 230000, 'dam-sweety-thai-sk043-1-1-268x268.jpg', 'Thông tin sản phẩm:\r\n\r\n- Chất liệu cotton 100%, mềm mại.\r\n- Hạn chế dùng bột giặt có chất tẩy.\r\n- Hạn chế ngâm lâu trong nước.\r\n- Hạn chế giặt bằng nước nóng. Nên ủi/ là mặt trái của sản phẩm.\r\n- Hạn chế phơi trực tiếp dưới ánh nắng đối với sản phẩm đậm màu.\r\n\r\n', 2, 0),
(9, 'Áo khoát Fany kéo 18M', 120000, 'ao-khoat-fany-keo-18m-1-1-268x268.jpg', '+ Chất liệu 100% cotton\r\n\r\n+ Size 18m\r\n\r\n+ Sản xuất tại Fany made in VIET NAM', 2, 0),
(10, 'Đầm tay phồng', 159000, 'dam-tay-phong-da0716-so-1-2-1-268x268.jpg', 'Thông tin sản phẩm:\r\n\r\nĐầm tay phồng GirlyOne DA0716 được may bằng chất vải thun 100% cotton mềm mịn, thoáng mát thấm hút mồ hôi, tạo cho bé sự thoải mái khi vận động.\r\nKiểu dáng xinh xắn, dễ thương, gam màu cùng họa tiết đáng yêu sẽ mang đến phong cách khỏe khoắn, đáng yêu và không kém phần thời trang cho bé của bạn.', 2, 0),
(11, 'Nón bảo hiểm Thudguard', 145000, 'non-bao-hiem-tre-em-thudguard-7-1-268x268.jpg', 'Thông tin sản phẩm:\r\n\r\nNón bảo hiểm Thudguard cho trẻ tập đi là sản phẩm duy nhất trên thế giới bảo vệ đầu cho trẻ sơ sinh phù hợp với tiêu chuẩn an toàn và sản phẩm duy nhất được xác nhận bởi các chuyên gia xử lý tai nạn và tình huống khẩn cấp trẻ em.', 7, 0),
(12, 'Nón bảo hiểm Green ToTo', 299000, 'non-bao-hiem-green-toto-1-1-268x268.jpg', 'Thông tin sản phẩm:\r\n\r\n- Thích hợp cho trẻ từ 5 đến 30 tháng tuổi\r\n\r\n- Kích thước vòng đầu : 46-56cm\r\n\r\n- Chất liệu: vải cotton 100%, hạt xốp PP 100%\r\n\r\n- Sản xuất tại Việt Nam\r\n\r\nHướng dẫn:\r\n\r\n- Không giặt bằng máy\r\n\r\n- Không được ủi\r\n\r\n- Có thể vệ sinh bằng cách giặt tay trong nước sạch có pha bột giặt', 7, 0),
(13, 'Nón bo Mickey', 70000, 'non-bo-mickey-1-1-268x268.jpg', 'Điểm nổi bật\r\n\r\n- Bộ cài nón Mickey là món phụ kiện 2 trong 1 cực kỳ đáng yêu và ngộ nghĩnh dành cho các bé gái.\r\n\r\n- Sản phẩm vừa là chiếc băng đô cài tóc duyên dáng, vừa có vành mũ che nắng cực mát mẻ.\r\n\r\n- Được làm bằng các chất liệu mềm và thông thoáng, không hằn siết da đầu hay tạo cảm giác khó chịu cho bé.\r\n\r\n- Kiểu dáng tai chuột Mickey cùng nhiều màu sắc bắt mắt, tạo điểm nhấn thu hút cho gương mặt bầu bĩnh của bé.', 7, 0),
(14, 'Nón sơ sinh cho bé', 103000, 'non-so-sinh-cho-be-ku2155-1-1-268x268.jpg', '\r\nNón bảo vệ đầu cho bé Mumguard\r\nPhù hợp với trẻ em: từ 7 - 60 tháng tuổi (vòng đầu từ 40-52 cm)\r\nTrọng lượng: nhỏ hơn 100 gram\r\nChất liệu: Cao su thiên nhiên EVA, vải thun lạnh 4 chiều Italy', 7, 1),
(15, 'Nón bảo hiểm cho bé', 200000, 'non-bao-hiem-cho-be-1-1-268x268.jpg', 'Thông tin chi tiết sản phẩm\r\n\r\nMũ bảo hiểm cho bé dáng thể thao Disney mã DCE11127-S\r\n\r\n- Sản phẩm dành cho bé từ 3 tuổi trở lên\r\n\r\n- Chất nhựa chống va đập, tuyệt đối an toàn cho bé\r\n\r\n- Sản phẩm dùng để đi xe đạp, xe máy và chơi thể thao\r\n\r\n- Sản phẩm của hãng Disney, Mỹ', 7, 1),
(16, 'Bít nữ Total', 175000, 'bit-nu-total-6-1-268x268.jpg', 'Chất liệu giày: cotton\r\nMàu sắc: nhiều màu và kiểu dáng đẹp\r\nChất liệu giày: cotton\r\nMàu sắc: nhiều màu và kiểu dáng đẹp\r\nChất liệu giày: cotton\r\nMàu sắc: nhiều màu và kiểu dáng đẹp\r\nChất liệu giày: cotton\r\nMàu sắc: nhiều màu và kiểu dáng đẹp', 5, 0),
(17, 'Sandal nữ baby', 190000, 'sandal-nu-baby-sd901-1-1-268x268.jpg', 'Được thiết kế đặc biệt dành riêng cho trẻ em.\r\n\r\nChế tạo từ chất liệu mềm mại, nhẹ nhàng và chắc chắn, bảo vệ bàn chân cho bé.\r\n\r\nĐế giày có ma sát tốt, giúp bé bước đi tránh trơn trượt.\r\nThấm mồ hôi tốt, cùng thiết kế thông thoáng, rất phù hợp cho bé đi vào mùa hè, và thậm chí cả mùa đông nếu có tất\r\n\r\nCó quai dán tiện dụng, giúp dễ dàng mang vào và cởi ra, mẹ có thể tập cho bé tính tự giác bằng cách dạy bé tập tự đi dép.', 5, 0),
(18, 'Sandal nữ SD201 hồng', 201000, 'sandal-nu-sd201-hong-1-1-268x268.jpg', '+ Được thiết kế đặc biệt dành riêng cho trẻ em.\r\n\r\n+ Chế tạo từ chất liệu mềm mại, nhẹ nhàng và chắc chắn, bảo vệ bàn chân cho bé.\r\n\r\n+ Đế giày có ma sát tốt, giúp bé bước đi tránh trơn trượt.', 5, 0),
(19, 'Giày nữ baby sn51', 90000, 'giay-nu-baby-sn51-1-1-268x268.jpg', 'Chất liệu vải mềm\r\n\r\nChất liệu vải bền chắc nhưng vẫn mềm mại, không làm đau chân ngay cả khi bé mang lâu hay di chuyển nhiều.\r\n\r\nĐế chống trượt, an toàn cho bé\r\n\r\nKiểu dáng thời trang\r\nẤn tượng từ gam màu nổi bật cùng thiết kế kiểu giầy thể thao vừa rất thời trang vừa tạo sự thoải mái, dễ chịu, không gây cảm giác gò bó khi bé mang lâu.\r\n\r\nThiết kế quai dán dính giúp bé dễ dàng tự mang giày vào hoặc cởi ra.\r\n\r\nNhiều màu sắc để chọn lựa', 5, 0),
(20, 'Dép nữ baby sn31', 35000, 'dep-nu-baby-sn31-1-1-268x268.jpg', '+ Được thiết kế đặc biệt dành riêng cho trẻ em.\r\n\r\n+ Chế tạo từ chất liệu mềm mại, nhẹ nhàng và chắc chắn, bảo vệ bàn chân cho bé.\r\n\r\n+ Đế giày có ma sát tốt, giúp bé bước đi tránh trơn trượt.\r\n+ Thấm mồ hôi tốt, cùng thiết kế thông thoáng, rất phù hợp cho bé đi vào mùa hè, và thậm chí cả mùa đông nếu có tất\r\n\r\n+ Có quai dán tiện dụng, giúp dễ dàng mang vào và cởi ra, mẹ có thể tập cho bé tính tự giác bằng cách dạy bé tập tự đi dép.', 5, 0),
(21, 'Sandal nam baby sn17', 299000, 'sandal-nam-baby-sn17-1-1-268x268.jpg', '\r\nĐặc điểm nổi bật :\r\n+ Giày được làm từ vải mềm và đặc biệt an toàn dành cho trẻ sơ sinh.\r\n+ Có lớp đế được thiết kế đặc biệt thông minh với lớp đệm không khí giúp thoáng chân, chống tích\r\n+ Được thiết kế tinh tế, hướng tới sự thuận tiện và vững chắc cho bé với chiếc quai dính rất linh hoạt, mang lại cảm giác chắc chân khi bé mang dép. tụ mồ hôi đảm bảo sự thoải mái đối với bàn chân bé.\r\n+ Giày có màu sắc tươi tắn và họa tiết đáng yêu.', 4, 1),
(22, 'Sandal nam SD908', 250000, 'sandal-nam-sd908-1-1-268x268.jpg', '+ Được thiết kế đặc biệt dành riêng cho trẻ em.\r\n\r\n+ Chế tạo từ chất liệu mềm mại, nhẹ nhàng và chắc chắn, bảo vệ bàn chân cho bé.\r\n\r\n+ Đế giày có ma sát tốt, giúp bé bước đi tránh trơn trượt.', 4, 1),
(23, 'Giay nam baby sn21', 170000, 'giay-nam-baby-sn21-1-1-268x268.jpg', '+ Thấm mồ hôi tốt, cùng thiết kế thông thoáng, rất phù hợp cho bé đi vào mùa hè, và thậm chí cả mùa đông nếu có tất\r\n\r\n+ Có quai dán tiện dụng, giúp dễ dàng mang vào và cởi ra, mẹ có thể tập cho bé tính tự giác bằng cách dạy bé tập tự đi dép.\r\n\r\n+ Màu sắc tươi sáng, cùng thiết kế dễ thương càng tôn thêm vẻ đáng yêu của bé.', 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `__migrationhistory`
--

CREATE TABLE `__migrationhistory` (
  `MigrationId` varchar(150) NOT NULL,
  `ContextKey` varchar(300) NOT NULL,
  `Model` longblob NOT NULL,
  `ProductVersion` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `__migrationhistory`
--

INSERT INTO `__migrationhistory` (`MigrationId`, `ContextKey`, `Model`, `ProductVersion`) VALUES
('201911171506195_CreateCategory-Product', 'Assignment_NET.Migrations.Configuration', 0x1f8b0800000000000400ed59db6ee336107d2fd07f10f45864ad5cb0401bd8bb489da430bab9204eb67d0b6869ec10a54895a4021b8b7e591ffa49fd850e75a1244ab6656f36dd87c5020b8be40c678667aef9f7ef7f86ef9731f39e412a2af8c83f1a1cfa1ef05044942f467eaae76f7ef4dfbffbfebbe145142fbd8fe5b913730e29b91af94f5a27a741a0c22788891ac434944289b91e84220e482482e3c3c39f82a3a30090858fbc3c6f7897724d63c83ef0732c7808894e09bb12113055ace3ce34e3ea5d931854424218f9bfc1ec2c49180d8946518e073985ef9d314a509a29b0b9ef11ce85ce0e9c3e28986a29f8629ae00261f7ab04f0dc9c3005850ea7d5f1beea1c1e1b75828ab06415a64a8b7847864727857d02977c2f2bfbd67e68c10bb4b45e19ad332b8efc31d1b01072e57bee65a76326cdc1917fa6145df018b87ebcbeb82f6c3c28290fbce6fe810506e2c7fc3bf0c629d3a9841187544bc20ebcdb74866ff62baceec51fc0473c65ac2e260a8a7b8d055cba952201a95777302f849f44be1734e90297d092d56872b5265c9f1cfbde355e4e660c2c0a6a26986a21e117e02051d9e896680d921b1e90d9b175bb7397f9bfbc0d61875ee47b5764f901f8423f8d7cfce97b97740951b95248f0c0293a1d126999c2b64b26a101c64b5f724d9ee9223382731d7e4669a8d1c7ee806507d4134d72571b149b8f39368c812ea588ef04ab08eddee33d910bd028ba5873602a52193aa20d830ac21b815d70db1dd705e13758ffbfb0be9534b4b79c0bb42c7428b5c53562b2f8f2929e830a254df200fd6a7e58b9d8e7fa61e9666bfdb074d43e7e884e23429ac9d374c44a96a682173cf2b60996dbb4a6185a167d8f9ac48f328cfc1f5a76dbc0d6c69d8a6d95059b7c0f07832357ef9a86ed0084b58b26141dab50fe6a753e336bb0ec8a44588d14c14815cfef2a61784e41379335058cbe95f95b3ab44cd1e45245f0160f6b5e87454de7169f1ac86ac7d601d18d7e3d9edfca5f173dd88151f9e03546754bbaa1b6a96c07e6ed235795699097a665091baca961875724493032d46ada62c59be605edf8cd74f72a2fce7904a1ea28f6acb4f6268cfe18179d5dbc1a25bda452e973a2c98c98d8348ee2d6b13aa4d700adbca985daf6a395002c49ccef9cacbbb4af60eef0aa4c7989da99ac9d290aed47ef20cd7a0bc288ecc8aa63c1d298afcbcc9ba8f33c59a7cf57fa73c86bbb8604d94a9bc33070b4774d1db46cedc0de7dbd5e6f6b1df2055eb60c3ebb3fec5acaaff55d8be2a6cea258da011b7971d350235feacfa351bad43935365e1f6dcd10dc09b95adae98bac1a494f0499acd2ddffb4b24bdb46bd9067d97441d098c9debf87684506dd53b49d25c2ac10d1acf29b2853a9db12b7a7c26eea6d43a39581dd23169836133b19775864bfeda3a5563acc8ff81eaaff4ca33c154eff6403b33fc87e8e19455fa84e5c114ee7a074de0efa6f076f9dc9d4d733250a948a58cf51d1abb7b4d418756bd3ba637358ef6299c0962cabd12b26bbce5efaf1d8797ef1cdd89d1381e8052602fb0ad2d1f0efcbaa110d6bf66fb58a131ec172e47fcae84ebdc9ef8f35d203ef4662b839f50ebdbff683df67b4ed55dfb95743ddd5baedd7f2a3038034f8240cf383d2123344ab304110f1902684b9d2b793641fc73216b52cdd9d7348801b8f71b4eb73d596bac0b276dc7c9b0d761c5fb45bc25e038ad5c6f1449e47d18567021f3a47ea867e7ccdf862d3f4a2eb8675a38357996db87669b6a33d86195d53902f33b968d74788aada1fe810d5662c6e5998aa8f43d8c0933d33e1735162db91a83ce204c42bd02442b09d494de724d4b81d8252d934f52361291eb98867104df84daa9354a3ca10cf58c388c63d36dd9f8d679a320f6fb270ae5e42051493a20a70c37f4e298bacdc97ed04b58e85f1bb22fb9ab7d4260b2f5696d3b5e03d1915e6b3e1e21ee284213375c3a7e419f691ed41c1075890705556b9eb996c7f88a6d987e7942c248955c1a3a2c74fc470142fdffd0757a9efffa71e0000, '6.2.0-61023'),
('201911181505467_addGender', 'Assignment_NET.Migrations.Configuration', 0x1f8b0800000000000400ed59cd6ee33610be17e83b083a16592bc9628136b077913a496174f38338d9f616d0d2d8214a912a490536167db21efa487d850ef54349946ccbde24ddc362818545723ece0cbfe10c27fffefdcff0c33266de134845051ff9478343df031e8a88f2c5c84ff5fccd8ffe87f7df7f373c8fe2a5f7a95cf7d6ac4349ae46fea3d6c94910a8f01162a206310da55062ae07a188031289e0f8f0f0a7e0e8280084f011cbf386b729d73486ec033fc7828790e894b04b110153c538ce4c3354ef8ac4a01212c2c8ff0d66a749c2684834aa723cc8257cef945182da4c81cd7d8f702e74b6e0e45ec1544bc117d3040708bb5b2580ebe68429286c38a996f735e7f0d8981354822554982a2de21d018fde16fe095cf1bdbcec5bffa107cfd1d37a65accebc38f2c744c342c895efb99b9d8c99340b47fea95274c163e0fae1eafcaef0f1a0943cf09af3079618c81ff3efc01ba74ca712461c522d093bf06ed2199ed9afb0ba137f001ff194b1ba9aa828ce350670e8468a04a45eddc2bc507e12f95ed0940b5c412b5693c9cd9a70fdf6d8f7ae7073326360595073c1540b09bf000789c64637446b90dc6040e6c7d6eece5ee6ff7237a41d4691ef5d92e547e00bfd38f2f1a7ef5dd02544e548a1c13da7187428a4650adb3699848618cfbdc91579a28bcc09ce76f819a5a1c618bb05962d508f34c9436d504c3ee4dc300eba9022be15ac12b4730f77442e40a3ea62cd82a94865e8a8360c2a0a6f247681b63baf0bc16fb4fe7f697d236968773913e859e8306a4b68c464f1f29a9e810a254df20bfa85f7c2438b406e3beabeb15c85e997c67219aa6b63b90cf63eb18c8127429ae9d30ce64a97a681e73cf2b629969f4bcd303c1d8c5f6a8a07d461e4ffd0f2db06587b7755b055266de21e0e0647aedd350bdb9718d63f9a500ccec2f8cbd5d9cc8cc1b2eb36c38aa6b8d0544121d708833905dd4cf814f006afdcdfb2a1e58a264a95055a18d6bd0e44cde6164e8d64b565eb88e8dea03d8edfea5f573dd801a83cf01a50dd93ee75dd34b683f3f690abea36c8cbdbb20c0ed6d4c1c34b922478bbd4eae262c49be645f1f8cd74f74a31ce31825075148c565bbb136610bc5b9d59dc1a35bda052e933a2c98c98cb681cc5ad65754aaf215ab9538bb5ed432b09588a98dfb958f7f3a0a2b98355b9f202ad33993f3314da87de219abd4f0823b223338f054b63be2ebb6f92ce736d5d3e1fe98f90d7870d0db29136c23070ac775d1db47cedd0de3dbd5e676b03f2194eb6bc7c763fd8b5925febb91605521da218da811b7981d430231fea8fd1287fea488d89fe78658953872ac75e9fb3cd8bbc93b8b5e4d5979f35919e3c34b9a9fb25d6ca516d1ff5e2af85e922b27193dd7f0fd58a3cbca76a3b6b84b925a259fd3851a63ab695714f83dd04dea6462b8fbb4b2c316d3e77f2f6b0c8a1db9b5cada49a2ff13d34ff894679429dfec906667e90fd1c338ab150adb8249cce41e9fc61eabf1bbc737a645f4fbf2a502a623d9b56affeb8a6c6a95b9fcf3b3e53ebef6926f0719855fa15c8ae5da07e183b7752be39bbb337113d436f625f453a5a0ffb42353b0b99eb77b4a8719fd6605a4fd609eeb41cf99f33b9136ff2fb434df4c0bb96a8c88977e8fdb51f81bfa07d50bd7ff77ad8773d21f76b3d600881340c270c338cd212734cabb4411af2902684b9dab7d36c9fd0341eb590eecc19248620583837adebb3d596cac2423b17c5361fecd846693f4d7b354a561bdb247926c64b6026f0a073a66ee80bac69a36ceaa274edb0ae85f12a3d16d72fcd67718fa64a5737e6653a28ed0a0b5955fb6323b2dab4f82d84a91b39840d3ed935133e1725b71d8dca25ce8578099a4448b653a9e99c841aa743502aeb0c7f222cc525e7f10ca209bf4e75926a3419e2196b38d184c7a6fdb3365153e7e1759610d47398806a523401aef9cf296591d5fba29d10d64198b82bf2b7394b6df2f8626591ae04ef0954b8cf5e177710270cc1d4359f9227d847b77b051f6141c2555927af07d97e104db70fcf28594812ab02a392c74fe470142fdfff07091a160f731f0000, '6.2.0-61023');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_Categoty_Id` (`Categoty_Id`) USING HASH;

--
-- Indexes for table `__migrationhistory`
--
ALTER TABLE `__migrationhistory`
  ADD PRIMARY KEY (`MigrationId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `FK_Products_Categories_Categoty_Id` FOREIGN KEY (`Categoty_Id`) REFERENCES `categories` (`Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
