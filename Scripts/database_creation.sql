CREATE database flower_shop;
use flower_shop;

create table customers (
	id int primary key, 
    name varchar(50), 
    created_date date,
    phone_number varchar(13)
);

create table flowers (
	id int primary key,
	name varchar(50),
	cost int
);

create table bouquets (
	id int primary key, 
	name varchar(50),
	cost int,
	price int
);

create table bouquets2flowers(
	flower_id int,
	bouquet_id int,
	quantity int,
	primary key (flower_id, bouquet_id),
	foreign key (flower_id) references flowers(id),
	foreign key (bouquet_id) references bouquets(id)
);

create table orders(
	id int primary key,
	order_date date,
	customer_id int,
	bouquet_id int, 
	foreign key (bouquet_id) references bouquets(id),
	foreign key (customer_id) references customers(id)
);

insert into flowers (id, name, cost) VALUES
(1, 'Rose', 10),
(2, 'Tulip', 5),
(3, 'Daisy', 3),
(4, 'Lily', 7),
(5, 'Orchid', 12),
(6, 'Sunflower', 8),
(7, 'Carnation', 6),
(8, 'Peony', 11),
(9, 'Lavender', 4),
(10, 'Iris', 9),
(11, 'Marigold', 5),
(12, 'Chrysanthemum', 7),
(13, 'Jasmine', 4),
(14, 'Hydrangea', 13),
(15, 'Poppy', 6);

INSERT INTO bouquets (id, name, cost, price) VALUES
(1, 'Romantic Roses', 20, 50),
(2, 'Tulip Dreams', 15, 40),
(3, 'Daisy Delight', 10, 30),
(4, 'Sunny Sunflowers', 18, 45),
(5, 'Lavender Peace', 12, 35),
(6, 'Peony Perfection', 22, 55),
(7, 'Orchid Elegance', 30, 70),
(8, 'Carnation Charm', 14, 38),
(9, 'Hydrangea Harmony', 25, 60),
(10, 'Iris Fantasy', 17, 42);

-- Romantic Roses: Mainly Roses with some Carnations
INSERT INTO bouquets2flowers (flower_id, bouquet_id, quantity) VALUES
(1, 1, 10), -- Roses
(7, 1, 5);  -- Carnations

-- Tulip Dreams: Mostly Tulips with some Peonies
INSERT INTO bouquets2flowers (flower_id, bouquet_id, quantity) VALUES
(2, 2, 8),  -- Tulips
(8, 2, 4);  -- Peonies

-- Daisy Delight: Daisies and Sunflowers
INSERT INTO bouquets2flowers (flower_id, bouquet_id, quantity) VALUES
(3, 3, 7),  -- Daisies
(6, 3, 3);  -- Sunflowers

-- Sunny Sunflowers: Sunflowers with a mix of Lavender and Marigolds
INSERT INTO bouquets2flowers (flower_id, bouquet_id, quantity) VALUES
(6, 4, 6),  -- Sunflowers
(9, 4, 3),  -- Lavender
(11, 4, 4); -- Marigolds

-- Lavender Peace: Lavender and Jasmine
INSERT INTO bouquets2flowers (flower_id, bouquet_id, quantity) VALUES
(9, 5, 8),  -- Lavender
(13, 5, 5); -- Jasmine

-- Peony Perfection: Peonies and Roses
INSERT INTO bouquets2flowers (flower_id, bouquet_id, quantity) VALUES
(8, 6, 7),  -- Peonies
(1, 6, 3);  -- Roses

-- Orchid Elegance: Orchids with Hydrangeas
INSERT INTO bouquets2flowers (flower_id, bouquet_id, quantity) VALUES
(5, 7, 6),  -- Orchids
(14, 7, 4); -- Hydrangeas

-- Carnation Charm: Carnations, Tulips, and Poppies
INSERT INTO bouquets2flowers (flower_id, bouquet_id, quantity) VALUES
(7, 8, 5),  -- Carnations
(2, 8, 4),  -- Tulips
(15, 8, 3); -- Poppies

-- Hydrangea Harmony: Hydrangeas, Roses, and Jasmine
INSERT INTO bouquets2flowers (flower_id, bouquet_id, quantity) VALUES
(14, 9, 6), -- Hydrangeas
(1, 9, 4),  -- Roses
(13, 9, 2); -- Jasmine

-- Iris Fantasy: Iris, Marigolds, and Daisies
INSERT INTO bouquets2flowers (flower_id, bouquet_id, quantity) VALUES
(10, 10, 6), -- Iris
(11, 10, 3), -- Marigolds
(3, 10, 5);  -- Daisies


