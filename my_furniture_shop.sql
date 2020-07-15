-- create and select the database
DROP DATABASE IF EXISTS my_furniture_shop;
CREATE DATABASE my_furniture_shop;
USE my_furniture_shop;  -- MySQL command

-- create the tables
CREATE TABLE categories (
  categoryID       INT(11)        NOT NULL   AUTO_INCREMENT,
  categoryName     VARCHAR(255)   NOT NULL,
  PRIMARY KEY (categoryID)
);

CREATE TABLE products (
  productID        INT(11)        NOT NULL   AUTO_INCREMENT,
  categoryID       INT(11)        NOT NULL,
  productCode      VARCHAR(10)    NOT NULL   UNIQUE,
  productName      VARCHAR(255)   NOT NULL,
  listPrice        DECIMAL(10,2)  NOT NULL,
  PRIMARY KEY (productID)
);

CREATE TABLE orders (
  orderID        INT(11)        NOT NULL   AUTO_INCREMENT,
  customerID     INT            NOT NULL,
  orderDate      DATETIME       NOT NULL,
  PRIMARY KEY (orderID)
);

-- insert data into the database
INSERT INTO categories VALUES
(1, 'Tables'),
(2, 'Chairs'),
(3, 'Sofas');

INSERT INTO products VALUES
(1, 1, 'swirled', 'Swirled Dining Table', '2198.00'),
(2, 1, 'jori', 'Jori Pedestal Dining Table', '249.50'),
(3, 1, 'oscarine', 'Oscarine Lucite Dining Table', '424.50'),
(4, 1, 'zeus', 'Zeus Dining Table', '449.50'),
(5, 1, 'annaway', 'Annaway Dining Table', '299.50'),
(6, 1, 'quillen', 'Quillen Marquetry Dining Table', '224.50'),
(7, 1, 'seaford', 'Seaford Pedestal Dining Table', '324.50'),
(8, 1, 'oak', 'Oak Profile Dining Table', '2498.00'),
(9, 1, 'smoked', 'Smoked Oak Dining Table', '1998.00'),
(10, 1, 'vivien', 'Vivien Metal Bistro Table', '898.00'),
(11, 1, 'sonali', 'Sonali Dining Table', '1698.00'),
(12, 1, 'anders', 'Anders Oak Dining Table', '1198.00'),
(13, 1, 'corbyn', 'Corbyn Square Dining Table', '498.00'),
(14, 1, 'hardcarved.png', 'Handcarved Menagerie Dining Table', '3298.00'),
(15, 1, 'quillen2', 'Quillen Marquetry Bistro Table', '698.00'),
(16, 1, 'nemus', 'Nemus Dining Table', '1498.00'),
(17, 1, 'concrete', 'Concrete Dining Table', '1799.00'),
(18, 2, 'gilmour', 'Gilmour Leather Chair', '2298.00'),
(19, 2, 'sarrono', 'Sarrono Accent Chair', '848.99'),
(20, 2, 'nadia', 'Nadia Caned Accent Chair', '898.00'),
(21, 2, 'claudia', 'Claudia Petite Swivel Chair', '1198.00'),
(22, 2, 'rug_printed', 'Rug-Printed Boro Stripe Armchair', '224.00'),
(23, 2, 'rivona', 'Rivona Leather Chair', '1998.00'),
(24, 2, 'rochelle', 'Rochelle Swivel Chair', '1198.00'),
(25, 2, 'penny', 'Penny Chair', '998.00'),
(26, 2, 'bone', 'Bone Inlay Rani Accent Chair', '998.00'),
(27, 3, 'gilmour2', 'Gilmour Two-Cushion Sofa', '1898.00'),
(28, 3, 'ella', 'Ella Sofa', '2298.00'),
(29, 3, 'asymmetrical', 'Asymmetrical Serpentine Sofa', '2798.00'),
(30, 3, 'bowen', 'Bowen Sofa', '1498.00'),
(31, 3, 'relaxed', 'Relaxed Saguaro Sofa', '2598.00'),
(32, 3, 'mina', 'Mina Two-Cushion Sofa', '1918.50'),
(33, 3, 'goleta', 'Goleta Sofa', '4698.00'),
(34, 3, 'lyre', 'Lyre Chesterfield Two-Cushion Sofa', '1738.00'),
(35, 3, 'pied', 'Pied-A-Terre Sofa', '2498.00');


-- create the users and grant priveleges to those users
GRANT SELECT, INSERT, DELETE, UPDATE
ON my_furniture_shop.*
TO mgs_user@localhost
IDENTIFIED BY 'pa55word';

GRANT SELECT
ON products
TO mgs_tester@localhost
IDENTIFIED BY 'pa55word';

