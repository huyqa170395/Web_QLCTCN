USE [master]
GO
/****** Object:  Database [QLTC]    Script Date: 2018-05-26 21:00:28 ******/
CREATE DATABASE [QLTC]
 
GO
ALTER DATABASE [QLTC] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QLTC] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QLTC] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QLTC] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QLTC] SET ARITHABORT OFF 
GO
ALTER DATABASE [QLTC] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QLTC] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QLTC] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QLTC] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QLTC] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QLTC] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QLTC] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QLTC] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QLTC] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QLTC] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QLTC] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QLTC] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QLTC] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QLTC] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QLTC] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QLTC] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QLTC] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QLTC] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QLTC] SET  MULTI_USER 
GO
ALTER DATABASE [QLTC] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QLTC] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QLTC] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QLTC] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [QLTC] SET DELAYED_DURABILITY = DISABLED 
GO
USE [QLTC]
GO
/****** Object:  Table [dbo].[CongNo]    Script Date: 2018-05-26 21:00:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CongNo](
	[IDCongNo] [int] IDENTITY(1,1) NOT NULL,
	[IDQuy] [int] NULL,
	[MucDich] [nvarchar](500) NULL,
	[CreateTime] [datetime] NULL,
	[LaiSuat] [float] NULL,
	[MaSoThue] [nvarchar](50) NULL,
	[NgayTra] [date] NULL,
	[CreateBy] [int] NULL,
	[Note] [nvarchar](500) NULL,
	[MaCongNo] [nvarchar](50) NULL,
	[State] [tinyint] NULL,
	[IDKhoanVay] [int] NULL,
	[SoTien] [decimal](18, 0) NULL,
	[Payed] [decimal](18, 0) NULL,
	[ConNo] [decimal](18, 0) NULL,
 CONSTRAINT [PK_VayNo] PRIMARY KEY CLUSTERED 
(
	[IDCongNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CTTamUng]    Script Date: 2018-05-26 21:00:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTTamUng](
	[IDCTTamUng] [int] IDENTITY(1,1) NOT NULL,
	[IDTamUng] [int] NULL,
	[SoTien] [decimal](18, 0) NULL,
	[CreateTime] [datetime] NULL,
	[CreateBy] [int] NULL,
	[State] [tinyint] NULL,
	[Note] [nvarchar](max) NULL,
 CONSTRAINT [PK_CTTamUng] PRIMARY KEY CLUSTERED 
(
	[IDCTTamUng] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Quy]    Script Date: 2018-05-26 21:00:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Quy](
	[IDQuy] [int] IDENTITY(1,1) NOT NULL,
	[TenQuy] [nvarchar](500) NULL,
	[Money] [decimal](18, 0) NULL,
	[Info] [nvarchar](500) NULL,
	[MaQuy] [nvarchar](50) NULL,
	[State] [tinyint] NULL,
	[CreateBy] [int] NULL,
	[CreateTime] [datetime] NULL,
 CONSTRAINT [PK_Quy] PRIMARY KEY CLUSTERED 
(
	[IDQuy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 2018-05-26 21:00:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[IDTaiKhoan] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[Avatar] [nvarchar](500) NULL,
	[FullName] [nvarchar](50) NULL,
	[Birthday] [date] NULL,
	[Adress] [nvarchar](50) NULL,
	[Phone] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[POSITION] [nvarchar](50) NULL,
	[Description] [nvarchar](max) NULL,
	[Active] [bit] NULL,
 CONSTRAINT [PK_Account_1] PRIMARY KEY CLUSTERED 
(
	[IDTaiKhoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TamUng]    Script Date: 2018-05-26 21:00:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TamUng](
	[IDTamUng] [int] IDENTITY(1,1) NOT NULL,
	[MST] [nvarchar](50) NULL,
	[SoTienDaUng] [decimal](18, 0) NULL,
	[HanThanhToan] [date] NULL,
	[CreateTime] [datetime] NULL,
	[CreateBy] [int] NULL,
	[Note] [nvarchar](50) NULL,
	[IDQuy] [int] NULL,
	[Total] [decimal](18, 0) NULL,
	[MaTamUng] [nvarchar](50) NULL,
	[State] [tinyint] NULL,
 CONSTRAINT [PK_TamUng] PRIMARY KEY CLUSTERED 
(
	[IDTamUng] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ThanhToan]    Script Date: 2018-05-26 21:00:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThanhToan](
	[IDThanhToan] [int] IDENTITY(1,1) NOT NULL,
	[IDCongNo] [int] NULL,
	[SoTienTra] [decimal](18, 0) NULL,
	[CreateBy] [int] NULL,
	[CreateTime] [datetime] NULL,
	[Note] [nvarchar](500) NULL,
	[State] [tinyint] NULL,
 CONSTRAINT [PK_CTCongNo] PRIMARY KEY CLUSTERED 
(
	[IDThanhToan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ThuChi]    Script Date: 2018-05-26 21:00:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThuChi](
	[IDThuChi] [int] IDENTITY(1,1) NOT NULL,
	[IDQuy] [int] NULL,
	[MucDich] [nvarchar](500) NULL,
	[SoTien] [decimal](18, 0) NULL,
	[CreateTime] [datetime] NULL,
	[CreateBy] [int] NULL,
	[Note] [nvarchar](500) NULL,
	[MaThuChi] [nvarchar](50) NULL,
	[State] [tinyint] NULL,
 CONSTRAINT [PK_ThuChi] PRIMARY KEY CLUSTERED 
(
	[IDThuChi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Quy] ON 

INSERT [dbo].[Quy] ([IDQuy], [TenQuy], [Money], [Info], [MaQuy], [State], [CreateBy], [CreateTime]) VALUES (1010, N'BIDV', CAST(5000000000 AS Decimal(18, 0)), NULL, N'BIDV', 1, 6, CAST(N'2018-01-01 00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Quy] OFF
SET IDENTITY_INSERT [dbo].[TaiKhoan] ON 

INSERT [dbo].[TaiKhoan] ([IDTaiKhoan], [Username], [Password], [Avatar], [FullName], [Birthday], [Adress], [Phone], [Email], [POSITION], [Description], [Active]) VALUES (6, N'admin', N'admin', NULL, N'admin', NULL, NULL, NULL, NULL, N'ADMIN', NULL, 1)
SET IDENTITY_INSERT [dbo].[TaiKhoan] OFF
ALTER TABLE [dbo].[CongNo]  WITH CHECK ADD  CONSTRAINT [FK_CongNo_TaiKhoan] FOREIGN KEY([CreateBy])
REFERENCES [dbo].[TaiKhoan] ([IDTaiKhoan])
GO
ALTER TABLE [dbo].[CongNo] CHECK CONSTRAINT [FK_CongNo_TaiKhoan]
GO
ALTER TABLE [dbo].[CongNo]  WITH CHECK ADD  CONSTRAINT [FK_VayNo_Quy] FOREIGN KEY([IDQuy])
REFERENCES [dbo].[Quy] ([IDQuy])
GO
ALTER TABLE [dbo].[CongNo] CHECK CONSTRAINT [FK_VayNo_Quy]
GO
ALTER TABLE [dbo].[CTTamUng]  WITH CHECK ADD  CONSTRAINT [FK_CTTamUng_TamUng] FOREIGN KEY([IDTamUng])
REFERENCES [dbo].[TamUng] ([IDTamUng])
GO
ALTER TABLE [dbo].[CTTamUng] CHECK CONSTRAINT [FK_CTTamUng_TamUng]
GO
ALTER TABLE [dbo].[Quy]  WITH CHECK ADD  CONSTRAINT [FK_Quy_TaiKhoan] FOREIGN KEY([CreateBy])
REFERENCES [dbo].[TaiKhoan] ([IDTaiKhoan])
GO
ALTER TABLE [dbo].[Quy] CHECK CONSTRAINT [FK_Quy_TaiKhoan]
GO
ALTER TABLE [dbo].[TamUng]  WITH CHECK ADD  CONSTRAINT [FK_TamUng_Quy] FOREIGN KEY([IDQuy])
REFERENCES [dbo].[Quy] ([IDQuy])
GO
ALTER TABLE [dbo].[TamUng] CHECK CONSTRAINT [FK_TamUng_Quy]
GO
ALTER TABLE [dbo].[TamUng]  WITH CHECK ADD  CONSTRAINT [FK_TamUng_TaiKhoan] FOREIGN KEY([CreateBy])
REFERENCES [dbo].[TaiKhoan] ([IDTaiKhoan])
GO
ALTER TABLE [dbo].[TamUng] CHECK CONSTRAINT [FK_TamUng_TaiKhoan]
GO
ALTER TABLE [dbo].[ThanhToan]  WITH CHECK ADD  CONSTRAINT [FK_CTCongNo_CongNo] FOREIGN KEY([IDCongNo])
REFERENCES [dbo].[CongNo] ([IDCongNo])
GO
ALTER TABLE [dbo].[ThanhToan] CHECK CONSTRAINT [FK_CTCongNo_CongNo]
GO
ALTER TABLE [dbo].[ThanhToan]  WITH CHECK ADD  CONSTRAINT [FK_ThanhToan_TaiKhoan] FOREIGN KEY([CreateBy])
REFERENCES [dbo].[TaiKhoan] ([IDTaiKhoan])
GO
ALTER TABLE [dbo].[ThanhToan] CHECK CONSTRAINT [FK_ThanhToan_TaiKhoan]
GO
ALTER TABLE [dbo].[ThuChi]  WITH CHECK ADD  CONSTRAINT [FK_ThuChi_Account] FOREIGN KEY([CreateBy])
REFERENCES [dbo].[TaiKhoan] ([IDTaiKhoan])
GO
ALTER TABLE [dbo].[ThuChi] CHECK CONSTRAINT [FK_ThuChi_Account]
GO
ALTER TABLE [dbo].[ThuChi]  WITH CHECK ADD  CONSTRAINT [FK_ThuChi_Quy] FOREIGN KEY([IDQuy])
REFERENCES [dbo].[Quy] ([IDQuy])
GO
ALTER TABLE [dbo].[ThuChi] CHECK CONSTRAINT [FK_ThuChi_Quy]
GO
USE [master]
GO
ALTER DATABASE [QLTC] SET  READ_WRITE 
GO
