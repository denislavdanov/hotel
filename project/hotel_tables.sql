drop database if exists hotel ;
create database hotel ;
use hotel;
create table Guests (
	id int not null auto_increment primary key ,
	first_name varchar(200) not null,
	last_name varchar(200) not null,
	phone_number varchar(200) not null,
	birth_date Date not null,
id_card_number varchar(200) not null
); 

create table RoomTypes (
id int not null auto_increment primary key,
type varchar(200) not null
);

create table Rooms (
id int not null auto_increment primary key,
room_type_id int not null,
constraint foreign key (room_type_id) references RoomTypes(id),
number_of_beds int not null,
room_view varchar(200) not null,
room_floor int not null
);

create table Packages (
	id int not null auto_increment primary key,
type varchar(200) not null
);

create table Amenities (
	id int not null auto_increment primary key,
	name varchar(200) not null
);

create table PackageAmenities (
	id int not null auto_increment primary key,
    package_id int not null,
	constraint foreign key (package_id) references Packages(id),
      amenity_id  int not null,
constraint foreign key (amenity_id) references Amenities(id) 
);

create table PackageSummaries (
id int not null auto_increment primary key,
room_type_id int not null,
constraint foreign key (room_type_id)  references RoomTypes(id),
package_id  int not null,
constraint foreign key (package_id)  references Packages(id),
price_per_night int not null
);

create table Reservations (
	id int not null auto_increment primary key,
    room_id int not null,
	constraint foreign key (room_id) references Rooms(id),
      guest_id int not null,
constraint foreign key (guest_id)  references Guests(id),
PS_id int not null,
constraint foreign key (PS_id) references PackageSummaries(id),
price_paid int not null,
	start_date Date not null,
	end_date Date not null
);


create table RoomGuests(
	id int not null auto_increment primary key,
    reservation_id int not null,
	constraint foreign key (reservation_id)  references Reservations(id),
     guest_id int not null,
	constraint foreign key (guest_id) references Guests(id),
rating int not null
);






