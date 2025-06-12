-- DML scripts

use Music_Streaming;

-- inserting data into User table
insert into User values(1, 'John_doe', 'john123@gmail.com', 'Pass@123');
insert into User values(2, 'karthik', 'karthik77@gmail.com', 'karthik@456');
insert into User values(3, 'louis_wilson', 'wilsonlouis@gmail.com', 'louis_wil789');

-- inserting data into Artist table
insert into Artist values(1, 'The Rockers', 'Rock');
insert into Artist values(2, 'Post Malone', 'pop');
insert into Artist values(3, 'jazz Masters', 'Jazz');

-- inserting data into Album table
insert into Album values(1, 'Rock Revolution', 1 ,'Rock', '2023-05-15');
insert into Album values(2, 'Pop Hits', 2, 'Pop', '2024-01-20');
insert into Album values(3, 'Jazz Vibes', 3, 'Jazz', '2022-11-10');

-- inserting data into Track table
insert into Track values(1, 'Rock Anthem' , 1, 1 , '00:03:45','2023-05-15');
insert into Track values(2, 'I Had Some Help', 2, 2, '00:03:30', '2024-01-20');
insert into Track values(3, 'Smooth Jazz', 3, 3, '00:04:15', '2022-11-10');
insert into Track values(4, 'Highway Tune', 1, 1, '00:04:00', '2023-05-15');

-- inserting data into Playlist table
insert into Playlist values(1, 1, 'My Favorites', '2024-06-01');
insert into Playlist values(2, 2, 'Pop Party', '2024-07-10');
insert into Playlist values(3, 3, 'Chill Jazz', '2024-08-05');

-- inserting data into likes table
insert into Likes(LikeID, UserID, TrackID) values (1, 1, 1);
insert into Likes (LikeID, UserID, TrackID) values (2, 2, 2);
insert into Likes (LikeID, UserID, TrackID) values (3, 3, 3);
insert into Likes (LikeID, UserID, TrackID) values (4, 1, 4);

-- inserting data into Premium features table
insert into PremiumFeature values(1, 'Ad-Free Listening');
insert into PremiumFeature values(2, 'Offline Playback');
insert into PremiumFeature values(3, 'High-Quality Audio');

-- inserting data to subscription plans table
insert into SubscriptionPlan values(1, 'Basic', 9.99, 'Access to music with ads');
insert into SubscriptionPlan values(2, 'Premium', 14.99, 'Ad-free music with offline playback');
insert into SubscriptionPlan values(3, 'Family', 19.99, 'Premium features for up to 6 accounts');

-- inserting dataa to payment table
insert into Payment values(1, 1, 14.99, '2024-09-01', 'Credit Card');
insert into Payment values(2, 2, 19.99, '2024-09-05', 'Paypal');
insert into Payment values(3, 3, 9.99, '2024-09-10', 'Debit Card');
