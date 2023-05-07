CREATE DATABASE IF NOT EXISTS book_system;
use book_system;

create table `book`(
`id` int primary key auto_increment,
`name` varchar(255),
`author` varchar(255),
`desc` varchar(255),
`count` int
);

create table `student`(
`id` int primary key auto_increment,
`name` varchar(255),
`className` varchar(255)
);

create table `card`(
`id` int primary key auto_increment,
`id_book` int,
`id_student` int,
`status` boolean,
`start_date` date,
`end_date` date,
FOREIGN KEY (`id_book`) REFERENCES `book`(`id`),
FOREIGN KEY (`id_student`) REFERENCES `student`(`id`)
)