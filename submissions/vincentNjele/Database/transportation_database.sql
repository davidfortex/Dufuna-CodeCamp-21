CREATE DATABASE Trasportation;

USE Transportation;

/* passegers_table comes here*/

CREATE TABLE passengers_table(
id INT NOT NULL auto_increment,
full_name VARCHAR(255) NOT NULL,
sex VARCHAR(255) NOT NULL,
age INT NULL,
primary key(id)
)

/* passeger_class_table comes here*/

CREATE TABLE passengers_class_table(
id INT NOT NULL auto_increment,
class_type INT NOT NULL,
primary key(id)
)

/* tickets_table comes here*/

CREATE TABLE tickets_table(
id INT NOT NULL auto_increment,
passenger_id INT NOT NULL,
passenger_class_id INT NOT NULL,
date_bought INT NOT NULL,
ticken_number  VARCHAR(255) NOT NULL,
primary key(id), 
foreign key(passenger_id) references passengers_table(id),
foreign key(passenger_class_id) references passengers_table(id)
)

/* cabins_table comes here*/

CREATE TABLE cabins_table(
id INT NOT NULL auto_increment,
cabin_description VARCHAR(255) NOT NULL,
primary key(id)
)

/* trips_table comes here*/
CREATE TABLE trips_table(
id INT NOT NULL auto_increment,
passenger_id INT NOT NULL,
ticket_id INT NOT NULL,
trip_fare DOUBLE NOT NULL,
cabin_id INT NOT NULL,
number_of_parents INT NOT NULL,
number_of_children INT NOT NULL,
number_of_siblings INT NOT NULL,
number_of_spouses INT NOT NULL,
embarkation_point VARCHAR(255) NOT NULL,
primary key(id),
foreign key(passenger_id) references passengers_table(id),
foreign key(ticket_id) references tickets_table(id),
foreign key(cabin_id) references cabins_table(id)

)

/* accidents_table comes here*/
CREATE TABLE accidents_table(
id INT NOT NULL auto_increment,
passenger_id INT NOT NULL,
survival_status VARCHAR(255) NOT NULL,
primary key(id),
foreign key(passenger_id) references passengers_table(id)
)

