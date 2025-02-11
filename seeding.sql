-- Create the database
CREATE DATABASE lab_mysql;

-- Use the created database
USE lab_mysql;

-- Create the Cars table
CREATE TABLE Cars (
    car_id INT AUTO_INCREMENT PRIMARY KEY,
    VIN VARCHAR(50) NOT NULL,
    manufacturer VARCHAR(50),
    model VARCHAR(50),
    year INT,
    color VARCHAR(20)
);

-- Create the Customers table
CREATE TABLE Customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    phone VARCHAR(20),
    email VARCHAR(100),
    address VARCHAR(255),
    city VARCHAR(50),
    state_province VARCHAR(50),
    country VARCHAR(50),
    postal_code VARCHAR(20)
);

-- Create the Salespersons table
CREATE TABLE Salespersons (
    staff_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    store VARCHAR(100)
);

-- Create the Invoices table
CREATE TABLE Invoices (
    invoice_id INT AUTO_INCREMENT PRIMARY KEY,
    invoice_number VARCHAR(50),
    date DATE,
    car_id INT,
    customer_id INT,
    staff_id INT,
    FOREIGN KEY (car_id) REFERENCES Cars(car_id),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    FOREIGN KEY (staff_id) REFERENCES Salespersons(staff_id)
);

-- Seeding data for Cars table
INSERT INTO Cars (VIN, manufacturer, model, year, color)
VALUES
('3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', 2019, 'Blue'),
('ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', 2019, 'Red'),
('RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', 2018, 'White'),
('HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4', 2018, 'Silver'),
('DAM41UDN3CHU2WVF6', 'Volvo', 'V60', 2019, 'Gray'),
('DAM41UDN3CHU2WVF6', 'Volvo', 'V60 Cross Country', 2019, 'Gray');

-- Seeding data for Customers table
INSERT INTO Customers (name, phone, email, address, city, state_province, country, postal_code)
VALUES
('Pablo Picasso', '+34 636 17 63 82', 'ppicasso@gmail.com', 'Paseo de la Chopera, 14', 'Madrid', 'Madrid', 'Spain', '28045'),
('Abraham Lincoln', '+1 305 907 7086', 'lincoln@us.gov', '120 SW 8th St', 'Miami', 'Florida', 'United States', '33130'),
('Napoléon Bonaparte', '+33 1 79 75 40 00', 'hello@napoleon.me', '40 Rue du Colisée', 'Paris', 'Île-de-France', 'France', '75008');

-- Seeding data for Salespersons table
INSERT INTO Salespersons (name, store)
VALUES
('Petey Cruiser', 'Madrid'),
('Anna Sthesia', 'Barcelona'),
('Paul Molive', 'Berlin'),
('Gail Forcewind', 'Paris'),
('Paige Turner', 'Miami'),
('Bob Frapples', 'Mexico City'),
('Walter Melon', 'Amsterdam'),
('Shonda Leer', 'São Paulo');

-- Seeding data for Invoices table
INSERT INTO Invoices (invoice_number, date, car_id, customer_id, staff_id)
VALUES
('852399038', '2018-08-22', 1, 2, 3),
('731166526', '2018-12-31', 4, 1, 5),
('271135104', '2019-01-22', 3, 3, 7);
