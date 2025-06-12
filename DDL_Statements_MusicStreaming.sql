create database Music_Streaming;

Use Music_Streaming;


-- DDL scripts

Create table User(
UserID INT Primary key,
Username VARCHAR(50),
Email VARCHAR(30),
Password VARCHAR(20));

Create table Artist(
ArtistID INT primary key,
Name VARCHAR(40),
Genre VARCHAR(40));

create table Album(
AlbumID INT primary key,
Title varchar(40),
ArtistID INT,
Genre Varchar(20),
ReleaseDate DATE,
FOREIGN KEY (ArtistID) references Artist(ArtistID));

create table Track(
TrackID INT primary key,
Title VARCHAR(40),
ArtistID INT,
AlbumID INT,
Duration TIME,
ReleaseDate DATE,
FOREIGN KEY (artistID) references  Artist(ArtistID),
FOREIGN KEY (AlbumID) references Album(AlbumID));

create table Playlist(
PlaylistID INT primary key,
UserID INT,
Title varchar(40),
CreationDate Date,
FOREIGN KEY (UserID) references User(UserID));

create table Likes(
LikeID INT Primary key,
UserID INT,
TrackID INT,
FOREIGN KEY (UserID) references User(UserID),
FOREIGN KEY (TrackID) references Track(TrackID));

create table PremiumFeature(
Premium_Feature_ID INT primary key,
Name VARCHAR(40));

create table SubscriptionPlan(
Subscription_Plan_ID INT primary key,
Name varchar(40),
Price decimal(10,2),
Description varchar(200));

create table Payment(
Payment_ID int primary key,
User_ID int,
Amount decimal(10,2),
Date DATE,
Method varchar(50),
FOREIGN KEY(User_ID) references User(UserID));

