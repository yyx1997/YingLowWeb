USE [YingLouWeb]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 2019/5/15 23:54:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Apwd] [nvarchar](50) NULL,
	[Aname] [nvarchar](50) NULL,
 CONSTRAINT [PK_Admin] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Comment]    Script Date: 2019/5/15 23:54:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comment](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NULL,
	[UserName] [nvarchar](50) NULL,
	[GoodsId] [int] NULL,
	[Titles] [nvarchar](500) NULL,
	[Addtime] [datetime] NULL,
 CONSTRAINT [PK_Comment] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 2019/5/15 23:54:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Tel] [nvarchar](50) NULL,
	[Emal] [nvarchar](50) NULL,
	[Job] [nvarchar](50) NULL,
	[Photo] [nvarchar](50) NULL,
	[Ds] [text] NULL,
	[click] [int] NULL,
	[LoginName] [nvarchar](50) NULL,
	[LoginPwd] [nvarchar](50) NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Infotype]    Script Date: 2019/5/15 23:54:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Infotype](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Infotype] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[liuyan]    Script Date: 2019/5/15 23:54:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[liuyan](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[email] [nvarchar](50) NULL,
	[younet] [nvarchar](50) NULL,
	[qq] [nvarchar](15) NULL,
	[content] [nvarchar](1000) NULL,
	[biaoqing] [nvarchar](50) NULL,
	[touxiang] [nvarchar](50) NULL,
	[addTime] [datetime] NULL,
	[huifu] [nvarchar](200) NULL,
 CONSTRAINT [PK_liuyan] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Member]    Script Date: 2019/5/15 23:54:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Member](
	[MemberID] [bigint] IDENTITY(1,1) NOT NULL,
	[MemberName] [varchar](50) NULL,
	[MemberSex] [char](10) NULL,
	[MemberPWD] [varchar](20) NULL,
	[MemberTName] [varchar](20) NULL,
	[MemberPhone] [varchar](20) NULL,
	[MemberEmail] [varchar](50) NULL,
	[MemberCity] [varchar](20) NULL,
	[MemberAddress] [varchar](50) NULL,
	[MemberPostCode] [char](10) NULL,
	[MemberDate] [datetime] NULL,
	[MemberMoney] [float] NULL,
	[MemberWenTi] [nvarchar](50) NULL,
	[MemberDaAn] [nvarchar](50) NULL,
 CONSTRAINT [PK_Member] PRIMARY KEY CLUSTERED 
(
	[MemberID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[News]    Script Date: 2019/5/15 23:54:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[News](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[content] [text] NULL,
	[typeid] [int] NULL,
	[TypeName] [nvarchar](50) NULL,
	[Addtime] [datetime] NULL,
 CONSTRAINT [PK_News] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SheYing]    Script Date: 2019/5/15 23:54:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SheYing](
	[GoodsID] [int] IDENTITY(1,1) NOT NULL,
	[GoodsName] [nvarchar](50) NULL,
	[GoodsTypeID] [int] NULL,
	[GoodsTypeName] [nvarchar](50) NULL,
	[GoodsClick] [int] NULL,
	[GoodsNum] [int] NULL,
	[GoodsPhoto] [nvarchar](50) NULL,
	[GoodsPrice] [float] NULL,
	[GoodsIntroduce] [text] NULL,
	[GoodsDate] [datetime] NULL,
	[GoodsSpecial] [nvarchar](10) NULL,
	[goodsSealNum] [nchar](10) NULL,
	[GoodswholesalePrice] [float] NULL,
	[GoodsCostPrice] [float] NULL,
	[Suppliers] [nvarchar](50) NULL,
 CONSTRAINT [PK_Furniture] PRIMARY KEY CLUSTERED 
(
	[GoodsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SheYingtype]    Script Date: 2019/5/15 23:54:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SheYingtype](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Furnituretype] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_Order]    Script Date: 2019/5/15 23:54:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Order](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Orderid] [nvarchar](50) NULL,
	[Ordeuser] [nvarchar](50) NULL,
	[Ordertime] [datetime] NULL,
	[IsCheckout] [nvarchar](50) NULL,
	[OrderStite] [nvarchar](50) NULL,
	[SheYingShiName] [nvarchar](50) NULL,
	[SheYingShiId] [int] NULL,
	[DingDanTime] [varchar](50) NULL,
 CONSTRAINT [PK_tb_Order] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_OrderInfo]    Script Date: 2019/5/15 23:54:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_OrderInfo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[OrderID] [nvarchar](50) NOT NULL,
	[OrderMember] [varchar](50) NULL,
	[GoodsID] [bigint] NULL,
	[GoodsName] [varchar](50) NULL,
	[GoodsTypeID] [bigint] NULL,
	[GoodsTypeName] [varchar](50) NULL,
	[GoodsPrice] [bigint] NULL,
	[IsCheckout] [char](10) NULL,
	[OrderDate] [datetime] NULL,
	[shuliang] [int] NULL,
 CONSTRAINT [PK_tb_OrderInfo] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vb_OrderInfo]    Script Date: 2019/5/15 23:54:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vb_OrderInfo]
