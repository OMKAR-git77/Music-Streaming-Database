# Music-Streaming-Database
Created a Music Streaming Database using MySQL Workbench

# Project Overview
This project aims to develop a relational database system for a music streaming platform to ensure that the music inventory is properly managed, playlists created and user interaction enabled.

# Database Model
![Screenshot (95)](https://github.com/user-attachments/assets/17e67514-8fb9-411f-91d3-ff6a5f366835)


# Entities and Attributes
1. User: Stores information about registered users.
UserID (Primary Key): It is a unique Identifier for each user.
Username: Username of the user.
Email: Email of the user.
Password: Password of the user.
2. Artist: Contains details about music artists.
ArtistID (Primary Key): Unique Identifier for each artist.
Name: Name of the artist.
Genre: Genre of the artist.
3. Album: Represents music albums.
AlbumID (Primary Key): Unique Identifier for each album.
Title: Title of the album.
ArtistID (Foreign Key): Reference to the artist.
Genre: Genre of the album.
Release Date: Release date of the album.
4. Track: Stores details about individual songs.
TrackID (Primary Key): Unique Identifier for each track.
track
Title: Title of the track.
ArtistID (Foreign Key): Reference to the artist.
AlbumID (Foreign Key): Reference to the album.
Duration: Duration of the track.
Release Date: Release date of the track.
5. Playlist: Represents a collection of tracks curated by a user.
PlaylistID (Primary Key): Unique Identifier for each playlist.
UserID (Foreign Key): Reference to the user.
Title: Title of the playlist.
Creation Date: Creation date of the playlist.
6. Like: Tracks the likes or favorites of users on tracks.
LikeID (Primary Key): Unique Identifier for each like.
UserID (Foreign Key): Reference to the user.
TrackID (Foreign Key): Reference to the track.
7. Premium Feature: Stores information about premium features available to users.
Premium_Feature_ID (Primary Key): Unique Identifier for each premium feature.
Name: Name of the premium feature.
8. Subscription Plan: Contains details about subscription plans offered by the platform.
Subscription_Plan_ID (Primary Key): Unique Identifier for each subscription plan.
Name: Name of the subscription plan.
Price: Price of the subscription plan.
Description: Description of the subscription plan.
9. Payment: Stores information about payments made by users.
Payment_ID (Primary Key): Unique Identifier for each payment.
User_ID (Foreign Key): Reference to the user.
Amount: Amount of the payment.
Date: Date of the payment
Method: Method by which the payment is done.
