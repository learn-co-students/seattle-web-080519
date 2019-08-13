# Intro to SQL

1. Install the SQLite Browser if you haven't already [here](http://sqlitebrowser.org/)
2. Open the SQLite Browser and click 'File -> Open DataBase'
3. Choose the `chinook.db` file from this repo. This database is open source and maintained by Microsoft (SQL is no fun if you don't have any data).
4. Click the tab that says 'Execute SQL'. Type SQL queries in the box above. Press the play button. See the results of that query in the box below
##Question :
1. Filter out specific columns in select.

## Challenges
1. Write the SQL to return all of the rows in the artists table?
```SQL
 Models : artist
 - Read
 SELECT * FROM artist;
```

2. Write the SQL to select the artist with the name "Black Sabbath"
```SQL
- Read
Models : artist
SELECT * FROM artists WHERE name = "Black Sabbath";
```

3. Write the SQL to create a table named 'fans' with an auto-incrementing ID that's a primary key and a name field of type text
```sql
Model : fans
- Create
CREATE TABLE fans(
	id INTEGER PRIMARY KEY,
	name TEXT);
```

4. Write the SQL to alter the fans table to have a artist_id column type integer?
```sql
- Alterted
- Update
	ALTER TABLE fans ADD COLUMN artist_id INTEGER;
```

5. Write the SQL to add yourself as a fan of the Black Eyed Peas? ArtistId **169**
```sql
Model : fans
- Create
INSERT INTO fans (name, artist_id) VALUES ("Soundarya",169);
INSERT INTO fans (name, artist_id) VALUES ("Marisa",169);
INSERT INTO fans (name, artist_id) VALUES ("Asif",169);
```

6. Write the SQL to return fans that are not fans of the black eyed peas.
```sql
- Read
SELECT * FROM fans WHERE artist_id != 169;
```

7. remove fans from our DB
```sql
- Delete
DROP TABLE fans;
```

8. Write the SQL to display an artists name next to their album title
```sql
- Read
Models : albums.title, artists.name
SELECT albums.title, artists.name
FROM albums
INNER JOIN artists
ON artists.id == albums.artist_id   
```

9. Write the SQL to display artist name, album title and number of tracks on that album
```sql
Models : artists.name, albums.title, COUNT(tracks)
- Read
SELECT COUNT(tracks.id)AS total_tracks, album_title, artist_name FROM tracks INNER JOIN
	(SELECT albums.id AS alb_id , albums.title AS album_title, 	artists.name AS artist_name
		FROM albums
		INNER JOIN artists
		ON artists.id == albums.artist_id)
ON tracks.album_id == alb_id
GROUP BY album_title
```

10. Write the SQL to return the name of all of the artists in the 'Pop' Genre
```sql
```

## BONUS (very hard)

11. I want to return the names of the artists and their number of rock tracks
    who play Rock music
    and have more than 30 tracks
    in order of the number of rock tracks that they have
    from greatest to least

```sql
```
