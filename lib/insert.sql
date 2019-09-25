-- 2 authors
-- 2 sub-genres
-- 2 series
-- 3 books in each series
-- 8 characters
-- 4 characters in each series
-- of each of those 4, make 2 in all of the books in a series, 
    -- and 2 in just 1 book in a series
-- Note you will need to insert values into your character_books join table


INSERT INTO authors (name) VALUES ("Author 1");
INSERT INTO authors (name) VALUES ("Author 2");

INSERT INTO subgenres (name) VALUES ("Sub 1");
INSERT INTO subgenres (name) VALUES ("Sub 2");

INSERT INTO series (title, author_id, subgenre_id) 
    VALUES ("Lord of the Rings", 1, 2);
INSERT INTO series (title, author_id, subgenre_id) 
    VALUES ("Hobbit", 2, 1);

-- 3 books in each series
-- books for "Lord of the Rings"
INSERT INTO books (title, year, series_id) 
    VALUES ("Lotr 1", 2010, 1);
INSERT INTO books (title, year, series_id) 
    VALUES ("Lotr 2", 2012, 1);
INSERT INTO books (title, year, series_id) 
    VALUES ("Lotr 3", 2013, 1);

-- books for "Hobbit"
INSERT INTO books (title, year, series_id) 
    VALUES ("Hob 1", 2014, 2);
INSERT INTO books (title, year, series_id) 
    VALUES ("Hob 2", 2016, 2);
INSERT INTO books (title, year, series_id) 
    VALUES ("Hob 3", 2017, 2);

-- 4 characters in each series
INSERT INTO characters (name, motto, species, author_id) 
    VALUES ("Frodo", "Ring carrier", "Hobbit", 1);
INSERT INTO characters (name, motto, species, author_id) 
    VALUES ("Gamgee", "Help prodo", "Hobbit", 1);
INSERT INTO characters (name, motto, species, author_id) 
    VALUES ("Legolas", "Save prodo", "Elf", 1);
INSERT INTO characters (name, motto, species, author_id) 
    VALUES ("Aragorn", "Save everyone", "Human", 1);

INSERT INTO characters (name, motto, species, author_id) 
    VALUES ("Bilbo", "Ring carrier", "Hobbit", 2);
INSERT INTO characters (name, motto, species, author_id) 
    VALUES ("Gandlf", "Save the world", "Wizard", 2);
INSERT INTO characters (name, motto, species, author_id) 
    VALUES ("Gollum", "Ring stealer", "Hobbit/monster", 2);
INSERT INTO characters (name, motto, species, author_id) 
    VALUES ("Thorin", "I am the king", "Dwarf", 2);

-- insert values into your character_books join table
-- of each of those 4, make 2 in all of the books in a series, 
    -- and 2 in just 1 book in a series
INSERT INTO character_books (book_id, character_id) VALUES (1, 1), (2, 1), (3, 1);
INSERT INTO character_books (book_id, character_id) VALUES (1, 2), (2, 2), (3, 2);
INSERT INTO character_books (book_id, character_id) VALUES (2, 3);
INSERT INTO character_books (book_id, character_id) VALUES (3, 4);

INSERT INTO character_books (book_id, character_id) VALUES (4, 5);
INSERT INTO character_books (book_id, character_id) VALUES (4, 6), (5, 6), (6, 6);
INSERT INTO character_books (book_id, character_id) VALUES (4, 7), (5, 7), (6, 7);
INSERT INTO character_books (book_id, character_id) VALUES (5, 8);