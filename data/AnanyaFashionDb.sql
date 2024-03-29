USE [master]
GO
/****** Object:  Database [ananyafashion]    Script Date: 25-11-2023 5.52.53 PM ******/
CREATE DATABASE [ananyafashion]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ananyafashion_data', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\ananyafashion_data.mdf' , SIZE = 8192KB , MAXSIZE = 256000KB , FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ananyafashion_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\ananyafashion_log.ldf' , SIZE = 8192KB , MAXSIZE = 10240KB , FILEGROWTH = 2048KB )
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ananyafashion].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ananyafashion] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ananyafashion] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ananyafashion] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ananyafashion] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ananyafashion] SET ARITHABORT OFF 
GO
ALTER DATABASE [ananyafashion] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ananyafashion] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ananyafashion] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ananyafashion] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ananyafashion] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ananyafashion] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ananyafashion] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ananyafashion] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ananyafashion] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ananyafashion] SET  ENABLE_BROKER 
GO
ALTER DATABASE [ananyafashion] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ananyafashion] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ananyafashion] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ananyafashion] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ananyafashion] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ananyafashion] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ananyafashion] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ananyafashion] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ananyafashion] SET  MULTI_USER 
GO
ALTER DATABASE [ananyafashion] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ananyafashion] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ananyafashion] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ananyafashion] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ananyafashion] SET DELAYED_DURABILITY = DISABLED 
GO
USE [ananyafashion]
GO
/****** Object:  User [ananyafashion]    Script Date: 25-11-2023 5.52.54 PM ******/
CREATE USER [ananyafashion] FOR LOGIN [ananyafashion] WITH DEFAULT_SCHEMA=[ananyafashion]
GO
ALTER ROLE [db_owner] ADD MEMBER [ananyafashion]
GO
/****** Object:  Schema [ananyafashion]    Script Date: 25-11-2023 5.52.54 PM ******/
CREATE SCHEMA [ananyafashion]
GO
/****** Object:  Table [dbo].[Admin_Login]    Script Date: 25-11-2023 5.52.54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin_Login](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](max) NULL,
	[UserPassword] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Blog_Table]    Script Date: 25-11-2023 5.52.54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Blog_Table](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[blogTitle] [nvarchar](max) NULL,
	[blogDate] [nvarchar](max) NULL,
	[blogImage] [nvarchar](max) NULL,
	[blogDetail] [nvarchar](max) NULL,
	[blogStatus] [nvarchar](max) NULL,
	[blogRTS] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Contact_Inquiry_Table]    Script Date: 25-11-2023 5.52.54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contact_Inquiry_Table](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](max) NULL,
	[email] [nvarchar](max) NULL,
	[mobile] [nvarchar](max) NULL,
	[message] [nvarchar](max) NULL,
	[rts] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Gallery_Table]    Script Date: 25-11-2023 5.52.54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gallery_Table](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[galleryImage] [nvarchar](max) NULL,
	[galleryImageStatus] [nvarchar](max) NULL,
	[galleryImageRTS] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Product_Table]    Script Date: 25-11-2023 5.52.54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product_Table](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[productName] [nvarchar](max) NULL,
	[productPrice] [nvarchar](max) NULL,
	[productImage1] [nvarchar](max) NULL,
	[productImage2] [nvarchar](max) NULL,
	[productImage3] [nvarchar](max) NULL,
	[productImage4] [nvarchar](max) NULL,
	[productImage5] [nvarchar](max) NULL,
	[productDetails] [nvarchar](max) NULL,
	[productStatus] [nvarchar](max) NULL,
	[productRTS] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Slider_Table]    Script Date: 25-11-2023 5.52.54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Slider_Table](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[sliderImg1] [nvarchar](max) NULL,
	[sliderImg2] [nvarchar](max) NULL,
	[sliderImg3] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Testimonials_Table]    Script Date: 25-11-2023 5.52.54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Testimonials_Table](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[t_username] [nvarchar](max) NULL,
	[t_review] [nvarchar](max) NULL,
	[t_Status] [nvarchar](max) NULL,
	[t_RTS] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[WebsiteDetails_Table]    Script Date: 25-11-2023 5.52.54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WebsiteDetails_Table](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[mobileNumber] [nvarchar](max) NULL,
	[emailId] [nvarchar](max) NULL,
	[logoImage] [nvarchar](max) NULL,
	[googleMap] [nvarchar](max) NULL,
	[address] [nvarchar](max) NULL,
	[about] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Admin_Login] ON 

INSERT [dbo].[Admin_Login] ([Id], [Username], [UserPassword]) VALUES (1, N'admin', N'1234')
SET IDENTITY_INSERT [dbo].[Admin_Login] OFF
SET IDENTITY_INSERT [dbo].[Blog_Table] ON 

INSERT [dbo].[Blog_Table] ([Id], [blogTitle], [blogDate], [blogImage], [blogDetail], [blogStatus], [blogRTS]) VALUES (1, N'Cotton Suits ananya fashion jaipur', N'25 May 2023', N'March22-9847.jpg', N'<p>Welcome to Ananya Fashion Jaipur, where we take pride in bringing you the finest collection of cotton suits that perfectly blend style, comfort, and elegance. Our commitment to craftsmanship and attention to detail make us a premier destination for fashion-conscious individuals seeking the perfect cotton suit. Let us introduce you to the world of Ananya Fashion Jaipur and our stunning cotton suit collection.</p>

<p>At Ananya Fashion Jaipur, we believe that clothing should be a reflection of your personality and individuality. Our cotton suits are meticulously designed and tailored to enhance your style quotient while keeping you comfortable throughout the day. We understand that cotton is a preferred fabric for many due to its breathability and softness, and our collection embraces these qualities to offer you a delightful wearing experience.</p>

<p>When you explore our range of cotton suits, you&#39;ll discover an array of exquisite designs, captivating patterns, and vibrant colors that suit every occasion and taste. Whether you&#39;re looking for a casual cotton suit for a day out or an elegant ensemble for a special event, we have options that cater to your unique style preferences.</p>

<p>Our team of skilled artisans and designers pour their creativity into each cotton suit, ensuring impeccable stitching, precise detailing, and perfect fits. We believe that the devil lies in the details, which is why we pay careful attention to intricate embroidery, delicate embellishments, and tasteful prints that add a touch of sophistication to our cotton suits.</p>

<p>We take pride in sourcing the finest quality cotton fabrics to create our suits. Our cotton is carefully selected for its softness, durability, and ability to keep you cool even in warmer climates. We strive to offer you a collection that is not only aesthetically pleasing but also comfortable to wear, allowing you to move with ease and confidence.</p>

<p>Ananya Fashion Jaipur is committed to providing you with an exceptional shopping experience. Our knowledgeable and friendly staff is always ready to assist you in finding the perfect cotton suit that suits your style, body type, and occasion. We believe that every customer is unique, and we take great pleasure in helping you discover the cotton suit that brings out your inner beauty and confidence.</p>

<p>In addition to our stunning cotton suit collection, we also offer a range of complementary accessories that complete your ensemble. From stylish dupattas to statement jewelry pieces, we have everything you need to create a head-turning look that leaves a lasting impression.</p>

<p>When you choose Ananya Fashion Jaipur, you&#39;re not just purchasing a cotton suit; you&#39;re investing in a piece of art that embodies timeless elegance and exceptional quality. Join us on a journey of style, comfort, and sophistication as we redefine the way you experience fashion through our exquisite cotton suits.</p>

<p>Visit us at Ananya Fashion Jaipur and immerse yourself in the world of cotton suits that perfectly blend tradition with contemporary fashion, creating a style statement that is uniquely yours. Step into elegance, embrace comfort, and let your personality shine with our extraordinary collection of cotton suits.</p>
', N'1', N'May 13 2023  1:05PM')
INSERT [dbo].[Blog_Table] ([Id], [blogTitle], [blogDate], [blogImage], [blogDetail], [blogStatus], [blogRTS]) VALUES (2, N'Musline Suit ananya fashion jaipur', N'20 May 2023', N'grey-muslin-suit.jpg', N'<p>Welcome to Ananya Fashion Jaipur, your ultimate destination for exquisite muslin suits that effortlessly combine grace, elegance, and sophistication. At Ananya Fashion Jaipur, we take immense pride in curating a stunning collection of muslin suits that epitomize timeless beauty and luxurious comfort. Allow us to introduce you to the captivating world of muslin suits and the unique offerings of Ananya Fashion Jaipur.</p>

<p>Our muslin suits are crafted with meticulous attention to detail, showcasing the craftsmanship of our skilled artisans. We understand the allure of muslin fabric, known for its delicate texture, lightweight feel, and exceptional draping. With its breathable nature and graceful flow, muslin fabric ensures that you stay comfortable and poised, even during extended wear.</p>

<p>At Ananya Fashion Jaipur, we offer an impressive range of muslin suits that cater to diverse tastes and occasions. From casual daywear to glamorous evening ensembles, our collection showcases a plethora of captivating designs, intricate patterns, and enchanting colors. Each piece is thoughtfully curated to celebrate femininity and empower the modern woman.</p>

<p>Our team of talented designers infuses their creativity into every muslin suit, combining contemporary trends with traditional aesthetics. From exquisite hand embroideries to intricate motifs and embellishments, our muslin suits exhibit a remarkable fusion of artistry and elegance. With an eye for perfection, we ensure that every stitch and detail reflects the highest standards of craftsmanship.</p>

<p>Ananya Fashion Jaipur is dedicated to sourcing the finest quality muslin fabric, ensuring that our suits are as comfortable as they are visually stunning. We carefully select muslin fabrics that are soft to the touch, allowing you to experience a luxurious feel against your skin. Our commitment to quality ensures that our muslin suits drape gracefully, enhancing your natural beauty and creating a sense of timeless allure.</p>

<p>We believe in providing an exceptional shopping experience, and our knowledgeable and friendly staff is always ready to assist you in finding the perfect muslin suit that matches your style and occasion. We understand that every individual is unique, and we take pride in helping you discover a muslin suit that reflects your personality and makes a lasting impression.</p>

<p>To complement your muslin suit, we offer an array of accessories that add the perfect finishing touch to your ensemble. From statement jewelry to elegant dupattas, our accessories are carefully curated to enhance the beauty and allure of your muslin suit, creating a harmonious and captivating look.</p>

<p>At Ananya Fashion Jaipur, we go beyond offering muslin suits; we aim to provide you with a transformative experience. Our collection celebrates the essence of femininity, allowing you to embrace your inner grace and confidence. With our muslin suits, you can make a bold fashion statement, leaving a lasting impression wherever you go.</p>

<p>Step into the enchanting world of Ananya Fashion Jaipur and indulge in the ethereal beauty of muslin suits. Explore our collection and discover the perfect muslin suit that captures your heart and complements your style. Immerse yourself in the luxury, comfort, and elegance that our muslin suits offer, and let your inner radiance shine through.</p>
', N'1', N'May 13 2023  1:06PM')
INSERT [dbo].[Blog_Table] ([Id], [blogTitle], [blogDate], [blogImage], [blogDetail], [blogStatus], [blogRTS]) VALUES (3, N'Mal Suit Ananya Fashion Jaipur', N'20 May 2023', N'61MZ3OX7esL._UL1381_.jpg', N'<p>Welcome to Ananya Fashion Jaipur, where we celebrate the charm and allure of Mal suits, the epitome of elegance and grace. Our collection of Mal suits is curated with utmost care and attention to detail, ensuring that each piece reflects the timeless beauty and rich heritage of Indian fashion. Let us take you on a journey through the enchanting world of Mal suits and the exquisite offerings of Ananya Fashion Jaipur.</p>

<p>Mal suits are renowned for their delicate and lightweight fabric, traditionally made from pure cotton or a blend of cotton and silk. The intricate weaving technique used to create Mal fabric gives it a distinct texture and a sheer, ethereal quality. At Ananya Fashion Jaipur, we take great pride in showcasing the finest Mal suits that perfectly balance luxury, comfort, and sophistication.</p>

<p>Our collection of Mal suits offers a diverse range of designs, patterns, and colors, catering to various occasions and personal preferences. Whether you&#39;re looking for a casual daywear suit or an elegant ensemble for a special event, our curated selection is sure to captivate your senses. Each Mal suit is meticulously crafted, showcasing the expertise and craftsmanship of our skilled artisans.</p>

<p>Ananya Fashion Jaipur places great emphasis on sourcing the highest quality Mal fabric, ensuring that our suits exude luxury and comfort. We carefully select fabrics that are soft to the touch, allowing for a graceful drape and a delightful wearing experience. The lightweight nature of Mal fabric ensures that you stay cool and comfortable, making it an ideal choice for both warm and temperate climates.</p>

<p>Our team of talented designers brings a contemporary touch to the traditional art of Mal suits. From intricate hand embroidery to exquisite lacework and intricate motifs, our suits boast a fusion of modern aesthetics with timeless elegance. Each design is carefully crafted to accentuate your natural beauty and provide a sense of understated luxury.</p>

<p>At Ananya Fashion Jaipur, we strive to provide an exceptional shopping experience. Our knowledgeable and friendly staff is dedicated to helping you find the perfect Mal suit that aligns with your personal style and occasion. We understand that every individual is unique, and we take pride in assisting you in selecting a suit that enhances your beauty and confidence.</p>

<p>To complete your Mal suit ensemble, we offer a selection of accessories that add the perfect finishing touches. From delicate dupattas to exquisite jewelry, our accessories are thoughtfully chosen to complement and elevate your Mal suit, allowing you to create a captivating and harmonious look.</p>

<p>Immerse yourself in the world of Ananya Fashion Jaipur and experience the timeless beauty of Mal suits. With our curated collection, you can embrace the elegance and grace that Mal suits exude, making a lasting impression wherever you go. Indulge in the luxury, comfort, and sophistication of our Mal suits, and let your inner radiance shine through.</p>
', N'1', N'May 31 2023 11:25AM')
INSERT [dbo].[Blog_Table] ([Id], [blogTitle], [blogDate], [blogImage], [blogDetail], [blogStatus], [blogRTS]) VALUES (4, N'WOMEN,S CLOTHING STORE', N'12-6-23', N'BLUE CO-ORD SET.jpg', N'', N'1', N'Jun 12 2023  7:06PM')
SET IDENTITY_INSERT [dbo].[Blog_Table] OFF
SET IDENTITY_INSERT [dbo].[Gallery_Table] ON 

INSERT [dbo].[Gallery_Table] ([Id], [galleryImage], [galleryImageStatus], [galleryImageRTS]) VALUES (1, N'WhatsApp Image 2023-05-22 at 11.41.29 AM.jpeg', N'1', N'May 13 2023 12:43PM')
INSERT [dbo].[Gallery_Table] ([Id], [galleryImage], [galleryImageStatus], [galleryImageRTS]) VALUES (2, N'WhatsApp Image 2023-05-22 at 11.41.30 AM.jpeg', N'1', N'May 13 2023 12:43PM')
INSERT [dbo].[Gallery_Table] ([Id], [galleryImage], [galleryImageStatus], [galleryImageRTS]) VALUES (3, N'WhatsApp Image 2023-05-22 at 11.41.31 AM.jpeg', N'1', N'May 13 2023 12:43PM')
INSERT [dbo].[Gallery_Table] ([Id], [galleryImage], [galleryImageStatus], [galleryImageRTS]) VALUES (4, N'WhatsApp Image 2023-05-22 at 11.41.32 AM.jpeg', N'1', N'May 13 2023 12:46PM')
INSERT [dbo].[Gallery_Table] ([Id], [galleryImage], [galleryImageStatus], [galleryImageRTS]) VALUES (5, N'WhatsApp Image 2023-05-22 at 11.41.32 AM (1).jpeg', N'1', N'May 13 2023 12:46PM')
INSERT [dbo].[Gallery_Table] ([Id], [galleryImage], [galleryImageStatus], [galleryImageRTS]) VALUES (6, N'WhatsApp Image 2023-05-22 at 11.41.33 AM.jpeg', N'1', N'May 13 2023 12:47PM')
INSERT [dbo].[Gallery_Table] ([Id], [galleryImage], [galleryImageStatus], [galleryImageRTS]) VALUES (7, N'WhatsApp Image 2023-05-22 at 11.41.34 AM.jpeg', N'1', N'May 22 2023  1:16PM')
SET IDENTITY_INSERT [dbo].[Gallery_Table] OFF
SET IDENTITY_INSERT [dbo].[Product_Table] ON 

INSERT [dbo].[Product_Table] ([Id], [productName], [productPrice], [productImage1], [productImage2], [productImage3], [productImage4], [productImage5], [productDetails], [productStatus], [productRTS]) VALUES (16, N'CO-ORD SET', N'1055', N'WhatsApp Image 2023-07-03 at 2.09.59 PM(2).jpeg', N'WhatsApp Image 2023-07-03 at 2.09.59 PM(1).jpeg', N'WhatsApp Image 2023-07-03 at 2.09.59 PM.jpeg', N'WhatsApp Image 2023-07-03 at 2.09.58 PM.jpeg', N'WhatsApp Image 2023-07-03 at 2.09.57 PM.jpeg', N'<p>Price- 1055/-<br />
Stuff pure slik Musline<br />
Size - m to xxl<br />
Heavy Cretion peice<br />
Dhoti style pent<br />
Single colour<br />
Heavy quality and cloth<br />
Deal in wholesale only<br />
Ananya fashion jaipur</p>
', N'1', N'Jul  3 2023  2:31PM')
INSERT [dbo].[Product_Table] ([Id], [productName], [productPrice], [productImage1], [productImage2], [productImage3], [productImage4], [productImage5], [productDetails], [productStatus], [productRTS]) VALUES (17, N'AFGANI CO-ORD SET', N'995', N'WhatsApp Image 2023-07-03 at 2.32.03 PM.jpeg', N'WhatsApp Image 2023-07-03 at 2.32.04 PM(1).jpeg', N'WhatsApp Image 2023-07-03 at 2.32.04 PM.jpeg', N'WhatsApp Image 2023-07-03 at 2.32.05 PM(1).jpeg', N'WhatsApp Image 2023-07-03 at 2.32.05 PM.jpeg', N'<p>Price- 995/-<br />
Stuff pure slik Musline<br />
Size - m to xxl<br />
Heavy Cretion peice<br />
Afgani style pent<br />
Single colour<br />
Heavy quality and cloth<br />
Deal in wholesale only<br />
Ananya fashion jaipur</p>
', N'1', N'Jul  3 2023  2:33PM')
INSERT [dbo].[Product_Table] ([Id], [productName], [productPrice], [productImage1], [productImage2], [productImage3], [productImage4], [productImage5], [productDetails], [productStatus], [productRTS]) VALUES (18, N'APPLE CUT CO-ORD SET', N'1225', N'WhatsApp Image 2023-07-03 at 2.34.24 PM.jpeg', N'WhatsApp Image 2023-07-03 at 2.34.24 PM.jpeg', N'WhatsApp Image 2023-07-03 at 2.34.24 PM.jpeg', N'WhatsApp Image 2023-07-03 at 2.34.24 PM.jpeg', N'WhatsApp Image 2023-07-03 at 2.34.24 PM.jpeg', N'<p>Price- 1225/-<br />
Stuff pure slik Musline<br />
Size - m to xxl<br />
Heavy Cretion peice<br />
Afgani style pent<br />
Single colour<br />
Heavy quality and cloth<br />
Deal in wholesale only<br />
Ananya fashion jaipur</p>
', N'1', N'Jul  3 2023  2:35PM')
INSERT [dbo].[Product_Table] ([Id], [productName], [productPrice], [productImage1], [productImage2], [productImage3], [productImage4], [productImage5], [productDetails], [productStatus], [productRTS]) VALUES (19, N'DIGITAL PRINT V NECK', N'1245', N'WhatsApp Image 2023-07-03 at 3.21.43 PM(2).jpeg', N'WhatsApp Image 2023-07-03 at 3.21.43 PM(1).jpeg', N'WhatsApp Image 2023-07-03 at 3.21.43 PM.jpeg', N'WhatsApp Image 2023-07-03 at 3.21.42 PM.jpeg', N'WhatsApp Image 2023-07-03 at 3.21.43 PM(2).jpeg', N'<p>Price- 1245/-<br />
Digital print<br />
Pure slik Musline</p>
', N'1', N'Jul  3 2023  3:26PM')
INSERT [dbo].[Product_Table] ([Id], [productName], [productPrice], [productImage1], [productImage2], [productImage3], [productImage4], [productImage5], [productDetails], [productStatus], [productRTS]) VALUES (20, N'TUNIC', N'1095', N'WhatsApp Image 2023-07-03 at 3.27.01 PM(1).jpeg', N'WhatsApp Image 2023-07-03 at 3.27.01 PM.jpeg', N'WhatsApp Image 2023-07-03 at 3.27.00 PM.jpeg', N'WhatsApp Image 2023-07-03 at 3.27.01 PM(1).jpeg', N'WhatsApp Image 2023-07-03 at 3.27.01 PM.jpeg', N'<p>Girls tunic<br />
5 colour available<br />
S to xl<br />
1095 price<br />
Deal in wholesale only!</p>
', N'1', N'Jul  3 2023  3:28PM')
INSERT [dbo].[Product_Table] ([Id], [productName], [productPrice], [productImage1], [productImage2], [productImage3], [productImage4], [productImage5], [productDetails], [productStatus], [productRTS]) VALUES (21, N'LONG KURTA STYLE CO-ORD SET', N'995', N'WhatsApp Image 2023-07-03 at 3.29.28 PM.jpeg', N'WhatsApp Image 2023-07-03 at 3.29.31 PM.jpeg', N'WhatsApp Image 2023-07-03 at 3.29.28 PM.jpeg', N'WhatsApp Image 2023-07-03 at 3.29.31 PM.jpeg', N'WhatsApp Image 2023-07-03 at 3.29.28 PM.jpeg', N'<p>995/-<br />
Single shade available<br />
M to xxl<br />
Pure silk Musline<br />
Deal in Wholesale only</p>
', N'1', N'Jul  3 2023  3:30PM')
SET IDENTITY_INSERT [dbo].[Product_Table] OFF
SET IDENTITY_INSERT [dbo].[Slider_Table] ON 

INSERT [dbo].[Slider_Table] ([Id], [sliderImg1], [sliderImg2], [sliderImg3]) VALUES (1, N'slider1.jpg', N'slider2.jpg', N'slider3.jpg')
SET IDENTITY_INSERT [dbo].[Slider_Table] OFF
SET IDENTITY_INSERT [dbo].[Testimonials_Table] ON 

INSERT [dbo].[Testimonials_Table] ([Id], [t_username], [t_review], [t_Status], [t_RTS]) VALUES (1, N'Om Sharma', N'If you are looking for exceptional ethnic wear that celebrates tradition and craftsmanship, I wholeheartedly recommend Ananya Fashion Jaipur. Their collection will leave you spellbound, and their commitment to quality and customer satisfaction is unmatched. Experience the beauty of Jaipur heritage through their stunning creations.', N'1', N'May 13 2023  3:02PM')
INSERT [dbo].[Testimonials_Table] ([Id], [t_username], [t_review], [t_Status], [t_RTS]) VALUES (2, N'Vikas', N'I have received numerous compliments whenever I wear Ananya Fashion Jaipur ethnic wear. Their designs are not only trendy but also timeless, making them a staple in my wardrobe. Whether it is a wedding, festival, or any special occasion, I can always rely on Ananya Fashion Jaipur to provide me with an ensemble that makes heads turn.', N'1', N'May 13 2023  3:22PM')
INSERT [dbo].[Testimonials_Table] ([Id], [t_username], [t_review], [t_Status], [t_RTS]) VALUES (3, N'Simran', N'I am absolutely thrilled with the ethnic wear collection at Ananya Fashion Jaipur! Their stunning designs and impeccable craftsmanship have truly won me over. Every time I step into their store, I am greeted with a wide array of exquisite traditional outfits that showcase the rich heritage of Jaipur.', N'1', N'May 13 2023  3:25PM')
INSERT [dbo].[Testimonials_Table] ([Id], [t_username], [t_review], [t_Status], [t_RTS]) VALUES (4, N'Mohit Vyas', N'Furthermore, the staff at Ananya Fashion Jaipur is incredibly friendly and knowledgeable. They go above and beyond to assist customers in finding the perfect outfit, offering valuable styling tips and suggestions. Their expertise and attention to detail ensure that I always leave the store feeling confident and satisfied with my purchase.', N'1', N'Jun  7 2023 10:15AM')
SET IDENTITY_INSERT [dbo].[Testimonials_Table] OFF
SET IDENTITY_INSERT [dbo].[WebsiteDetails_Table] ON 

INSERT [dbo].[WebsiteDetails_Table] ([Id], [mobileNumber], [emailId], [logoImage], [googleMap], [address], [about]) VALUES (1, N'9610000311', N'info@ananyafashionjaipur.com', N'AnanyaLogo.png', N'<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d113843.50643599537!2d75.75294039511328!3d26.915883220071645!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x396db78455a8ba81%3A0x2b1c46fc6a49214e!2sANANYA%20FASHION!5e0!3m2!1sen!2sin!4v1684922393633!5m2!1sen!2sin" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>', N'shop no . 323/324, 4th floor , navjeevan plaza, mi road jaipur', N'<p>Welcome to Ananya Fashion, where elegance meets style. Since our establishment in 2019, we have been dedicated to bringing you the latest trends and designs in the world of fashion. Our passion for quality craftsmanship and attention to detail sets us apart, making us your go-to destination for all your fashion needs.</p>

<p>At Ananya Fashion, we believe that fashion is a reflection of your individuality and personality. That&#39;s why we curate a diverse collection of clothing and accessories that cater to every taste and occasion. From trendy casual wear to sophisticated formal attire, we offer a wide range of options that allow you to express yourself with confidence and flair.</p>

<p>We pride ourselves on the quality of our products. Each piece in our collection is carefully selected to ensure it meets our high standards of excellence. We work with talented designers and artisans who share our vision for creating fashion-forward garments that combine style, comfort, and durability.</p>

<p>Our commitment to customer satisfaction is unwavering. We strive to provide a seamless shopping experience, from the moment you browse our online store to the prompt delivery of your order. Our friendly and knowledgeable customer support team is always ready to assist you with any queries or concerns you may have, ensuring that you feel valued and cared for as a member of the Ananya Fashion family.</p>

<p>We believe in sustainable fashion practices and are continuously exploring ways to reduce our environmental footprint. From utilizing eco-friendly materials to promoting ethical manufacturing processes, we are dedicated to making a positive impact on the planet and the communities we serve.</p>

<p>Join us on a fashion journey that celebrates your unique style and empowers you to embrace your individuality. Discover the latest trends, find timeless classics, and experience the joy of dressing up with Ananya Fashion. We are here to inspire and delight you every step of the way.</p>

<p>Thank you for choosing Ananya Fashion. Together, let&#39;s make a stylish statement and embrace the beauty of fashion!</p>

<p>Ananya Fashion <a href="tel:9001156605">9001156605</a></p>

<p>Ananya Fashion <a href="tel:9610000311">9610000311</a></p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p>&nbsp;</p>
')
SET IDENTITY_INSERT [dbo].[WebsiteDetails_Table] OFF
USE [master]
GO
ALTER DATABASE [ananyafashion] SET  READ_WRITE 
GO
