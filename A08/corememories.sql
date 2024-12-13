-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 13, 2024 at 12:12 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `corememories`
--

-- --------------------------------------------------------

--
-- Table structure for table `islandcontents`
--

CREATE TABLE `islandcontents` (
  `islandContentID` int(4) NOT NULL,
  `islandOfPersonalityID` int(4) NOT NULL,
  `image` varchar(50) DEFAULT NULL,
  `content` varchar(1000) NOT NULL,
  `color` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `islandcontents`
--

INSERT INTO `islandcontents` (`islandContentID`, `islandOfPersonalityID`, `image`, `content`, `color`) VALUES
(1, 1, 'lol01.png', 'Join the action-packed world of League of Legends, where strategy meets\r\n                    teamwork. Master unique\r\n                    champions, compete in thrilling matches, and experience the excitement of MOBA gameplay. At\r\n                    Game Island, we bring the LoL community together with events, tournaments, and endless\r\n                    fun!', '#962727'),
(2, 1, 'codm.png', 'Dive into Call of Duty Mobile, where fast-paced action and strategic\r\n                    gameplay come to life. Battle in iconic modes like Battle Royale and Team Deathmatch, customize\r\n                    your weapons, and compete with players worldwide. At Game Island, we bring the CODM community\r\n                    together with exciting tournaments and events!', '#962727'),
(3, 1, 'ml.png', 'Jump into the world of Mobile Legends, where epic battles and strategy come\r\n                    together. Team up\r\n                    with friends or play solo as you control unique heroes, each with their own powerful abilities.\r\n                    Fight to dominate the battlefield in fast-paced 5v5 matches. At Game Island, we unite the\r\n                    MLBB community with thrilling tournaments, events, and endless excitement!', '#962727'),
(4, 2, 'Scottie.jfif', 'Meet Scottie, a loyal and playful companion with a heart of gold. Scottie\r\n                    loves long walks in the park,\r\n                    chasing after balls, and curling up by your side after a fun-filled day. With his wagging tail and\r\n                    boundless energy, Scottie brings joy and warmth to everyone he meets.', '#A4AC3C'),
(5, 2, 'Scottie2.jfif', 'Scottie is an adventurer at heart, always eager to explore new places and\r\n                    discover hidden treasures.\r\n                    Whether it’s splashing in puddles or running through fields, Scottie’s enthusiasm is contagious.', '#A4AC3C'),
(6, 2, 'Scottie3.jfif', 'After a day of fun and games, Scottie loves to unwind with his favorite chew toy or a cozy nap in\r\n                    his favorite spot. Scottie’s presence fills the home with love and laughter.', '#A4AC3C'),
(7, 3, 'tw.jpg', 'The Weeknd is an iconic artist known for his unique blend of R&B, pop,\r\n                    and electronic music. With his smooth vocals, innovative sound, and captivating lyrics, he has\r\n                    earned worldwide recognition. From chart-topping hits like \"Blinding Lights\" to critically\r\n                    acclaimed albums such as \"After Hours,\" The Weeknd continues to push the boundaries of modern\r\n                    music. Experience the world of The Weeknd, where his captivating soundscapes and unforgettable\r\n                    performances immerse you in a world of rhythm and emotion.\r\n', '#382EBB'),
(8, 3, 'artN.jpg', 'Arthur Nery is a Filipino singer and songwriter known for his soulful voice and heartfelt\r\n                    lyrics. With hits like \"Pagsamo\" and \"Binhi,\" he has captivated listeners with his unique blend\r\n                    of R&B, soul, and pop music. Arthur\'s music deeply resonates with his fans, blending emotional\r\n                    depth with smooth melodies. His ability to connect with listeners through his storytelling and\r\n                    vocal prowess has earned him a dedicated fanbase. Discover the soulful sounds of Arthur Nery and\r\n                    let his music take you on an unforgettable journey of love, loss, and growth.', '#382EBB'),
(9, 3, 'cupOfJoe.jpg', 'Cup of Joe is an up-and-coming Filipino pop/rock band based in Baguio, Philippines. Formed in\r\n                    November 2018, the band quickly gained a strong following with their standout hit, \"Tingin,\"\r\n                    which resonates deeply with fans. Their music blends catchy rock beats with Filipino pop\r\n                    sensibilities, creating an infectious and relatable sound. Known for their evocative lyrics and\r\n                    passionate performances, Cup of Joe’s songs capture the beauty and complexities of everyday\r\n                    life. With a fresh take on modern pop-rock, they are carving out a name for themselves as one of\r\n                    the most promising acts in the Filipino music industry.', '#382EBB'),
(10, 4, 'friends1.jpg', 'Friendship is about teamwork, fun, and unforgettable experiences.\r\n                    Whether you\'re strategizing together, overcoming challenges, or simply enjoying each other\'s\r\n                    company, Friend Island is the perfect place to create lasting memories with your friends. Share\r\n                    adventures, laugh, and connect in an environment built for fun and relaxation.', '#348520'),
(11, 4, 'friends2.jpg', 'There\'s nothing like sharing exciting experiences with friends. On\r\n                    Friend Island, you can team up, challenge each other, and create moments that bring you closer.\r\n                    Whether you’re exploring new activities or relaxing together, the island is all about\r\n                    strengthening bonds and having fun with the people who matter most.\r\n        ', '#348520'),
(12, 4, 'friends3.jpg', 'Friend Island is all about sharing moments with your closest friends.\r\n                    Explore, challenge, and support each other as you dive into a world full of adventure and\r\n                    connection. No matter what you do, the island is the perfect place to forge memories and enjoy\r\n                    quality time with your friends by your side.', '#348520');

-- --------------------------------------------------------

--
-- Table structure for table `islandsofpersonality`
--

CREATE TABLE `islandsofpersonality` (
  `islandOfPersonalityID` int(4) NOT NULL,
  `name` varchar(40) NOT NULL,
  `shortDescription` varchar(300) DEFAULT NULL,
  `longDescription` varchar(2000) DEFAULT NULL,
  `color` varchar(10) DEFAULT NULL,
  `image` varchar(50) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `islandsofpersonality`
--

INSERT INTO `islandsofpersonality` (`islandOfPersonalityID`, `name`, `shortDescription`, `longDescription`, `color`, `image`, `status`) VALUES
(1, 'Game Island', 'Your Ultimate Destination for Gaming Adventures', 'Game Island is a haven for gaming enthusiasts, where the excitement of virtual worlds meets a\r\n                    vibrant, dynamic community. Our island offers an unparalleled experience for gamers of all levels,\r\n                    featuring diverse gaming zones designed to immerse you in endless fun and challenges. Whether you\'re\r\n                    into thrilling action games, brain-teasing puzzles, or casual multiplayer adventures, Game Island\r\n                    has something special for everyone.\r\n\r\n                    With cutting-edge gaming facilities, exciting live tournaments, and engaging interactive events, we\r\n                    bring the gaming universe to life. Discover themed zones that transport you to fantastical realms,\r\n                    high-speed arenas, and epic quests, or unwind in our social hubs where players connect, strategize,\r\n                    and share their love for games.\r\n\r\n                    Game Island isn\'t just a gaming destination—it\'s a vibrant community where players forge\r\n                    friendships, share unforgettable moments, and embrace the spirit of competition. Join us on Game\r\n                    Island for an extraordinary journey filled with adventure, camaraderie, and boundless entertainment!', '#1D2951', 'Game Island (2).png', 'active'),
(2, 'Dog Island', 'A Haven for Pet Lovers and Their Furry Friends', ' Welcome to Dog Island, a heartwarming paradise where furry friends and their\r\n                    humans can bond, play, and explore together! This vibrant island is a haven for pet lovers, offering\r\n                    a wide range of fun-filled activities, beautiful trails, and interactive experiences that celebrate\r\n                    the special connection between pets and their owners. Whether you\'re strolling through dog-friendly\r\n                    beaches, participating in fun agility courses, or enjoying the pet-friendly cafes, Dog Island is\r\n                    designed to create unforgettable memories for you and your four-legged companions.', '#1D2951', 'Dog Island (4).png', 'active'),
(3, 'Music Island', 'Discover paradise where music and adventure unite', 'Music Island is a vibrant and enchanting destination where the magic of music\r\n                    comes to life in every\r\n                    corner. Whether you\'re a seasoned musician, a casual listener, or someone who simply loves to\r\n                    explore the rhythms of the world, Music Island offers an unforgettable journey for all. With its\r\n                    diverse music zones, each inspired by different genres and cultures, you can immerse yourself in\r\n                    live performances, interactive music experiences, and workshops that allow you to learn and create\r\n                    music like never before. From the soothing sounds of classical melodies to the electrifying beats of\r\n                    modern pop and electronic music, Music Island has something for everyone. Enjoy vibrant concerts,\r\n                    participate in jam sessions with fellow music lovers, and discover the island’s unique musical\r\n                    history through interactive exhibits and installations. Music Island is more than just a place to\r\n                    hear music; it\'s a celebration of the universal language that connects us all. Come and let the\r\n                    rhythms of Music Island inspire you on a sonic adventure that will stay with you forever!', '#1D2951', 'Music Island (6).png', 'active'),
(4, 'Friend Island', 'Explore exciting new worlds and challenges with your friends in Friend Island', 'Friend Island is the perfect getaway for you and your classmates to relax,\r\n                    explore, and create unforgettable memories together. Set against a backdrop of stunning natural\r\n                    beauty, the island offers a variety of activities that everyone can enjoy. Whether you\'re hiking\r\n                    through scenic trails, relaxing by the beach, or engaging in group challenges, there’s always\r\n                    something exciting to do. Friend Island is all about bonding, building new friendships, and enjoying\r\n                    quality time in a peaceful, welcoming environment. It’s a place to escape, unwind, and share special\r\n                    moments with your classmates.', '#1D2951', 'Friend Island (3).png', 'active');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `islandcontents`
--
ALTER TABLE `islandcontents`
  ADD PRIMARY KEY (`islandContentID`);

--
-- Indexes for table `islandsofpersonality`
--
ALTER TABLE `islandsofpersonality`
  ADD PRIMARY KEY (`islandOfPersonalityID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `islandcontents`
--
ALTER TABLE `islandcontents`
  MODIFY `islandContentID` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `islandsofpersonality`
--
ALTER TABLE `islandsofpersonality`
  MODIFY `islandOfPersonalityID` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
