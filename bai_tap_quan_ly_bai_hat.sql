create database bai_tap_quan_ly_bai_hat;
use bai_tap_quan_ly_bai_hat;
create table albums(
album_id int primary key auto_increment,
`name` varchar(100),
image_url varchar(200),
`description` text
);
create table singers (
sinder_id int primary key auto_increment,
`name` varchar(200),
avata_url varchar(200),
`description` text
);
create table genres(
genre_id int primary key auto_increment,
`name` varchar(100),
`description` text
);
create table songs(
song_id int primary key auto_increment,
`name` varchar(100),
price int,
file_urll varchar(255),
album_id int,
sinder_id int,
genre_id int,
foreign key (album_id) references albums(album_id),
foreign key (genre_id) references genres(genre_id),
foreign key (sinder_id) references singers(sinder_id)

);
create table users (
user_id int primary key auto_increment,
`name` varchar(100),
email varchar(100),
`password` varchar(200),
image varchar(200),
wallet int,
`role` tinyint
);
create table playlists(
playlist_id int primary key auto_increment,
song_id int,
user_id int,
foreign key (user_id) references users(user_id),
foreign key (song_id) references songs(song_id)

);
create table transactions(
`transaction` int primary key auto_increment,
user_id int,
song_id int,
foreign key (user_id) references users(user_id),
foreign key (song_id) references songs(song_id),
price int

);

