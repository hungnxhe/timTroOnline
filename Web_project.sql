Create database [WEB_Pro]
USE [WEB_Pro]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 11/17/2020 4:15:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Account](
	[AcountID] [varchar](6) NOT NULL,
	[mail] [nvarchar](30) NULL,
	[pass] [nvarchar](30) NULL,
	[diachi] [nvarchar](100) NULL,
	[sodt] [nvarchar](10) NULL,
	[mota] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[AcountID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[phongtro]    Script Date: 11/17/2020 4:15:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[phongtro](
	[phongID] [varchar](8) NOT NULL,
	[phong_ID] [varchar](6) NULL,
	[image] [nvarchar](4000) NULL,
	[image1] [varchar](100) NULL,
	[image2] [varchar](100) NULL,
	[price] [float] NULL,
	[mota] [nvarchar](1000) NULL,
	[status] [nvarchar](20) NULL,
	[adddate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[phongID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tintuc]    Script Date: 11/17/2020 4:15:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tintuc](
	[matin] [int] NOT NULL,
	[tieude] [nvarchar](400) NULL,
	[loidan] [nvarchar](400) NULL,
	[anh] [nvarchar](400) NULL,
	[noidung] [nvarchar](4000) NULL,
PRIMARY KEY CLUSTERED 
(
	[matin] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[Account] ([AcountID], [mail], [pass], [diachi], [sodt], [mota]) VALUES (N'A01', N'hung6nuh@gmail.com', N'1234', N'thôn 8 -thạch hòa-thach thất- hà nội ', N'0889686712', N'1')
INSERT [dbo].[Account] ([AcountID], [mail], [pass], [diachi], [sodt], [mota]) VALUES (N'B036', N'd@gmail.com', N'123', N'cách cây xăng 39 200m', N'0363266546', N'2')
INSERT [dbo].[Account] ([AcountID], [mail], [pass], [diachi], [sodt], [mota]) VALUES (N'B038', N'c@gmail.com', N'123', N'thôn 2. Hạ bằng. Thạch thất.hà nôi', N'0382645433', N'2')
INSERT [dbo].[Account] ([AcountID], [mail], [pass], [diachi], [sodt], [mota]) VALUES (N'B088', N'a@gmail.com', N'123', N'thon 7-thach hoa-thach that-ha noi', N'0947201266', N'2')
INSERT [dbo].[Account] ([AcountID], [mail], [pass], [diachi], [sodt], [mota]) VALUES (N'B091', N'h@gmail.com', N'123', N'Thôn 7 gần GÀ RI PHÚ BÌNH 2 ', N'0914203690', N'2')
INSERT [dbo].[Account] ([AcountID], [mail], [pass], [diachi], [sodt], [mota]) VALUES (N'B094', N'e@gmail.com', N'123', N'Gần bể bơi trường ĐH Quốc Gia (cách 500m)', N'0947201266', N'2')
INSERT [dbo].[Account] ([AcountID], [mail], [pass], [diachi], [sodt], [mota]) VALUES (N'B097', N'b@gmail.com', N'123', N'Thôn 6 và Thôn 7 Thạch Hòa, Thạch Thất', N'0975399259', N'2')
INSERT [dbo].[Account] ([AcountID], [mail], [pass], [diachi], [sodt], [mota]) VALUES (N'B098', N'f@gmail.com', N'123', N'Thôn 8, Thạch hoà, Thạch Thất, Hà Nội. (Gần quán bia 113)', N'0985388883', N'2')
INSERT [dbo].[phongtro] ([phongID], [phong_ID], [image], [image1], [image2], [price], [mota], [status], [adddate]) VALUES (N'B036', N'B036', N'https://drive.google.com/uc?id=1KgIoR5DFvBs2LGJjGmYVUFdUh8XYLTjK', N'https://drive.google.com/uc?id=11M7vdthOMbtB6SJRVhS0Ms9qEk7VrM2m', N'https://drive.google.com/uc?id=1GpsLO4lbTut5g0ezGNKMrz8eEYctuniQ', 1500000, N'Khu trọ nhà mình 15 phòng hiện còn trống 3 phòng.
 Giá thuê 1tr5 đầy đủ tiện nghi 18m2 thời gian đi lại tự do .
Địa điểm : cách cây xăng 39 200m, , trước cửa xóm trọ là quán tóc mạnh nguyễn . 
Sđt 0363266546 anh dũng . Bạn nào có nhu cầu thuê ib anh .', N'còn 3 phòng', CAST(N'2020-09-11 00:00:00.000' AS DateTime))
INSERT [dbo].[phongtro] ([phongID], [phong_ID], [image], [image1], [image2], [price], [mota], [status], [adddate]) VALUES (N'B038', N'B038', N'https://drive.google.com/uc?id=1lnYxJ43duHnhs44Sz4RCmbSzy9rYyx0c', N'https://drive.google.com/uc?id=15YbLLv1uU51gn6FhRltCYk1D_Zsmf013', N'https://drive.google.com/uc?id=19AKtrupJM3HMfgvTMNAlmzpCMPQGMGZT', 1500000, N'CHO THUÊ PHÒNG TRỌ
hiện tại gia đinhg minhg còn dư 1 phòng trọ khép kín đầy đủ tiện nghi.cách vin, Hanwa 5 phút đi xe máy...
Địa chỉ:thôn 2. Hạ bằng. Thạch thất.hà nôi
Đt : 0382 645 433
Giá 1500k.1 phòng
Miễn phí wifi, nước. An ninh đảm bảo', N'còn 1 phòng', CAST(N'2020-09-11 00:00:00.000' AS DateTime))
INSERT [dbo].[phongtro] ([phongID], [phong_ID], [image], [image1], [image2], [price], [mota], [status], [adddate]) VALUES (N'B088', N'B088', N'https://drive.google.com/uc?id=1i0R5x7fTSTaWBCOTZiEU7AA9RGJc-zI6', N'https://drive.google.com/uc?id=17WZZ1btTDrCAELKOaegDcuNPvC-e94j1', N'https://drive.google.com/uc?id=17tgZg-tZoxQCz-IwDzZAxViAsYrx7gib', 3000000, N'Cho thuê ngôi nhà xinh xắn tại thôn 7 Thạch Hòa, Thạch Thất. Diện tích 100m2 trên nền đất 360m2, có 3 phòng ngủ, 1 phòng khách, phòng bếp vệ sinh riêng biệt
Vị trí cách trường Đại học FPT 1,7km, cách đường xe bus 50m. Gần kí túc xá ĐH Quốc gia, bể bơi 
+ Yêu cầu: ở sạch sẽ, có trách nhiệm bảo vệ tải sản, vườn cây của gia đình
Mọi chi tiết liên hệ: 0947201266', N'còn phòng', CAST(N'2020-09-11 00:00:00.000' AS DateTime))
INSERT [dbo].[phongtro] ([phongID], [phong_ID], [image], [image1], [image2], [price], [mota], [status], [adddate]) VALUES (N'B0881', N'B088', N'https://drive.google.com/uc?id=1nGoIKC1FcRRidsVupLCCJ48Z9gPQX0X8', N'https://drive.google.com/uc?id=15YbLLv1uU51gn6FhRltCYk1D_Zsmf013', N'https://drive.google.com/uc?id=1GpsLO4lbTut5g0ezGNKMrz8eEYctuniQ', 1500000, N'nhà trọ Minh Anh cơ sở mới, cạnh cơ sở cũ. ( THÔN 3 "thôn7 cũ " cách trường khoảnh 1,5km) phòng rộng 40m2 phù hợp cho khoảng 4,5 người ở
Bếp tách riêng nhìn ra thiên nhiên :))))
Có sẵn giường, tủ,bàn học, ghế ngồi, giá để dép ( em đã mua tủ lạnh ) CÓ CẦU THANG MÁY 
Mọi người chỉ việc xách đồ đến ở được ạ! 
Tìm các bạn nữ học FPT và sạch sẽ nhéee 🥰
Đay là ảnh của phòng mới xây và minh hoạ của 1 phòng 25m2 tại trọ Minh Anh ạa.', N'còn phòng', CAST(N'2020-09-11 00:00:00.000' AS DateTime))
INSERT [dbo].[phongtro] ([phongID], [phong_ID], [image], [image1], [image2], [price], [mota], [status], [adddate]) VALUES (N'B091', N'B091', N'https://drive.google.com/uc?id=17LjphGz1vR1UYHQ0YfNjQwsFM5lWq4kL', N'https://drive.google.com/uc?id=1MMKqTSG14UmkjOTq3rXYWcxrgOHRg5pg', N'https://drive.google.com/uc?id=1JEtdN06UpPBhX0J9RS6b0cFGhzi9zJon', 1600000, N'Nhà Trọ Minh Anh. Gồm 74 Phòng Trọ hiện  Đại 
 ✅ Phòng mới hoàn thiện đầy đủ nóng lạnh , điều hoà , giường, tủ mới 100%.
  Giá thuê : 1.6tr 1.9tr  và 2.1tr / Tháng
Cơ sở 1. Thôn 7 gần GÀ RI PHÚ BÌNH 2 
_ Cách ĐH FPT.1.8km . , ĐH QUỐC GIA 1km . KHu CNC 1km
-   Điện 3k / số. Nước sạch 15k/m3. Internet 50k/ 1 người
✅ Diện tích phòng : 20 - 27m2
 ✅ Có sân phơi đồ , nhà để xe , camera an ninh _ Bàoe Vệ 24/24h
 ✅ Gần trường fu, xung quanh sát trọ là quán cơm , quán nước , net, hàng quán . Chủ trọ dễ tính ... 
 ✅ Sđt liên hệ : Anh Tiến. 0984203690
 ✅ Cám ơn admin đã duyệt bài giúp mình . Các bạn sinh viên có nhu cầu xin liên lạc trực tiếp xin cảm ơn !', N'còn phòng', CAST(N'2020-09-11 00:00:00.000' AS DateTime))
INSERT [dbo].[phongtro] ([phongID], [phong_ID], [image], [image1], [image2], [price], [mota], [status], [adddate]) VALUES (N'B094', N'B094', N'https://drive.google.com/uc?id=1MMKqTSG14UmkjOTq3rXYWcxrgOHRg5pg', N'https://drive.google.com/uc?id=13oIE7uhFMOWofm8ttJvv4LZgLX4mZmB9', N'https://drive.google.com/uc?id=1GIYsKvhnq4zBkzb68c5ASTyTtlgobWeI', 2000000, N'🏢 Cách trường 1,7km. Cách điểm xe bus 50m (mặt đường 21), rất thuận tiện cho việc đi lại
🏘Khu nhà ở sinh viên Minh Anh. Sạch sẽ, quy củ. Đầy đủ tiện tiện nghi, có thang máy ( mời các bạn xem video)
🏠 Diện tích phòng từ 25m2 đến 40m2
🔒 An ninh tốt: ra vào khóa mã vân tay, cam an ninh 24/24
🏠 Phòng mới view đẹp, thoáng. Nấu ăn riêng biệt
🏖 Tiện ích đầy đủ. Gần quán ăn, tạp hóa. Gần bể bơi trường ĐH Quốc Gia (cách 500m).
💰 Giá phòng từ 2tr đến 3,6tr/tháng
☎️ Chi tiết liên hệ ĐT: 0947.201.266 hoặc 0965.192.898', N'còn phòng', CAST(N'2020-09-11 00:00:00.000' AS DateTime))
INSERT [dbo].[phongtro] ([phongID], [phong_ID], [image], [image1], [image2], [price], [mota], [status], [adddate]) VALUES (N'B097', N'B097', N'https://drive.google.com/uc?id=1nYvaabgHHpQELPnS0cBmV_lK1kXkg6jx', N'https://drive.google.com/uc?id=1lPNgK5Omc_tjutRl5-7LJlUPUoZwWGhT', N'https://drive.google.com/uc?id=1eph9MQ0DBa6hc3Ukp9FsvXwuouQCxHvG', 1300000, N' Nhà trọ Hoa Vinh chào tất cả các bạn!
🏠 Địa chỉ: Thôn 6 và Thôn 7 Thạch Hòa, Thạch Thất, cách trường  FPT 1km đến 1,5km.
Liền kề đại học quốc gia Hà Nội , cách điểm bus (107) 100m, cách khu công nghệ cao Hoà  Lạc 1km , cách trường sĩ quan Chính Trị 500m rất thuận lợi cho các bạn sinh viên đi học, công nhân và các hộ gia đình nhỏ
🆕️ phòng view đẹp, thoáng mát
- Diện tích phòng 25m2,  mới xây (100% như hình)
- Nội thất đẹp: điều hòa, nóng lạnh, giường
- Có chỗ nấu ăn riêng 
- Có ban công phơi đồ
- Hệ thống điện có trạm riêng biệt, điện khỏe
- Wf riêng từng phòng
- Chỗ để xe rộng rãi
* Tiến tới sẽ có siêu thị và căng tin phục vụ các bạn, không phải đi xa
- An ninh: camera an ninh 24/24
Giá cho thuê 1tr300-1tr500
Mọi chi tiết xin liên hệ: 0975.399.259( Anh Nhân ) Hoặc 0978674828(Chị Hoa)', N'còn phòng', CAST(N'2020-09-11 00:00:00.000' AS DateTime))
INSERT [dbo].[phongtro] ([phongID], [phong_ID], [image], [image1], [image2], [price], [mota], [status], [adddate]) VALUES (N'B0971', N'B097', N'https://drive.google.com/uc?id=19AKtrupJM3HMfgvTMNAlmzpCMPQGMGZT', N'https://drive.google.com/uc?id=1GIYsKvhnq4zBkzb68c5ASTyTtlgobWeI', N'https://drive.google.com/uc?id=1JEtdN06UpPBhX0J9RS6b0cFGhzi9zJon', 1300000, N'Sang tháng 11 mình còn dư 1 phòng 20m2 có nóng lạnh điều hòa đầy đủ 
Giá 1tr6(trọ ko chung chủ an ninh chặt chẽ) 
Bạn nào quan tâm thì ib ạ', N'còn 3 phòng', CAST(N'2020-09-11 00:00:00.000' AS DateTime))
INSERT [dbo].[phongtro] ([phongID], [phong_ID], [image], [image1], [image2], [price], [mota], [status], [adddate]) VALUES (N'B098', N'B098', N'https://drive.google.com/uc?id=1GIYsKvhnq4zBkzb68c5ASTyTtlgobWeI', N'https://drive.google.com/uc?id=11M7vdthOMbtB6SJRVhS0Ms9qEk7VrM2m', N'https://drive.google.com/uc?id=1JEtdN06UpPBhX0J9RS6b0cFGhzi9zJon', 1700000, N'1. Tên nhà trọ: SmallHouse - Trọ Xanh Lá            
2. Địa chỉ: Thôn 8, Thạch hoà, Thạch Thất, Hà Nội. (Gần quán bia 113)
3. Liên hệ: 0985.388.883. A. An Anh.
4. Giá phòng trọ: 1,7 tr/tháng
5. Số lượng phòng còn trống: 1               
6. Khoảng cách đến trường: 0.5-1km                
7. Có ở cùng chủ trọ hay không: không                
8. Thông tin chi tiết về nhà trọ                
        8.1   Thông tin cơ bản:
                + Loại phòng: phòng trọ
                + Diện tích tổng thể (m2): 20m2
                + Tầng 2
        8.2    Nội thất có sẵn: điều hòa, nóng lạnh.', N'còn 1 phòng', CAST(N'2020-09-11 00:00:00.000' AS DateTime))
INSERT [dbo].[tintuc] ([matin], [tieude], [loidan], [anh], [noidung]) VALUES (1, N'Không cần phải là chủ nhà vẫn kinh doanh nhà trọ được', N'Trên thực tế, ngoài giá thuê, những dịch vụ phụ cũng mang lại lợi nhuận cho chủ trọ, như Internet, điện, nước... “Thuê nhà mở dịch vụ phải quản lý điện, nước, nếu không sẽ dẫn đến thất thoát. Có nhà cả tháng tiền nước lên đến hơn 3 triệu do bị vỡ ống nước ...', N'https://news.mogi.vn/wp-content/uploads/2019/05/tim-phong-tro-anh-1-1.jpg', N'Hồng Phương, sinh viên năm 3 ở quận Phú Nhuận chia sẻ, tùy thuộc vào diện tích, và dịch vụ đi kèm như Internet, truyền hình cáp, máy lạnh… mà giá thuê khác nhau, thường những phòng có nhà vệ sinh riêng luôn nhỉnh hơn 300.000-500.000 đồng.

Phương cho biết, thuê nhà của các chủ dịch vụ luôn thoải mái về mặt giờ giấc, sinh hoạt không bị gò bó. Thêm vào đó, người thuê có thể lựa chọn được nhiều phòng trọ, địa điểm trong thành phố.

Ông Tiến, một cò môi giới nhà ở quận 4, cho biết, thực tế những chủ dịch vụ cho thuê nhà lại không hề tốn số vốn. Nếu thương lượng tốt với chủ nhà, người kinh doanh chỉ cần đóng cọc 1 tháng, trả trước 1 tháng. Tuy nhiên, trong hợp đồng với khách hàng, chủ dịch vụ thường thu 2 tháng cọc, trả trước 1 tháng.

“Hợp đồng còn quy định, khách chuyển đi phải báo trước 1 tháng, để chủ dịch vụ tìm người thế chỗ”, ông Tiến cho biết.

Ông Lê Cư, chủ nhà trên đường Đoàn Văn Bơ, quận 4, cho biết, những người làm dịch vụ cho thuê phòng thường có sẵn một nguồn khách ổn định. Nếu tự kinh doanh ông Cư phải tốn phí dịch vụ môi giới, thời gian quản lý, thu tiền từng phòng, đăng ký tạm trú… Vì thế, ông đã cho dịch vụ phòng trọ thuê nhà với mức giá hợp lý để làm công việc khác.

Khi kinh doanh lại nhà trọ, một số người bố trí phòng theo kiểu ký túc xá, có cả giường tầng cho sinh viên ở ghép với mức phí 500.000-800.000 đồng/ tháng, bao điện nước, mỗi phòng ở 4-10 người.

Anh Thanh Vũ, chủ một dịch vụ nhà trọ ở quận 4, cho biết, nếu chỉ nhìn bên ngoài thì tưởng dịch vụ này dễ kiếm tiền. Tuy nhiên, thực tế, việc tìm một ngôi nhà phù hợp để kinh doanh trọ không hề đơn giản. Nhà mới giá thường cao, nhà cũ thì bị xuống cấp khi sửa chữa để ngăn phòng giá rẻ sẽ không có lời.')
INSERT [dbo].[tintuc] ([matin], [tieude], [loidan], [anh], [noidung]) VALUES (2, N'Những cách tiết kiêm không gian phòng trọ', N'Tận dụng những lỗ hổng trên tường Lỗ hổng có thể làm xấu đi bức tường của bạn, nhưng bạn có thể tận dụng những lỗ hổng này để đồ hoặc dán những bức tranh, ảnh dễ thương và ngộ nghĩnh. Thiết kế móc quần áo đôi Bạn có rất nhiều quần áo, phụ kiện nhưng diện tích ...', N'http://www.nhatrosinhvien.com/wp-content/uploads/2016/08/nhung-cach-tiet-kiem-khong-gian-phong-tro.jpg', N'Lỗ hổng có thể làm xấu đi bức tường của bạn, nhưng bạn có thể tận dụng những lỗ hổng này để đồ hoặc dán những bức tranh, ảnh dễ thương và ngộ nghĩnh.

Thiết kế móc quần áo đôi

Bạn có rất nhiều quần áo, phụ kiện nhưng diện tích tủ đồ thì khá nhỏ hẹp. Hãy thiết kế móc quần áo đôi cho mình bằng cách tận dụng chiếc nắp trên vỏ lon bia, nước ngọt và lồng thêm một chiếc móc khác vào.
Những cách tiết kiêm không gian phòng trọ
Là phẳng quần áo trước khi gập

Quần áo nhàu nhĩ sẽ khiến bạn mất thêm không gian để lưu trữ. Hãy dành thời gian của mình để là phẳng và gấp những chiếc quần áo phẳng phiu. Bạn sẽ thấy tủ đồ của mình gọn gàng hơn rất nhiều và bạn cũng dễ dàng để tìm thấy bộ cánh ưng ý của mình trước khi ra ngoài.

Biến một chiếc cốc thành một cái loa

Bạn không có loa để nghe nhạc? Hãy ấn nút “play” và thả chiếc điện thoại vào một chiếc cốc thủy tinh để tạo thành một sản phẩm khuếch đại âm thanh!

Dùng móc treo để biến Ipad thành TV

Bạn có thể dùng những chiếc móc treo dính chắc chắn để biến Ipad thành chiếc TV màn hình phẳng dành cho cả bạn và bạn cùng phòng của mình.')
INSERT [dbo].[tintuc] ([matin], [tieude], [loidan], [anh], [noidung]) VALUES (3, N'Những thú vị khi ở với bạn cùng phòng trọ', N'Bạn muốn tắt đèn nhưng họ lại muốn bật đèn Bạn muốn tắt đèn để đi ngủ, nhưng họ lại muốn bật đèn để học bài, xem phim và làm những điều mình thích. Đây là cuộc đấu tranh vô tận mà bạn không thể giải quyết được. Khi bạn buồn, bạn không có chỗ nào để ...', N'http://www.nhatrosinhvien.com/wp-content/uploads/2016/08/nhung-thu-vi-khi-o-voi-ban-cung-phong-tro.jpg', N'Bạn muốn tắt đèn để đi ngủ, nhưng họ lại muốn bật đèn để học bài, xem phim và làm những điều mình thích. Đây là cuộc đấu tranh vô tận mà bạn không thể giải quyết được.

Những thú vị khi ở với bạn cùng phòng trọKhi bạn buồn, bạn không có chỗ nào để đi và ngồi khóc một mình

Bất cứ khi nào bạn chỉ muốn ở một mình, họ vẫn sẽ vây quanh và hỏi han bạn. Họ có thể làm mọi chuyện khá hơn hoặc tồi tệ hơn khi cố an ủi bạn.

Bạn tranh cãi vì mớ bừa bộn trong nhà

Chỉ sau vài ngày, căn phòng của các bạn không còn gọn gàng, ngăn nắp như ban đầu. Bạn từ chối lau dọn mớ bừa bộn vì nó không hẳn do bạn gây ra. Mớ bừa bộn không được làm sạch, và bạn gặp muôn vàn rắc rối trong việc tìm kiếm đồ đạc hay sinh hoạt trong phòng.

Bạn tỵ nạnh với nhau vì lịch phân công lao động

Nếu bạn quá chăm chỉ làm việc nhà, sẽ có một ngày bạn sẽ cảm thấy chán nản khi bạn cùng phòng của bạn ngày càng ỷ lại và trông chờ vào bạn.

Khi có bạn đến chơi

Bạn hoàn toàn thấy vui vẻ và thỏa mái khi bạn thân của mình đến phòng chơi. Nhưng bạn có thể sẽ cảm thấy khó chịu khi bạn của bạn cùng phòng đến chơi, ăn cơm và ngủ lại. Điều này khiến hai bạn khó chịu với nhau không ít lần.

Phân chia không gian trong phòng

Bạn cùng phòng có quá nhiều đồ đạc và khiến bạn cảm thấy chẳng có không gian nào để đồ đạc trong phòng.

Tiếng ồn từ họ làm phiền bạn

Bạn muốn ngủ, hoặc muốn tập trung vào việc học, nhưng bạn cùng phòng của bạn lại đang nghe nhạc và xem những bộ phim hấp dẫn.

Họ luôn xen vào chuyện của bạn

Bất cứ khi nào bạn nhận được một cái gì đó mới, bạn ấy biết điều đó ngay lập tức vào hỏi rất nhiều về điều đó. Bạn gặp ai, đi đâu, bạn mua gì…bạn cùng phòng của bạn đều biết hết hoặc tìm mọi cách để biết hết. Sự tọc mạch và những lời bình luận của cô/anh ấy có thể làm phiền bạn.

Bạn buộc phải chia sẻ mọi thứ với họ

Từ đồ ăn, thức uống đến quần áo, các đồ dùng… Đồ của bạn cũng là đồ của họ. Bạn cùng phòng có thể “mượn tạm” đồ của bạn mà không hỏi, hoặc bạn đợi mãi không thấy họ trả lại. Điều này làm bạn cảm thấy khó chịu.')
ALTER TABLE [dbo].[phongtro]  WITH CHECK ADD FOREIGN KEY([phong_ID])
REFERENCES [dbo].[Account] ([AcountID])
GO
