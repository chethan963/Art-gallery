-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 23, 2022 at 02:16 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `art_gallery`
--

-- --------------------------------------------------------

--
-- Table structure for table `art_logs`
--

CREATE TABLE `art_logs` (
  `sno` int(11) NOT NULL,
  `title` varchar(20) NOT NULL,
  `price` varchar(11) NOT NULL,
  `category_id` int(10) NOT NULL,
  `featured` text NOT NULL,
  `active` text NOT NULL,
  `action` text NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `conf`
--

CREATE TABLE `conf` (
  `sno` int(3) NOT NULL,
  `name` text NOT NULL,
  `age` int(3) NOT NULL,
  `gender` varchar(8) NOT NULL,
  `email` varchar(22) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `desc` text NOT NULL,
  `dt` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `conf`
--

INSERT INTO `conf` (`sno`, `name`, `age`, `gender`, `email`, `phone`, `desc`, `dt`) VALUES
(1, 'Lohit Kumar A Bhattangi', 20, 'male', 'lohitk932@gmail.com', '9972934418', 'hi i am playing....', '2022-01-19 20:44:13'),
(2, 'Lohit Kumar A Bhattangi', 20, 'male', 'lohitk932@gmail.com', '9972934418', 'hi i am playing....', '2022-01-19 20:45:52');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id` int(10) UNSIGNED NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id`, `full_name`, `username`, `password`) VALUES
(12, 'Administrator', 'admin', 'E10ADC3949BA59ABBE56E057F20F883E'),
(13, 'Chethan M', 'Chethan', '202cb962ac59075b964b07152d234b70'),
(14, 'Nikhil S', 'Nikhil', '202cb962ac59075b964b07152d234b70');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_art`
--

CREATE TABLE `tbl_art` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `featured` varchar(10) NOT NULL,
  `active` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_art`
--

INSERT INTO `tbl_art` (`id`, `title`, `description`, `price`, `image_name`, `category_id`, `featured`, `active`) VALUES
(13, 'Women', 'Acrylic Painting, one of the very common type of paintings, uses fast-drying acrylic colors to create a wonderful art piece.\r\n\r\nThese acrylic paints are made by suspending pigments in acrylic resins.\r\n\r\nThe acrylic paint is soluble in water but when dried, it becomes water-resistant. On top of that, acrylics can handle heat better than other types of paints.\r\n\r\nThe beauty of using acrylic paint lies in its ability to give both transparencies of watercolor and texture of oil paint.\r\n\r\nChoosing this painting style will give you the benefit of versatility in terms of making art.\r\n\r\nYear of invention: Somewhere around 1934 by Leonard Bocour and Sam Golden\r\n\r\nFamous artists: Andy Warhol, David Hockney, Robert Motherwell.', '24576.00', 'art-Name-8127.jpg', 13, 'Yes', 'Yes'),
(14, 'Forest Road', 'Acrylic Painting, one of the very common type of paintings, uses fast-drying acrylic colors to create a wonderful art piece.\r\n\r\nThese acrylic paints are made by suspending pigments in acrylic resins.\r\n\r\nThe acrylic paint is soluble in water but when dried, it becomes water-resistant. On top of that, acrylics can handle heat better than other types of paints.\r\n\r\nThe beauty of using acrylic paint lies in its ability to give both transparencies of watercolor and texture of oil paint.\r\n\r\nChoosing this painting style will give you the benefit of versatility in terms of making art.\r\n\r\nYear of invention: Somewhere around 1934 by Leonard Bocour and Sam Golden\r\n\r\nFamous artists: Andy Warhol, David Hockney, Robert Motherwell.', '45715.00', 'art-Name-8757.jpg', 13, 'No', 'Yes'),
(15, 'Abstract', 'Acrylic Painting, one of the very common type of paintings, uses fast-drying acrylic colors to create a wonderful art piece.\r\n\r\nThese acrylic paints are made by suspending pigments in acrylic resins.\r\n\r\nThe acrylic paint is soluble in water but when dried, it becomes water-resistant. On top of that, acrylics can handle heat better than other types of paints.\r\n\r\nThe beauty of using acrylic paint lies in its ability to give both transparencies of watercolor and texture of oil paint.\r\n\r\nChoosing this painting style will give you the benefit of versatility in terms of making art.\r\n\r\nYear of invention: Somewhere around 1934 by Leonard Bocour and Sam Golden\r\n\r\nFamous artists: Andy Warhol, David Hockney, Robert Motherwell.', '45789.00', 'art-Name-1816.jpg', 13, 'No', 'Yes'),
(16, 'Flower Field', '', '45781.00', 'art-Name-8989.jpg', 13, 'No', 'Yes'),
(17, 'Mermaid', 'It may seem like a not-so-popular technique, but glass painting was one of the most dominant forms of painting in ancient Europe.\r\n\r\nGesso, enamel, and acrylic paints are used for glass paintings.\r\n\r\nThis form of painting lets you create wonderful artwork on glass that can be illuminated by using a light source.\r\n\r\nYear of invention: In 9th-century Germany.\r\n\r\nFamous Artists: Gerhard Richter, Brian Clarke.', '75481.00', 'art-Name-7332.jpg', 15, 'Yes', 'Yes'),
(18, 'Tree', 'It may seem like a not-so-popular technique, but glass painting was one of the most dominant forms of painting in ancient Europe.\r\n\r\nGesso, enamel, and acrylic paints are used for glass paintings.\r\n\r\nThis form of painting lets you create wonderful artwork on glass that can be illuminated by using a light source.\r\n\r\nYear of invention: In 9th-century Germany.\r\n\r\nFamous Artists: Gerhard Richter, Brian Clarke.', '45571.00', 'art-Name-890.jpg', 15, 'No', 'Yes'),
(19, 'Golden Fish', 'It may seem like a not-so-popular technique, but glass painting was one of the most dominant forms of painting in ancient Europe.\r\n\r\nGesso, enamel, and acrylic paints are used for glass paintings.\r\n\r\nThis form of painting lets you create wonderful artwork on glass that can be illuminated by using a light source.\r\n\r\nYear of invention: In 9th-century Germany.\r\n\r\nFamous Artists: Gerhard Richter, Brian Clarke.', '65214.00', 'art-Name-3636.jpg', 15, 'No', 'Yes'),
(20, 'Shiva', 'One of the types of painting art, a Pencil sketch is the art of creating highly defined artwork using the most commonly used childhood tool: a pencil.\r\n\r\nThe graphite pencil is well known for its ability to create a realistic and detailed sketch.\r\n\r\nThe smudging ability of the graphite pencil will let you add in-depth perspective and give beautification to the artwork.\r\n\r\nPencil sketching is a preferred method for drawing by many professional artists and people who love doodling.\r\n\r\nYear of invention: Around 1560 by Simonio and Lyndiana Bernacotti\r\n\r\nFamous Artists: Adonna Khare, Marco Mazzoni, Diego Fazio.', '75843.00', 'art-Name-6671.jpg', 17, 'Yes', 'Yes'),
(21, 'Eye', 'One of the types of painting art, a Pencil sketch is the art of creating highly defined artwork using the most commonly used childhood tool: a pencil.\r\n\r\nThe graphite pencil is well known for its ability to create a realistic and detailed sketch.\r\n\r\nThe smudging ability of the graphite pencil will let you add in-depth perspective and give beautification to the artwork.\r\n\r\nPencil sketching is a preferred method for drawing by many professional artists and people who love doodling.\r\n\r\nYear of invention: Around 1560 by Simonio and Lyndiana Bernacotti\r\n\r\nFamous Artists: Adonna Khare, Marco Mazzoni, Diego Fazio.', '52541.00', 'art-Name-6627.jpg', 17, 'No', 'Yes'),
(22, 'Women', 'One of the types of painting art, a Pencil sketch is the art of creating highly defined artwork using the most commonly used childhood tool: a pencil.\r\n\r\nThe graphite pencil is well known for its ability to create a realistic and detailed sketch.\r\n\r\nThe smudging ability of the graphite pencil will let you add in-depth perspective and give beautification to the artwork.\r\n\r\nPencil sketching is a preferred method for drawing by many professional artists and people who love doodling.\r\n\r\nYear of invention: Around 1560 by Simonio and Lyndiana Bernacotti\r\n\r\nFamous Artists: Adonna Khare, Marco Mazzoni, Diego Fazio.', '65214.00', 'art-Name-4461.jpg', 17, 'No', 'Yes'),
(23, 'Rainbow Road', 'The most preferred painting style, oil painting is practiced by most artists around the globe.\r\n\r\nThe paints are made by mixing pigments with drying oils like poppy seed oil, walnut oil, linseed oil, and safflower oil.\r\n\r\nUsing oil paint gives you the versatility of creating a wide range of opacity and intensity in your art.\r\n\r\nIt allows you to create layers of different colors and blend them together to create a brilliant art piece.\r\n\r\nYear of invention: In the 15th century by Belgium painter Jan van Eyck\r\n\r\nFamous artists: Vincent Van Gogh, Leonardo da Vinci, Pablo Picasso.', '68857.00', 'art-Name-6797.jpg', 14, 'No', 'Yes'),
(24, 'Pond', 'The most preferred painting style, oil painting is practiced by most artists around the globe.\r\n\r\nThe paints are made by mixing pigments with drying oils like poppy seed oil, walnut oil, linseed oil, and safflower oil.\r\n\r\nUsing oil paint gives you the versatility of creating a wide range of opacity and intensity in your art.\r\n\r\nIt allows you to create layers of different colors and blend them together to create a brilliant art piece.\r\n\r\nYear of invention: In the 15th century by Belgium painter Jan van Eyck\r\n\r\nFamous artists: Vincent Van Gogh, Leonardo da Vinci, Pablo Picasso.', '26574.00', 'art-Name-3842.jpg', 14, 'No', 'Yes'),
(25, 'Lake', 'The most preferred painting style, oil painting is practiced by most artists around the globe.\r\n\r\nThe paints are made by mixing pigments with drying oils like poppy seed oil, walnut oil, linseed oil, and safflower oil.\r\n\r\nUsing oil paint gives you the versatility of creating a wide range of opacity and intensity in your art.\r\n\r\nIt allows you to create layers of different colors and blend them together to create a brilliant art piece.\r\n\r\nYear of invention: In the 15th century by Belgium painter Jan van Eyck\r\n\r\nFamous artists: Vincent Van Gogh, Leonardo da Vinci, Pablo Picasso.', '56986.00', 'art-Name-1317.jpg', 14, 'No', 'Yes'),
(26, 'Moon', 'Watercolor painting is one of the famous painting techniques that create captivating art.\r\n\r\nAs per the name, watercolors are highly soluble in water and are made by combining pigments and binders.\r\n\r\nUsing watercolors, you create unique paintings that creatively represent your imaginations.\r\n\r\nOne of the best things about watercolor painting is that it can achieve transparency and glow in the painting by just adding layers.\r\n\r\nDid you know that there’s something called Watercolor pencils? These pencils let you create the effect of watercolor paints!\r\n\r\nYear of invention: Around 1.4 million years ago (old stone age)\r\n\r\nFamous Artists: Albrecht Dürer, Paul Klee, John Singer Sargent.', '62531.00', 'art-Name-5561.jpg', 16, 'No', 'Yes'),
(27, 'Bunnies', 'Watercolor painting is one of the famous painting techniques that create captivating art.\r\n\r\nAs per the name, watercolors are highly soluble in water and are made by combining pigments and binders.\r\n\r\nUsing watercolors, you create unique paintings that creatively represent your imaginations.\r\n\r\nOne of the best things about watercolor painting is that it can achieve transparency and glow in the painting by just adding layers.\r\n\r\nDid you know that there’s something called Watercolor pencils? These pencils let you create the effect of watercolor paints!\r\n\r\nYear of invention: Around 1.4 million years ago (old stone age)\r\n\r\nFamous Artists: Albrecht Dürer, Paul Klee, John Singer Sargent.', '23547.00', 'art-Name-6066.jpg', 13, 'No', 'Yes'),
(28, 'Village', 'Watercolor painting is one of the famous painting techniques that create captivating art.\r\n\r\nAs per the name, watercolors are highly soluble in water and are made by combining pigments and binders.\r\n\r\nUsing watercolors, you create unique paintings that creatively represent your imaginations.\r\n\r\nOne of the best things about watercolor painting is that it can achieve transparency and glow in the painting by just adding layers.\r\n\r\nDid you know that there’s something called Watercolor pencils? These pencils let you create the effect of watercolor paints!\r\n\r\nYear of invention: Around 1.4 million years ago (old stone age)\r\n\r\nFamous Artists: Albrecht Dürer, Paul Klee, John Singer Sargent.', '56674.00', 'art-Name-2206.jpg', 13, 'No', 'Yes');

--
-- Triggers `tbl_art`
--
DELIMITER $$
CREATE TRIGGER `art_delete` BEFORE DELETE ON `tbl_art` FOR EACH ROW INSERT INTO art_logs SET title = old.title, price = old.price, category_id =old.category_id, featured = old.featured, active = old.active, action ='DELETED'
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `art_update` BEFORE UPDATE ON `tbl_art` FOR EACH ROW INSERT INTO art_logs SET title = old.title, price = old.price, category_id =old.category_id, featured = old.featured, active = old.active, action ='UPDATED'
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `featured` varchar(10) NOT NULL,
  `active` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`id`, `title`, `image_name`, `featured`, `active`) VALUES
(13, 'Acrylic Painting', 'art_Category_518.jpg', 'Yes', 'Yes'),
(14, ' Oil Painting', 'art_Category_212.jpg', 'Yes', 'Yes'),
(15, ' Glass Painting', 'art_Category_429.jpg', 'Yes', 'Yes'),
(16, 'Watercolor Painting', 'art_Category_717.jpg', 'No', 'Yes'),
(17, 'Pencil Sketch', 'art_Category_489.jpg', 'No', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id` int(10) UNSIGNED NOT NULL,
  `art` varchar(150) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `qty` int(11) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `order_date` datetime NOT NULL,
  `status` varchar(50) NOT NULL,
  `customer_name` varchar(150) NOT NULL,
  `customer_contact` varchar(20) NOT NULL,
  `customer_email` varchar(150) NOT NULL,
  `customer_address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `art_logs`
--
ALTER TABLE `art_logs`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `conf`
--
ALTER TABLE `conf`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_art`
--
ALTER TABLE `tbl_art`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `art_logs`
--
ALTER TABLE `art_logs`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `conf`
--
ALTER TABLE `conf`
  MODIFY `sno` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbl_art`
--
ALTER TABLE `tbl_art`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