INSERT INTO customers (id, name, created_date, phone_number) VALUES
(1, 'Amelia Evans', '2023-05-10', '5551234561'),
(2, 'Sophia Morgan', '2023-05-15', '5551234562'),
(3, 'Isabella Carter', '2023-05-20', '5551234563'),
(4, 'Charlotte Bennett', '2023-06-05', '5551234564'),
(5, 'Ava Henderson', '2023-06-12', '5551234565'),
(6, 'Mia Robinson', '2023-06-20', '5551234566'),
(7, 'Evelyn Mitchell', '2023-07-01', '5551234567'),
(8, 'Abigail Adams', '2023-07-08', '5551234568'),
(9, 'Emily Foster', '2023-07-15', '5551234569'),
(10, 'Scarlett Ramirez', '2023-07-20', '5551234570'),
(11, 'Victoria Simmons', '2023-08-01', '5551234571'),
(12, 'Grace Parker', '2023-08-05', '5551234572'),
(13, 'Olivia Howard', '2023-08-10', '5551234573'),
(14, 'Hannah Brooks', '2023-08-15', '5551234574'),
(15, 'Lily Cooper', '2023-08-20', '5551234575'),
(16, 'Ella Collins', '2023-09-01', '5551234576'),
(17, 'Sofia Morris', '2023-09-05', '5551234577'),
(18, 'Zoe Sanders', '2023-09-10', '5551234578'),
(19, 'Aria Russell', '2023-09-12', '5551234579'),
(20, 'Nora Peterson', '2023-09-15', '5551234580');


INSERT INTO orders (id, order_date, customer_id, bouquet_id) VALUES
(1, '2024-01-05', 1, 1),
(2, '2024-01-15', 2, 2),
(3, '2024-01-20', 3, 3),
(4, '2024-02-01', 4, 4),
(5, '2024-02-10', 5, 5),
(6, '2024-02-15', 6, 6),
(7, '2024-02-25', 7, 7),
(8, '2024-03-05', 8, 8),
(9, '2024-03-10', 9, 9),
(10, '2024-03-15', 10, 10),
(11, '2024-03-20', 11, 1),
(12, '2024-04-01', 12, 2),
(13, '2024-04-10', 13, 3),
(14, '2024-04-20', 14, 4),
(15, '2024-05-01', 15, 5),
(16, '2024-05-10', 16, 6),
(17, '2024-05-15', 17, 7),
(18, '2024-05-20', 18, 8),
(19, '2024-06-01', 19, 9),
(20, '2024-06-10', 20, 10),
(21, '2024-06-15', 1, 1),
(22, '2024-06-20', 2, 2),
(23, '2024-07-01', 3, 3),
(24, '2024-07-10', 4, 4),
(25, '2024-07-15', 5, 5),
(26, '2024-07-20', 6, 6),
(27, '2024-08-01', 7, 7),
(28, '2024-08-05', 8, 8),
(29, '2024-08-10', 9, 9),
(30, '2024-08-15', 10, 10),
(31, '2024-08-20', 11, 1),
(32, '2024-09-01', 12, 2),
(33, '2024-09-05', 13, 3),
(34, '2024-09-10', 14, 4),
(35, '2024-09-12', 15, 5),
(36, '2024-09-14', 16, 6),
(37, '2024-09-15', 17, 7),
(38, '2024-09-16', 18, 8),
(39, '2024-09-18', 19, 9),
(40, '2024-09-20', 20, 10);

INSERT INTO orders (id, order_date, customer_id, bouquet_id) VALUES
(41, '2024-01-08', 2, 3),
(42, '2024-01-18', 4, 1),
(43, '2024-01-25', 5, 2),
(44, '2024-02-02', 6, 4),
(45, '2024-02-11', 7, 5),
(46, '2024-02-18', 9, 6),
(47, '2024-02-28', 10, 7),
(48, '2024-03-02', 12, 8),
(49, '2024-03-08', 13, 9),
(50, '2024-03-12', 15, 10),
(51, '2024-03-18', 1, 1),
(52, '2024-03-28', 3, 2),
(53, '2024-04-03', 6, 3),
(54, '2024-04-08', 8, 4),
(55, '2024-04-12', 11, 5),
(56, '2024-04-15', 13, 6),
(57, '2024-04-28', 14, 7),
(58, '2024-05-05', 16, 8),
(59, '2024-05-08', 18, 9),
(60, '2024-05-15', 19, 10),
(61, '2024-05-18', 20, 1),
(62, '2024-06-02', 2, 2),
(63, '2024-06-07', 4, 3),
(64, '2024-06-12', 5, 4),
(65, '2024-06-18', 7, 5),
(66, '2024-06-25', 9, 6),
(67, '2024-07-02', 10, 7),
(68, '2024-07-06', 11, 8),
(69, '2024-07-12', 13, 9),
(70, '2024-07-18', 14, 10),
(71, '2024-08-03', 16, 1),
(72, '2024-08-08', 17, 2),
(73, '2024-08-12', 18, 3),
(74, '2024-08-18', 19, 4),
(75, '2024-08-25', 20, 5),
(76, '2024-09-02', 1, 6),
(77, '2024-09-06', 3, 7),
(78, '2024-09-11', 5, 8),
(79, '2024-09-17', 8, 9),
(80, '2024-09-19', 12, 10);

