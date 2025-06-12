
-- sql statements
use Music_Streaming;


-- selecting all users
select * from User;

-- total users
select count(*) as total_User from User;


-- selecting premium featues table
select * from PremiumFeature; 


-- identify users who like tracks from specific genres

select u.username, t.Title as Track_Title, a.Name as Artist_Name, al.Title as Album_Title
from likes l join User u on l.UserID = u.UserID
join track t on l.TrackID = t.TrackID
join Artist a on t.ArtistID = a.ArtistID
join Album al on t.AlbumID = al.AlbumID
where al.Genre = 'Rock'
order by u.Username, t.Title;


-- Analyze payment actvityy for premium users
select u.username,
sp.Name as Subscription_plan, sp.price, count(p.Payment_ID) as Payment_Count, SUM(p.Amount) as Total_Paid
from User u join payment p on u.UserID = p.User_ID
join SubscriptionPlan sp on p.Amount = sp.price
where sp.price > 10.00
group by u.UserID, u.Username, sp.Name, sp.Price
having Payment_Count >= 1
order by Total_Paid DESC;

-- find popular tracks across users with artist and album details
select t.Title as Track_Title, a.Name as ArtistName, al.Title as Album_title, COUNT(l.UserID) as Like_Count
from Track t join Artist a on t.ArtistID = a.ArtistID
join album al on t.AlbumID = al.albumID
join Likes l on t.TrackID = l.TrackID
group by t.TrackID, t.Title, a.Name, al.Title
having Like_Count >= 1
order by t.Title;
