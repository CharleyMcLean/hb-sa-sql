-- Include your solutions to the More Practice problems in this file.



-- INSERT

cars=# INSERT INTO models (year, brand_name, name)
cars-#     VALUES (2015, 'Chevrolet', 'Malibu')
cars-# ;
INSERT 0 1
cars=# SELECT * FROM models WHERE name = 'Malibu';
 id | year | brand_name |  name  
----+------+------------+--------
 48 | 2015 | Chevrolet  | Malibu
(1 row)

cars=# INSERT INTO models (year, brand_name, name)
    VALUES (2015, 'Subaru', 'Outback')
;
INSERT 0 1
cars=# SELECT * FROM models WHERE name = 'Outback';
 id | year | brand_name |  name   
----+------+------------+---------
 49 | 2015 | Subaru     | Outback
(1 row)


-- CREATE TABLE

cars=# CREATE TABLE awards (
cars(#     name VARCHAR(20) NOT NULL,
cars(#     year INTEGER NOT NULL,
cars(#     winner_id INTEGER NOT NULL
cars(#         REFERENCES models)
cars-# ;
CREATE TABLE
cars=# \d awards
             Table "public.awards"
  Column   |         Type          | Modifiers 
-----------+-----------------------+-----------
 name      | character varying(20) | not null
 year      | integer               | not null
 winner_id | integer               | not null
Foreign-key constraints:
    "awards_winner_id_fkey" FOREIGN KEY (winner_id) REFERENCES models(id)

-- More INSERT

cars=# INSERT INTO awards
cars-# VALUES ('IIHS Safety Award', 2015, 49)
cars-# ;
INSERT 0 1
cars=# SELECT * FROM awards;
       name        | year | winner_id 
-------------------+------+-----------
 IIHS Safety Award | 2015 |        49
(1 row)