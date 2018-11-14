-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 14, 2018 at 01:35 PM
-- Server version: 10.1.9-MariaDB
-- PHP Version: 7.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_night6`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_albums`
--

CREATE TABLE `tbl_albums` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `year_released` year(4) DEFAULT NULL,
  `artist_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_albums`
--

INSERT INTO `tbl_albums` (`id`, `title`, `year_released`, `artist_id`) VALUES
(1, 'Psy 6', 2012, 2),
(2, 'Trip', 1996, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_artists`
--

CREATE TABLE `tbl_artists` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_artists`
--

INSERT INTO `tbl_artists` (`id`, `name`) VALUES
(1, 'Rivermaya'),
(2, 'Psy');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_playlist`
--

CREATE TABLE `tbl_playlist` (
  `id` int(11) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_songs`
--

CREATE TABLE `tbl_songs` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `length` int(11) DEFAULT NULL,
  `genre` varchar(255) DEFAULT NULL,
  `album_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_songs`
--

INSERT INTO `tbl_songs` (`id`, `title`, `length`, `genre`, `album_id`) VALUES
(1, 'Gangnam Style', 253, 'k-pop', 1),
(2, 'Kundiman', 250, 'k-pop', 2),
(3, 'Kisapmata', 250, 'k-pop', 2),
(4, 'why', 300, 'rock', 1),
(5, 'where', 250, 'rock', 2),
(6, 'i do', 270, 'balad', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_song_playlist`
--

CREATE TABLE `tbl_song_playlist` (
  `id` int(11) NOT NULL,
  `song_id` int(11) DEFAULT NULL,
  `playlist_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(5) NOT NULL,
  `uname` varchar(255) NOT NULL,
  `password` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `uname`, `password`) VALUES
(1, 'noctis17', 'dogedoge'),
(2, 'person1', 'password1'),
(3, 'person2', 'password2'),
(4, 'person3', 'password3'),
(5, 'aljhon', '2c8af0dbbb687872239238530be5f9f787a1ab45'),
(6, '123', '123'),
(7, '123', '40bd001563085fc35165329ea1ff5c5ecbdbbeef'),
(8, '123', '40bd001563085fc35165329ea1ff5c5ecbdbbeef'),
(9, '123', '40bd001563085fc35165329ea1ff5c5ecbdbbeef');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_albums`
--
ALTER TABLE `tbl_albums`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `artist_id` (`artist_id`);

--
-- Indexes for table `tbl_artists`
--
ALTER TABLE `tbl_artists`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `tbl_playlist`
--
ALTER TABLE `tbl_playlist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `tbl_songs`
--
ALTER TABLE `tbl_songs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `album_id` (`album_id`);

--
-- Indexes for table `tbl_song_playlist`
--
ALTER TABLE `tbl_song_playlist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `song_id` (`song_id`),
  ADD KEY `playlist_id` (`playlist_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_albums`
--
ALTER TABLE `tbl_albums`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tbl_artists`
--
ALTER TABLE `tbl_artists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tbl_playlist`
--
ALTER TABLE `tbl_playlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_songs`
--
ALTER TABLE `tbl_songs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tbl_song_playlist`
--
ALTER TABLE `tbl_song_playlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_albums`
--
ALTER TABLE `tbl_albums`
  ADD CONSTRAINT `tbl_albums_ibfk_1` FOREIGN KEY (`artist_id`) REFERENCES `tbl_artists` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tbl_playlist`
--
ALTER TABLE `tbl_playlist`
  ADD CONSTRAINT `tbl_playlist_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `tbl_songs`
--
ALTER TABLE `tbl_songs`
  ADD CONSTRAINT `tbl_songs_ibfk_1` FOREIGN KEY (`album_id`) REFERENCES `tbl_albums` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `tbl_song_playlist`
--
ALTER TABLE `tbl_song_playlist`
  ADD CONSTRAINT `tbl_song_playlist_ibfk_1` FOREIGN KEY (`song_id`) REFERENCES `tbl_songs` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_song_playlist_ibfk_2` FOREIGN KEY (`playlist_id`) REFERENCES `tbl_playlist` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
