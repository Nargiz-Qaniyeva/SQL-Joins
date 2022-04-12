CREATE DATABASE IMDB
USE IMDB

CREATE TABLE  Movies(
Id int primary key,
MovieName nvarchar (50),
Duration int
--Point int NOT NULL  --
)


CREATE TABLE   Directors(
Id int primary key,
DirectorName nvarchar (50),
)

CREATE TABLE  Actors(
Id int primary key,
ActorName nvarchar (50),
)

CREATE TABLE  Genres(
Id int primary key,
 GenreName nvarchar (50),
)

CREATE TABLE  MovieActors(
Id int primary key,
MovieId int references Movies (Id),
ActorsId int references Actors (Id)
)


CREATE TABLE  MovieDirectory(
Id int primary key,
MoviesId int references Movies (Id),
DirectorId int references Directors (Id),
)

CREATE TABLE  MovieGenres(
Id int primary key,
MoviesId int references Movies (Id),
GenreId int references Genres (Id),
)

CREATE TABLE  DirectorGenres(
Id int primary key,
DirectorId int references Directors (Id),
GenreId int references Genres (Id),
)

SELECT * FROM Movies
SELECT CHARINDEX ('a',MovieName), MovieName FROM Movies 
--SELECT LEN(MovieName) >10 MovieName FROM Movies 