AS
SELECT     dbo.Member.MemberName, dbo.tb_OrderInfo.OrderID, dbo.tb_OrderInfo.GoodsID, dbo.tb_OrderInfo.GoodsName, dbo.tb_OrderInfo.GoodsTypeID, 
                      dbo.tb_OrderInfo.GoodsTypeName, dbo.tb_OrderInfo.GoodsPrice, dbo.tb_OrderInfo.IsCheckout, dbo.tb_OrderInfo.OrderDate, dbo.tb_OrderInfo.shuliang, 
                      dbo.tb_Order.Ordeuser, dbo.tb_Order.Ordertime, dbo.tb_Order.OrderStite, dbo.tb_OrderInfo.OrderMember, dbo.tb_Order.id, dbo.SheYing.GoodsCostPrice, 
                      dbo.tb_Order.SheYingShiName, dbo.tb_Order.SheYingShiId
FROM         dbo.tb_OrderInfo INNER JOIN
                      dbo.Member ON dbo.tb_OrderInfo.OrderMember = dbo.Member.MemberName INNER JOIN
                      dbo.tb_Order ON dbo.tb_OrderInfo.OrderID = dbo.tb_Order.Orderid INNER JOIN
                      dbo.SheYing ON dbo.tb_OrderInfo.GoodsID = dbo.SheYing.GoodsID
GO
ALTER TABLE [dbo].[Comment] ADD  CONSTRAINT [DF_Comment_Addtime]  DEFAULT (getdate()) FOR [Addtime]
GO
ALTER TABLE [dbo].[Employee] ADD  CONSTRAINT [DF_Employee_click]  DEFAULT ((0)) FOR [click]
GO
ALTER TABLE [dbo].[liuyan] ADD  CONSTRAINT [DF_liuyan_addTime]  DEFAULT (getdate()) FOR [addTime]
GO
ALTER TABLE [dbo].[Member] ADD  CONSTRAINT [DF_Member_MemberDate]  DEFAULT (getdate()) FOR [MemberDate]
GO
ALTER TABLE [dbo].[Member] ADD  CONSTRAINT [DF_Member_MemberMoney]  DEFAULT ((0)) FOR [MemberMoney]
GO
ALTER TABLE [dbo].[News] ADD  CONSTRAINT [DF_News_Addtime]  DEFAULT (getdate()) FOR [Addtime]
GO
ALTER TABLE [dbo].[SheYing] ADD  CONSTRAINT [DF_SheYing_GoodsClick]  DEFAULT ((0)) FOR [GoodsClick]
GO
ALTER TABLE [dbo].[SheYing] ADD  CONSTRAINT [DF_Furniture_GoodsDate]  DEFAULT (getdate()) FOR [GoodsDate]
GO
ALTER TABLE [dbo].[SheYing] ADD  CONSTRAINT [DF_SheYing_GoodsSpecial]  DEFAULT (N'否') FOR [GoodsSpecial]
GO
ALTER TABLE [dbo].[SheYing] ADD  CONSTRAINT [DF_SheYing_goodsSealNum]  DEFAULT ((0)) FOR [goodsSealNum]
GO
ALTER TABLE [dbo].[SheYing] ADD  CONSTRAINT [DF_SheYing_GoodswholesalePrice]  DEFAULT ((0)) FOR [GoodswholesalePrice]
GO
ALTER TABLE [dbo].[tb_Order] ADD  CONSTRAINT [DF_tb_Order_Ordertime]  DEFAULT (getdate()) FOR [Ordertime]
GO
ALTER TABLE [dbo].[tb_Order] ADD  CONSTRAINT [DF_tb_Order_IsCheckout]  DEFAULT (N'否') FOR [IsCheckout]
GO
ALTER TABLE [dbo].[tb_OrderInfo] ADD  CONSTRAINT [DF_tb_OrderInfo_IsCheckout]  DEFAULT ('否') FOR [IsCheckout]
GO
ALTER TABLE [dbo].[tb_OrderInfo] ADD  CONSTRAINT [DF_tb_OrderInfo_OrderDate]  DEFAULT (getdate()) FOR [OrderDate]
GO
ALTER TABLE [dbo].[tb_OrderInfo] ADD  CONSTRAINT [DF_tb_OrderInfo_shuliang]  DEFAULT ((1)) FOR [shuliang]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'销售数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SheYing', @level2type=N'COLUMN',@level2name=N'goodsSealNum'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[50] 2[4] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "tb_OrderInfo"
            Begin Extent = 
               Top = 0
               Left = 302
               Bottom = 265
               Right = 472
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Member"
            Begin Extent = 
               Top = 0
               Left = 21
               Bottom = 211
               Right = 194
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tb_Order"
            Begin Extent = 
               Top = 0
               Left = 505
               Bottom = 196
               Right = 662
            End
            DisplayFlags = 280
            TopColumn = 2
         End
         Begin Table = "SheYing"
            Begin Extent = 
               Top = 38
               Left = 744
               Bottom = 256
               Right = 933
            End
            DisplayFlags = 280
            TopColumn = 3
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 26
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vb_OrderInfo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 3435
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vb_OrderInfo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vb_OrderInfo'
GO
