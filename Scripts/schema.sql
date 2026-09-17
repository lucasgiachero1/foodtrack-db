-- CREO LA TABLA FOODTRUCKS
CREATE TABLE FoodTrucks (	
	foodtruck_id INT PRIMARY KEY,
	name NVARCHAR(100) NOT NULL,
	cuisine_type NVARCHAR(100) NOT NULL,
	city NVARCHAR(100) NOT NULL
);




--CREO LA TABLA PRODUCTS

CREATE TABLE Products (	
	product_id INT PRIMARY KEY,
	foodtruck_id INT FOREIGN KEY REFERENCES FoodTrucks(foodtruck_id),
	name NVARCHAR(100) NOT NULL,
	category NVARCHAR(100) NOT NULL,
	price DECIMAL(10,2) CHECK (price>0)
);


-- CREO LA TABLA ORDERS

CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    foodtruck_id INT FOREIGN KEY REFERENCES FoodTrucks(foodtruck_id),
    order_date DATE NOT NULL,
    status NVARCHAR(100) NOT NULL,
    total DECIMAL(10,2) CHECK (total > 0)
);



-- CREO LA TABLA ORDER_ITEMS

CREATE TABLE Order_Items (
    order_item_id INT PRIMARY KEY,
    order_id INT FOREIGN KEY REFERENCES Orders(order_id),
    product_id INT FOREIGN KEY REFERENCES Products(product_id),
    quantity INT NOT NULL CHECK (quantity > 0)
);


-- CREO LA TABLA LOCATIONS

CREATE TABLE Locations (
    location_id INT PRIMARY KEY,
    foodtruck_id INT FOREIGN KEY REFERENCES FoodTrucks(foodtruck_id),
    date DATE NOT NULL,
    zone NVARCHAR(100) NOT NULL
);






--EVOLUCIÓN DEL ESQUEMA

ALTER TABLE Orders
ADD comentarios NVARCHAR(255);
