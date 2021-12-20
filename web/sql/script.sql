/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 * Author:  Hieu Mau
 * Created: Jun 12, 2021
 */

USE [master]
GO
/****** Object:  Database [DigitalNews]    Script Date: 12-Jun-21 20:48:46 ******/
CREATE DATABASE [DigitalNews]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DigitalNews', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\DigitalNews.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DigitalNews_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\DigitalNews_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [DigitalNews] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DigitalNews].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DigitalNews] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DigitalNews] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DigitalNews] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DigitalNews] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DigitalNews] SET ARITHABORT OFF 
GO
ALTER DATABASE [DigitalNews] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DigitalNews] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DigitalNews] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DigitalNews] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DigitalNews] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DigitalNews] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DigitalNews] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DigitalNews] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DigitalNews] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DigitalNews] SET  ENABLE_BROKER 
GO
ALTER DATABASE [DigitalNews] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DigitalNews] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DigitalNews] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DigitalNews] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DigitalNews] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DigitalNews] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DigitalNews] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DigitalNews] SET RECOVERY FULL 
GO
ALTER DATABASE [DigitalNews] SET  MULTI_USER 
GO
ALTER DATABASE [DigitalNews] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DigitalNews] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DigitalNews] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DigitalNews] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DigitalNews] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DigitalNews] SET QUERY_STORE = OFF
GO
USE [DigitalNews]
GO
/****** Object:  Table [dbo].[News]    Script Date: 12-Jun-21 20:48:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[News](
	[id] [int] NULL,
	[title] [varchar](max) NULL,
	[description] [varchar](max) NULL,
	[shortDes] [varchar](max) NULL,
	[image] [varchar](max) NULL,
	[author] [varchar](max) NULL,
	[publishDate] [date] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[News] ([id], [title], [description], [shortDes], [image], [author], [publishDate]) VALUES (1, N'The World Health Organization (WHO) said the epidemic in China reached its peak from January 23 to February 2 and the number of cases has gradually decreased', N'The number of new cases of global nCoV increased to 80,088, of which 2,699 died, an increase of 80 from the previous day.

The National Health Commission of China (NHC) today announced it recorded 71 more deaths from nCoV, the lowest figure in the past two weeks, bringing the total number of deaths in mainland China to 2,663. The NHC also reported an additional 508 new cases, with just 9 cases outside the Hubei epidemic center, bringing the total number of cases in mainland China to 77,658.

Many Chinese provinces have not seen new cases in the past few days. The World Health Organization (WHO) said the epidemic in China reached its peak from January 23 to February 2 and the number of cases has gradually decreased.

Meanwhile, the number of nCoV infections in South Korea and Italy has increased sharply in the past 24 hours. South Korea currently records 833 cases, of which 8 have died, while Italy has 229 cases, making the two countries the second and fourth largest outbreak in the world, after mainland China and yachts. Diamond Princess.

', N'The world currently records 80,088 infections, 2,699 deaths and 27,571 people have been cured. The United States has 53 cases of nCoV infection nationwide, but President Donald Trump asserts that the country is well controlling the disease.', N'covid19.png', N'Digital News Asia', CAST(N'2020-02-24' AS Date))
INSERT [dbo].[News] ([id], [title], [description], [shortDes], [image], [author], [publishDate]) VALUES (2, N' The hospital said he was immediately transferred to a quarantine room during a critical time', N'One Mongolian patient died during isolation on Covid-19 treatment in South Korea, bringing the country deaths to 11. 

The 35-year-old Mongolian man was taken to Myongji Hospital in Gyeonggi Province, southern Korea yesterday due to esophageal hemorrhage, which was later confirmed positive for nCoV. This patient also had cirrhosis and end-stage renal failure. 

The hospital said he was immediately transferred to a quarantine room during a critical time. Today, his heart twice stopped suddenly but then revived thanks to CPR.
The patient wife and sister agree not to use CPR in case he continues to have cardiac arrest. At about 17h50, the patient died, becoming the first foreigner to die of nCoV in Korea.

According to doctors at Myongji Hospital, Mongolian patients are more likely to die from pre-existing conditions. He arrived in South Korea on February 12 for a liver transplant and treated at Seoul National University Hospital until February 18. 

The case increased the number of people with Covid-19 in South Korea to 11. 
', N'The country now records nearly 1,000 cases , of which 80% come from Daegu City and North Gyeongsang Province, becoming the second largest outbreak. the world after mainland China.  ', N'72829_Covid21.jpg', N'Digital News Asia', CAST(N'2020-02-25' AS Date))
INSERT [dbo].[News] ([id], [title], [description], [shortDes], [image], [author], [publishDate]) VALUES (3, N'The team has already won as many games as Arsenals Invincible side from the 2003-2004 season and equaled its own all-time English', N'Liverpool was certainly not as its pulsating best but showed hallmarks of a champion by finding a way to win.

Pablo Fornals had given West Ham a surprise second-half lead after Georginio Wijnaldum opening goal was canceled out by Issa Diop header. But the Reds rallied to stage a predictable recovery.

However, in truth, the hosts benefited from a goalkeeping error that allowed Mohamed Salah to draw level before Sadio Mane tapped in the winner from yet another cross from Trent Alexander-Arnold.

With two assists on the night, the 21-year-old full-back became the third youngest player to reach 25 EPL assists, behind only Wayne Rooney and Cesc Fabregas.

Liverpool is now 22 points clear at the top of the table and needs just four more wins to clinch its first domestic title since 1990.

The team has already won as many games as Arsenals Invincible side from the 2003-2004 season and equaled its own all-time English record of 21 home league wins, set by the Reds in 1972.

"Could I have wished for a better position to go into these last 11 games? No, I would never have thought it was possible, but each one of them is really difficult and we respect that a lot," added Klopp, who passionately celebrated his sides latest victory

Liverpool faces Watford on Saturday before traveling to Chelsea in the FA Cup fifth round next Tuesday.

With the league all but wrapped up, Klopp attention may well switch to defending the club Champions League crown.

', N'The reigning champion trails Atletico Madrid 1-0 after the first leg of their round of 16 tie and has it all to do when hosting its Spanish opponents on March 11.', N'Commerce.png', N'Digital News Asia', CAST(N'2020-02-23' AS Date))
INSERT [dbo].[News] ([id], [title], [description], [shortDes], [image], [author], [publishDate]) VALUES (6, N'With the majority of Bumiputeras, especially in the non-urban population, selling through the agent business model, BizApp currently has over 200,000 agents with a gross merchandise volume (GMV) of over US$144.7 million (RM600 million) transacted in 2019', N'At daybreak on the shores of the island nation of São Tomé e Príncipe, Sunny Dolat transformed into a high priest. Before an intimate audience at the 2019 N gola Biennial of Arts and Culture, and joined by 46 models, the Kenyan creative director and fashion curator led "In Their Finest Robes, The Children Shall Return," a healing ritual and fashion intervention.

Dressed in a fiery red outfit by Ghanaian designer Larry Jay, a cowrie shell headpiece by Ivorian designer. Lafalaise Dion and an elaborate feather neckpiece sourced from a market in Marrakech, Dolat moved slowly between land and sea. 
', N'Reciting an absolution in Swahili, he sought reconciliation between the past and present violations of slavery, and safe passage for returnees residing in the diaspora.', N'BuySolar.png', N'Infrastructure Digital', CAST(N'2020-02-01' AS Date))
INSERT [dbo].[News] ([id], [title], [description], [shortDes], [image], [author], [publishDate]) VALUES (4, N'The platform provides end-to-end solar installation services, which includes cost estimations, solar installer selections, standardised quotation, online monitoring of maintenance and after sales services', N'Malaysia is a sunny country. Barring a few rainy seasons, the nation has relatively high irradiation levels, which makes for a good spot to harness solar energy. Yet there are barriers in place that deter both consumers and businesses from setting up their own solar panels on their rooftops.

Cost is an issue, which makes it hard for people to justify spending thousands to save on electricity. There’s also the problem with financing – where do you get them? What financial institution offers them? More crucially, how does one get around to find the right solar provider to get things set up?

buySolar aims to solve all that. Created by OpenSys Technologies Sdn Bhd (a subsidiary of OpenSys Bhd), buySolar positions itself as Malaysia’s first “one-stop online marketplace”, with the goal of providing consumers and businesses a platform to get the solar products and services needed under one roof.

It goes beyond serving as a marketplace for solar products. The platform provides end-to-end solar installation services, which includes cost estimations, solar installer selections, standardised quotation, online monitoring of maintenance and after sales services.

On top of that are financing options available to customers, not to mention features allowing users to track their solar-harnessing progress. There’s even a built-in chat to allow end-users to speak to solar providers directly.

Platform provides end-to-end installation services, cost estimations, maintenance

', N'Addresses financing and information gap in solar energy harnessing, partnering TNB', N'Benjamin.png', N'Digitals News Vehicles', CAST(N'2018-06-29' AS Date))
INSERT [dbo].[News] ([id], [title], [description], [shortDes], [image], [author], [publishDate]) VALUES (5, N'Asia’s e-commerce ecosystem (see infographic below), this social commerce platform is expected to bridge the urban-rural entrepreneurial divide in Malaysia', N'When announcing Commerce.Asia Venture Sdn Bhd’s latest strategic investment in Bizapp on February 17, Malaysia’s largest rural social commerce platform, Ganesh Kumar Bangah had only praises to sing about the latter calling it “Malaysia’s hidden gem”. In his speech, the founder and executive chairman of Commerce.Asia, who also successfully listed his previous startup, MOL Global on the Nadsaq in 2014, pointed out that BizApp had yet to receive external investment prior to this partnership, and its success was still relatively unknown to the corporate sector.

BizApp was launched in 2017 when founders Hasnol Mizam Hashim and Mohd Taib Pardi recognised the need for a systematic, technological solution to serve agent-based businesses in Malaysia. It was a problem they were facing themselves in 2016 as social sellers.

With the majority of Bumiputeras, especially in the non-urban population, selling through the agent business model, BizApp currently has over 200,000 agents with a gross merchandise volume (GMV) of over US$144.7 million (RM600 million) transacted in 2019. Complemented with Commerce.Asia’s e-commerce ecosystem (see infographic below), this social commerce platform is expected to bridge the urban-rural entrepreneurial divide in Malaysia.

Being among the world’s most active social media users, it is no surprise that social media platforms have become shopping venues as well, contributing to the increasing popularity of the agent system as a business model in Malaysia, which in turn has led to the mushrooming of stockists, basic agents and dropship agents. This new supply-to-business-to-customer (S2B2C) model gives unparalleled accessibility to the social media savvy, improving the efficacy of ads for businesses and streamlining the buying process for customers.', N'Investment of 7-figure sum to overcome disparity between urban & rural entrepreneurs

Commerce.Asia ecosystem now has a database of over 8 million SMEs across 7 countries', N'KiplePay.png', N'Kiran Kaur Sidhu', CAST(N'2020-02-05' AS Date))
INSERT [dbo].[News] ([id], [title], [description], [shortDes], [image], [author], [publishDate]) VALUES (7, N'Dressed in a fiery red outfit by Ghanaian designer Larry Jay, a cowrie shell headpiece by Ivorian designer', N'No sooner had her recent farewell email gone out, announcing her departure from Cradle Fund Sdn Bhd after a five year stint, that Scaleup Malaysia moved fast to announce that Xelia Tong has joined the growth accelerator as Managing Partner joining Managing Partners Tay Shan Li and Andre Sequerah, Senior Partners, Dr V Sivapalan and Renuka Sena and General Partner, Aaron Sarma.

“We are truly honoured to have someone of Xelia’s caliber join our team. Her understanding of the Malaysian ecosystem of startups and investors will be a truly valuable addition to our team,” says Sivapalan.

According to Sarma, Xelia and the partners at ScaleUp Malaysia have known each other for many years and when they heard that she was leaving Cradle, “we certainly saw an opportunity to collaborate with her, hence bringing her into the team,” he says.

Xelias area of responsibility would be to head up investor relations for ScaleUp Malaysia and focus on helping companies in the cohort secure investments and strategic partnerships. While the current cohort in ScaleUp Malaysia are Malaysian companies, this could change in future cohorts. “However, Xelia’s role would be to set up partnerships and investments for our companies regardless of where these opportunities come from,” explains Sarma.

Xelia will also develop and execute commercial strategies for ScaleUp Malaysia, the latest accelerator launched in Malaysia last year, and its cohort of companies.', N'Focus on helping companies in cohort secure investments & strategic partnerships
Come April, 10 companies cohort will receive an investment of US$48,273 each from', N'festival.jpg', N'Karamjit Singh', CAST(N'2020-02-22' AS Date))
USE [master]
GO
ALTER DATABASE [DigitalNews] SET  READ_WRITE 
GO
