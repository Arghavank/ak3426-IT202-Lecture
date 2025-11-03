CREATE TABLE categories (
 categoryID       INT(11)        NOT NULL,
 categoryCode     VARCHAR(10)    NOT NULL,
 categoryName     VARCHAR(255)   NOT NULL,
 PRIMARY KEY (categoryID)
);

INSERT INTO categories
(categoryID, categoryCode, categoryName)
VALUES
(100, 'GTR', 'Guitars');

-- Optional
DELETE from categories WHERE `categoryID`=1;
DELETE FROM categories WHERE `categoryID`=2;
DELETE FROM categories WHERE `categoryID`=3;
SELECT * FROM categories;