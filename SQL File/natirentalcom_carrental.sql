-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 03, 2023 at 06:52 AM
-- Server version: 10.5.18-MariaDB-cll-lve
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `natirentalcom_carrental`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', '5c428d8875d2948607f3e3fe134d71b4', '2017-06-18 12:22:38');

-- --------------------------------------------------------

--
-- Table structure for table `tblbooking`
--

CREATE TABLE `tblbooking` (
  `id` int(11) NOT NULL,
  `BookingNumber` bigint(12) DEFAULT NULL,
  `userEmail` varchar(100) DEFAULT NULL,
  `VehicleId` int(11) DEFAULT NULL,
  `FromDate` varchar(20) DEFAULT NULL,
  `ToDate` varchar(20) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `Status` int(11) DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `LastUpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblbooking`
--

INSERT INTO `tblbooking` (`id`, `BookingNumber`, `userEmail`, `VehicleId`, `FromDate`, `ToDate`, `message`, `Status`, `PostingDate`, `LastUpdationDate`) VALUES
(1, 123456789, 'test@gmail.com', 1, '2020-07-07', '2020-07-09', 'What  is the cost?', 1, '2020-07-07 14:03:09', NULL),
(2, 987456321, 'test@gmail.com', 4, '2020-07-19', '2020-07-24', 'hfghg', 1, '2020-07-09 17:49:21', '2020-07-11 12:20:57');

-- --------------------------------------------------------

--
-- Table structure for table `tblbrands`
--

CREATE TABLE `tblbrands` (
  `id` int(11) NOT NULL,
  `BrandName` varchar(120) NOT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblbrands`
--

INSERT INTO `tblbrands` (`id`, `BrandName`, `CreationDate`, `UpdationDate`) VALUES
(1, 'SUZUKI ', '2017-06-18 16:24:34', '2023-01-02 06:25:52'),
(2, 'MITSUBISHI', '2017-06-18 16:24:50', '2023-01-02 06:26:10'),
(3, 'PEUGEOT', '2017-06-18 16:25:03', '2023-01-02 06:26:36'),
(4, 'NISSAN', '2017-06-18 16:25:13', '2023-01-02 06:26:50'),
(5, 'TOYOTA', '2017-06-18 16:25:24', '2023-01-02 06:27:03'),
(7, 'HYUNDAI', '2017-06-19 06:22:13', '2023-01-02 06:25:29'),
(8, 'CHEVROLET ', '2023-01-02 06:27:35', NULL),
(9, 'GMC', '2023-01-02 06:27:50', NULL),
(10, 'FORD', '2023-01-02 06:27:58', NULL),
(11, 'HONDA', '2023-01-02 06:28:06', NULL),
(12, 'JEEP', '2023-01-02 06:28:13', NULL),
(13, 'BESTUNE', '2023-01-02 06:28:25', NULL),
(14, 'JETOUR', '2023-01-02 06:28:53', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusinfo`
--

CREATE TABLE `tblcontactusinfo` (
  `id` int(11) NOT NULL,
  `Address` tinytext DEFAULT NULL,
  `EmailId` varchar(255) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblcontactusinfo`
--

INSERT INTO `tblcontactusinfo` (`id`, `Address`, `EmailId`, `ContactNo`) VALUES
(1, 'Meskel Flower, Addis Ababa, Ethiopia', 'nati@natirental.com', '0912396760');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusquery`
--

CREATE TABLE `tblcontactusquery` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `EmailId` varchar(120) DEFAULT NULL,
  `ContactNumber` char(11) DEFAULT NULL,
  `Message` longtext DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblcontactusquery`
--

INSERT INTO `tblcontactusquery` (`id`, `name`, `EmailId`, `ContactNumber`, `Message`, `PostingDate`, `status`) VALUES
(1, 'Kunal ', 'kunal@gmail.com', '7977779798', 'I want to know you brach in Chandigarh?', '2020-07-07 09:34:51', 1),
(2, 'dagmawi', 'dagimadefris12@gmail.com', '0912050046', 'hello i need to rent car ', '2023-01-02 05:34:04', 1),
(3, 'Dagmawi Adefres Demeke', 'dagimadefris12@gmail.com', '0912808387', 'hello', '2023-01-02 14:12:05', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `PageName` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL DEFAULT '',
  `detail` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `PageName`, `type`, `detail`) VALUES
(1, 'Terms and Conditions', 'terms', '										<p align=\"justify\" style=\"font-size: 14px;\"><font size=\"2\"><strong><font color=\"#990000\">(1) ACCEPTANCE OF TERMS</font><br></strong></font><span style=\"color: rgb(52, 52, 52); font-family: Arial, Helvetica, sans-serif;\">1. Under these Terms and Conditions and the subsidiary rules of these Terms and Conditions prescribed pursuant to Article 40 (hereinafter referred to collectively as \"Terms and Conditions, etc.\"), the Company shall rent a motor vehicle (hereinafter referred to as \"Rental Vehicle\") to the Renter, and the Renter shall rent such Rental Vehicle from the Company upon understanding and agreeing to the Terms and Conditions, etc. If the Renter designates a driver who is not the Renter pursuant to Article 8.3, the Renter shall make known the provisions in the Terms and Conditions, etc. which relate to such driver and cause such driver to comply with such provisions. Particulars not provided in the Terms and Conditions, etc. shall be construed in accordance with the subsidiary rules provided in laws, regulations and general customs.</span><font size=\"2\"><strong><br></strong></font></p><p class=\"drop\" style=\"margin-bottom: 10px; font-size: 14px; padding: 0px 0px 0px 1.1em; line-height: 1.7em; text-indent: -1.1em; color: rgb(52, 52, 52); font-family: Arial, Helvetica, sans-serif;\">2. The Company may enter into any special contract, provided that it is not contrary to the purport of the Terms and Conditions, etc., the laws, the administrative notices, and general customs. In the event special contracts are entered into, such special contracts shall prevail over the Terms and Conditions, etc...</p>\r\n										'),
(2, 'Privacy Policy', 'privacy', '<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat</span>'),
(3, 'About Us ', 'aboutus', '<div><div style=\"color: rgb(85, 85, 85); font-family: Lato, sans-serif; text-align: center;\"><span style=\"color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 13.3333px;\">We are a full-service car rental company in Addis Ababa, Ethiopia, offering car rental service with fair prices for your business or leisure travel in Ethiopia.</span></div><div style=\"color: rgb(85, 85, 85); font-family: Lato, sans-serif; text-align: center;\"><span style=\"color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 13.3333px;\"><br></span></div><div style=\"color: rgb(85, 85, 85); font-family: Lato, sans-serif; text-align: justify;\"><span style=\"color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 13.3333px;\">Our car rental company strives to give our clients with convenient and economical transportation options, as well as high-quality automobiles and great customer service. We are dedicated to make our clients\' automobile rental experience as simple and pleasurable as possible, so they can focus on their plans and activities rather than transportation.</span></div></div>\r\n										'),
(11, 'FAQs', 'faqs', '																														<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Address------Test &nbsp; &nbsp;dsfdsfds</span>');

-- --------------------------------------------------------

--
-- Table structure for table `tblsubscribers`
--

CREATE TABLE `tblsubscribers` (
  `id` int(11) NOT NULL,
  `SubscriberEmail` varchar(120) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblsubscribers`
--

INSERT INTO `tblsubscribers` (`id`, `SubscriberEmail`, `PostingDate`) VALUES
(6, 'ashenafigidi777@gmail.com', '2023-01-02 14:52:45'),
(7, 'rasfitsum86@gmail.com', '2023-01-02 14:54:13');

-- --------------------------------------------------------

--
-- Table structure for table `tbltestimonial`
--

CREATE TABLE `tbltestimonial` (
  `id` int(11) NOT NULL,
  `UserEmail` varchar(100) NOT NULL,
  `Testimonial` mediumtext NOT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbltestimonial`
--

INSERT INTO `tbltestimonial` (`id`, `UserEmail`, `Testimonial`, `PostingDate`, `status`) VALUES
(1, 'test@gmail.com', 'I am satisfied with their service great job', '2020-07-07 14:30:12', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE `tblusers` (
  `id` int(11) NOT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL,
  `dob` varchar(100) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `City` varchar(100) DEFAULT NULL,
  `Country` varchar(100) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`id`, `FullName`, `EmailId`, `Password`, `ContactNo`, `dob`, `Address`, `City`, `Country`, `RegDate`, `UpdationDate`) VALUES
(1, 'System Tester', 'test@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '0927627925', '', 'Addis Ababa, Gana Street', 'Ethiopia', 'Ethiopia', '2020-07-07 14:00:49', '2023-01-02 05:51:57');

-- --------------------------------------------------------

--
-- Table structure for table `tblvehicles`
--

CREATE TABLE `tblvehicles` (
  `id` int(11) NOT NULL,
  `VehiclesTitle` varchar(150) DEFAULT NULL,
  `VehiclesBrand` int(11) DEFAULT NULL,
  `VehiclesOverview` longtext DEFAULT NULL,
  `PricePerDay` int(11) DEFAULT NULL,
  `FuelType` varchar(100) DEFAULT NULL,
  `ModelYear` int(6) DEFAULT NULL,
  `SeatingCapacity` int(11) DEFAULT NULL,
  `Vimage1` varchar(120) DEFAULT NULL,
  `Vimage2` varchar(120) DEFAULT NULL,
  `Vimage3` varchar(120) DEFAULT NULL,
  `Vimage4` varchar(120) DEFAULT NULL,
  `Vimage5` varchar(120) DEFAULT NULL,
  `AirConditioner` int(11) DEFAULT NULL,
  `PowerDoorLocks` int(11) DEFAULT NULL,
  `AntiLockBrakingSystem` int(11) DEFAULT NULL,
  `BrakeAssist` int(11) DEFAULT NULL,
  `PowerSteering` int(11) DEFAULT NULL,
  `DriverAirbag` int(11) DEFAULT NULL,
  `PassengerAirbag` int(11) DEFAULT NULL,
  `PowerWindows` int(11) DEFAULT NULL,
  `CDPlayer` int(11) DEFAULT NULL,
  `CentralLocking` int(11) DEFAULT NULL,
  `CrashSensor` int(11) DEFAULT NULL,
  `LeatherSeats` int(11) DEFAULT NULL,
  `RegDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblvehicles`
--

INSERT INTO `tblvehicles` (`id`, `VehiclesTitle`, `VehiclesBrand`, `VehiclesOverview`, `PricePerDay`, `FuelType`, `ModelYear`, `SeatingCapacity`, `Vimage1`, `Vimage2`, `Vimage3`, `Vimage4`, `Vimage5`, `AirConditioner`, `PowerDoorLocks`, `AntiLockBrakingSystem`, `BrakeAssist`, `PowerSteering`, `DriverAirbag`, `PassengerAirbag`, `PowerWindows`, `CDPlayer`, `CentralLocking`, `CrashSensor`, `LeatherSeats`, `RegDate`, `UpdationDate`) VALUES
(1, 'Dzire ', 1, 'Maruti Suzuki Dzire\r\n\r\nThe Dzire is everything you want in a sedan.The car gets you all the attention you deserve with its elegant styling.\r\nIts perfect size makes it excellent to man-oeuvre, enhancing your driving experience wherever you go.As you get inside, you will be surrounded by a refined and relaxing atmosphere. With so much to offer, it\'s a car that truly fulfills all your desires.\r\nThe front incorporates a wide open grille with an aggressive bumper that truly fits in with the authentic sedan styling. The wide lower body and narrow upper body in comparison emphasis its boldness while the chrome accents add an elegant look to the design.\r\nFor your entertainment, the Dzire comes with a highly advanced Smartphone Linkage Display Audio, which lets you stay connected to excitement at every moment. It works with Apple CarPlay for your iPhone, or Android Auto™ or MirrorLink™ for your compatible smartphone.\r\nA compact 1.2L VVT engine enables strong driving performance. The engine\'s high combustion efficiency and compression ratio, low friction and light weight, all add up to delight you with a fuel-efficient performance.\r\nA compact 1.2L VVT engine enables strong driving performance. The engine\'s high combustion efficiency and compression ratio, low friction and light weight, all add up to delight you with a fuel-efficient performance.\r\nDzire can travel 21KM/L in open road and 13-17KM/L in congested city roads.\r\n', 1500, 'Petrol', 2021, 5, 'dezire side.jpg', 'dezire top.jpg', 'dezire side.jpg', 'Dezire stearing weal.jpg', 'dzire.jpg', 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, 1, 1, '2020-07-07 07:04:35', '2023-01-02 13:12:23'),
(2, 'Celerio', 1, 'The All-New Celerio features a 3D Organic Sculpted Design that is refreshing to the senses. Be it the Radiant Front Grille with Sharp Chrome Accents, Droplet-Styled Tail lamps or the 15-inch Black Alloy Wheels, the Celerio seems renewed from every angle. The Energetic and Spacious Cabin with a Contemporary Dashboard design livens up the drives.\r\nThe Next Gen K10C Engine is the perfect reflection of your spirit, providing a lively and invigorated drive while ensuring India\'s best fuel-efficiency so you can drive your style wherever you go!\r\n\r\nPETROL\r\n25.24km/l*\r\nLXI MT, VXI MT, ZXI MT\r\n\r\nPETROL\r\n24.97km/l*\r\nZXI+ MT\r\n\r\nPETROL\r\n26.68km/l*\r\nVXI AGS\r\n\r\nPETROL (AGS)\r\n26.00km/l*\r\nZXI AGS, ZXI+ AGS\r\n\r\nCNG\r\n35.60km/kg*\r\nVXI MT', 1500, 'Petrol', 2021, 5, '2021-Maruti-Suzuki-Celerio-26.jpg', 'celariointerior.jpg', 'celario inside.webp', 'celario side.jpg', 'celario left side.webp', 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, 1, 1, '2020-07-07 07:12:02', '2023-01-02 13:19:34'),
(3, 'S-PRESSO', 1, 'Suzuki S - P\r\nYou can never miss its presence on the road. With a bold design and robust stance that radiates vibrant energy, the S-PRESSO brings alive every place in the city it ventures to. Hop into the S-PRESSO, and kick start excitement in life.The S-PRESSO’s exterior design is a sight to behold. Its bold and athletic profile, combines with its tall and powerful stance ensuring it commands all the attention wherever it goes. Artistically crafted with bold and vibrant design elements, the unique centre console houses a trendy digital speedometer. Get in and experience the invigorating ambience of the S-PRESSO. The exceptional experience of the S-PRESSO is a combination of its driving performance and convenience. With a peppy engine and other innovative features you’re in for an exciting drive.\r\nThe compact 1.0 litre engine has enhanced fuel efficiency and delivers a peppy performance to go along with your active lifestyle. The transmission offers an optimal gear ratio, and reduces friction for the engine and drive train, enabling it to obtain the best possible fuel consumption and power performance.', 1500, 'Petrol', 2021, 5, 's-presso.jpg', 'spereso6.jpg', 'spereso 5.jpg', 'spereso 3.jpg', 'spereso 4.jpg', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2020-07-07 07:19:21', '2023-01-02 13:43:27'),
(4, 'Baleno ', 1, 'Suzuki Baleno,\r\n\r\nThe new Baleno is your perfect companion in a world where you stand apart with your sharp personality. It lets you make an equally strong impression from both inside and outside. A stylish liquid-flow body drives forward new trends, while a wide cabin lets you arrive in comfort. What’s more, its advanced features ensure you get the best out of every situation. With the new Baleno, Raise Your Edge.\r\nThe Baleno has an expressive design that appeals to the urban-minded young. An elaborately crafted front grille with chrome accents lets you take every road head-on with confidence. The headlamps and rear lamps have a 3-point signature style that adds to the distinct persona of the car. Also, making it stand out as you take it for a spin is its coupe style body that slopes towards the rear.\r\n1.5L engine Spirited response meets high fuel efficiency in a compact petrol engine producing impressive torque. Performance is smooth with minimal noise and vibration for a pleasant drive.\r\nTransmission Both 4-speed automatic transmission and 5-speed manual transmission are optimised for the best balance of performance and fuel efficiency. A straight type shift pattern is adopted for the automatic transmission for simple and easy operation while the manual transmission features light, smooth and precise gear shifting with the convergent locating system.', 1500, 'Petrol', 2022, 5, 'Baleno 1.jpg', 'baleno 2.jpg', 'baleno 3.jpg', 'baleno 5.jpg', '', 1, 1, 1, 1, 1, 1, 1, 1, NULL, NULL, 1, 1, '2020-07-07 07:25:28', '2023-01-02 13:57:22'),
(5, 'Ertiga ', 1, ' Suzuki Ertiga (SUV)\r\nDrive the Ertiga and experience true elegance. It’s designed in every detail so you can enjoy a vibrant, active lifestyle with your loved ones. But it does much more than that. It’s a vehicle that rewards you in every dimension — personally, aesthetically, and emotionally — so you can grow with elegance every time you drive. With its aerodynamic body and sleek, flowing lines, the Ertiga carries you to your destination in real style. From the front, the vehicle’s bold and distinctive visage heralds your approach with dynamic elegance, attracting admiring looks wherever you go.\r\nThe Ertiga welcomes you to the cabin with smart, upscale dashboard and door trim, richly textured two-tone upholstery, and state-of-the-art instrumentation. The D-shaped steering wheel with integrated audio system controls and premium quality design accents lets you stay fully in command on winding roads and busy city streets. Powerful, fuel-efficient 1.5-litre petrol engine Spirited response meets high fuel efficiency in the Ertiga’s 1.5-litre petrol engine. Producing impressive torque for quick acceleration, it features proven Suzuki technology in every detail. The Ertiga is equipped with an array of features to help enhance safety for the driver, passengers, and even pedestrians. From fundamental structural features to protect cabin integrity in the event of a collision, to advanced assistive technologies to help you maintain traction and steering control, the Ertiga is built with safety in mind.\r\n', 1500, 'Petrol', 2021, 5, 'ertega 1.jpg', 'ertega 5.jpg', 'ertega 2.jpg', 'ertega 3.jpg', 'ertega 4.jpg', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2020-07-07 07:34:17', '2023-01-02 14:35:13'),
(6, 'Nissan Sunny 2020', 4, 'Value for money product and it was so good It is more spacious than other sedans It looks like a luxurious car.', 400, 'CNG', 2018, 5, 'Nissan-Sunny-Right-Front-Three-Quarter-48975_ol.jpg', 'images (1).jpg', 'Nissan-Sunny-Interior-114977.jpg', 'nissan-sunny-8a29f53-500x375.jpg', 'new-nissan-sunny-photo.jpg', 1, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2020-07-07 09:12:49', NULL),
(7, 'Toyota Fortuner', 5, 'Toyota Fortuner Features: It is a premium seven-seater SUV loaded with features such as LED projector headlamps with LED DRLs, LED fog lamp, and power-adjustable and foldable ORVMs. Inside, the Fortuner offers features such as power-adjustable driver seat, automatic climate control, push-button stop/start, and cruise control.\r\n\r\nToyota Fortuner Safety Features: The Toyota Fortuner gets seven airbags, hill assist control, vehicle stability control with brake assist, and ABS with EBD.', 3000, 'Petrol', 2020, 5, '2015_Toyota_Fortuner_(New_Zealand).jpg', 'toyota-fortuner-legender-rear-quarters-6e57.jpg', 'zw-toyota-fortuner-2020-2.jpg', 'download (1).jpg', '', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, 1, 1, 1, '2020-07-07 09:17:46', NULL),
(8, 'Vitara ', 1, 'The legendary Vitara is waiting for its next adventure. Are you ready? With its rugged SUV design and 4x4 capabilities, you have the freedom to go wherever you want in style. The open road awaits, adventure is just around the corner and the Vitara is ready when you are. Question is, where to next?\r\nGet ready for an appearance beaming with strength and energy. Characterised by the Vitara’s bold styling, stealing the spotlight wherever you go. Defined by the Vitara’s authentic design always on the lookout for on- and off-road discoveries. Charge your drive with a vigorous outer impression – and elevate your senses with the inner refinement of a full-grown SUV.\r\nGetting into the Vitara is like entering a refined world full of high-quality materials. Offering a space where you find every button, switch and dial in its natural place. Enjoy an interior that you are never quite ready to leave.\r\nThe 1.5-litre engine delivers high fuel efficiency, low emissions, strong output and torquey performance. Excellent fuel efficiency is achieved through various features. Dual fuel injectors are placed close to the intake valves and the compression ratio is raised for efficient fuel combustion. Combustion temperatures are lowered and pumping loss is reduced by the exhaust gas recirculation (EGR) system. Roller rocker arms are adopted to suppress friction loss. In addition, intake and exhaust valve timing is optimised in the variable valve timing (VVT) system.\r\nThe compact and lightweight strong hybrid system offers both fuel-efficient hybrid and EV driving. It consists of the 1.5 DUALJET engine, a Motor Generator Unit (MGU), AGS (Auto Gear Shift) and a power pack (140V lithium-ion battery and inverter). The highly efficient, high-output MGU enables EV driving by powering the vehicle alone and assists the engine to accelerate the vehicle. It also enables EV driving in reverse and fills in the torque gap while the clutch is disengaged for smoother shifting. When driving at a constant speed, the MGU utilises engine power to efficiently generate electricity that expands the EV driving range and frequency for high fuel efficiency and quiet driving. During deceleration, it retrieves large amounts of kinetic energy to recharge the battery and help maintain sufficient battery power.\r\n', 2500, 'Petrol', 2018, 5, 'vitara 1.jpg', 'vitara 2.jpg', 'vitara 3.jpg', 'vitara 4.jpg', 'vitara 5.jpg', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2020-07-07 09:23:11', '2023-01-02 14:48:07');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbooking`
--
ALTER TABLE `tblbooking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbrands`
--
ALTER TABLE `tblbrands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactusinfo`
--
ALTER TABLE `tblcontactusinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblsubscribers`
--
ALTER TABLE `tblsubscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbltestimonial`
--
ALTER TABLE `tbltestimonial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `EmailId` (`EmailId`);

--
-- Indexes for table `tblvehicles`
--
ALTER TABLE `tblvehicles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblbooking`
--
ALTER TABLE `tblbooking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblbrands`
--
ALTER TABLE `tblbrands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tblcontactusinfo`
--
ALTER TABLE `tblcontactusinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tblsubscribers`
--
ALTER TABLE `tblsubscribers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbltestimonial`
--
ALTER TABLE `tbltestimonial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblvehicles`
--
ALTER TABLE `tblvehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
