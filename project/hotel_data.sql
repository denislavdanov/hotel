insert  into Guests (first_name, last_name, phone_number, birth_date, id_card_number) 
values ('Iliyan ', 'Petkov', '0879263647', '1998-04-05', '9804051234'),
('Angel ', 'Todorov', '0892636742', '1995-06-07', '9506078432'),
('Petar ', 'Georgiev', '0878374647', '1993-07-08', '9307083136'),
('Viktoria ', 'Veleva', '0893612833', '1999-04-05', '9905049845'),
('Kristen ', 'Angelova', '0877368573', '1992-03-05', '9903051415'),
('Dakota ', 'Ivanova', '0876263748', '1994-02-02', '9402024839'),
('Jasmin ', 'Petrova', '0883728473', '1987-02-08', '8702083123'),
('lily ', 'James', '0873612822', '1999-09-09', '9909091999'),
('Velislav ','Venelinov', '0897368282', '1991-02-01', '9102012838'),
('Teodora ', 'Ivanova', '087214362', '1988-10-02', '9810023435'),
('Natasha ', 'Dimitrova', '089214311', '1989-11-02', '8911021412'),
('Dimitur ', 'Dimitrov', '0892143112', '1990-11-02', '9011021413');
insert  into RoomTypes(type)
values ('Single'),
('Double'),
('VIP'),
('Apartment');
insert into Rooms( room_type_id ,number_of_beds,room_view,room_floor)
values(1 , '1' , 'street' , '4'),
(2 , '2' , 'trees' , '6'),
(3 , '3' , 'ocean' , '15'), 
(4 , '4' , 'ocean' , '10'),
(4 , '5' , 'beach' , '14'),
(1 , '1' , 'sky' , '17');


insert  into Packages(type)
values('Standart'),
('All Inclusive'),
('Ultra All Inclusive');
insert  into  Amenities(name)
values('Parking'),
('Wi-Fi'),
('Breakfast'),
('Swimming pool'),
('Buffet'),
('Room service'),
('Fitness center'),
('Free drinks'),
('Spa');
insert  into  PackageAmenities(package_id,amenity_id)
values(1 , 1),
(1 , 2),
(1 , 3),
(1 , 4),
(2 , 1),
(2 , 2),
(2 , 3),
(2 , 4),
(2 , 5),
(2 , 6),
(3 , 1),
(3 , 2),
(3 , 3),
(3 , 4),
(3 , 5),
(3 , 6),
(3 , 7),
(3 , 8),
(3 , 9);
insert into PackageSummaries(room_type_id,package_id  ,price_per_night)
values(1 , 1 , '50'),
(1 , 2 , '75'),
(1 , 3 , '100'),
(2 , 1 , '100'),
(2 , 2 , '125'),
(2 , 3 , '150'),
(3 , 1 , '175'),
(3 , 2 , '200'),
(3 , 3 , '225'),
(4 , 1 , '175'),
(4 , 2 , '250'),
(4 , 3 , '300');

insert  into Reservations( room_id , guest_id , PS_id , price_paid , start_date , end_date )
values(1 , 1 , 1 ,'50' , '2020-04-22', '2020-04-23'),
(2 , 2 , 3 ,'400' , '2020-04-22', '2020-04-24'),
(3 , 4 , 4 ,'525' , '2020-04-22', '2020-04-25'),
(4 , 7 , 10 , '350' , '2020-06-23', '2020-06-25');




insert  into RoomGuests( reservation_id ,guest_id,rating)
values(1 , 1 , '3'),
(2 , 2 , '4'),
(2, 3, '3.5'),
(3, 4 , '5'),
(3, 5 , '4.5'),
(3, 6 , '3.7'),
(4 , 7 , '2'),
(4 , 8 , '3'),
(4 , 9 , '4'),
(4 , 10 , '5');
