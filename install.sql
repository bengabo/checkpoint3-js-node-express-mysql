CREATE DATABASE IF NOT EXISTS checkpoint3;

USE checkpoint3;

CREATE TABLE playlist (
  id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  title VARCHAR(128),
  genre VARCHAR(128)
);

CREATE TABLE track (
  id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  playlist_id INT NOT NULL,
  title VARCHAR (128),
  artist VARCHAR (128),
  album_picture VARCHAR (256),
  youtube_url VARCHAR (255),
  FOREIGN KEY (playlist_id) REFERENCES playlist(id)
);