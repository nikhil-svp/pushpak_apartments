create database Pushpak_apartment
use Pushpak_apartment
create table pushpak_vehicle_proforma
(
Block Varchar(1),
Flat_number int ,
vehicle_type varchar(10),
vehicle_count int
);
select * from  pushpak_vehicle_proforma;
insert into pushpak_vehicle_proforma (Block,Flat_number,vehicle_type,vehicle_count) values ('A',101,'CAR',2), ('A',207,'BIKE',1), ('A',327,'CAR',1),
('E',202,'CAR',2),('E',303,'CAR',3),('E',412,'BIKE',1),('C',101,'CAR',1),('C',101,'BIKE',1),('C',107,'CAR',1),('C',112,'BIKE',2);

-- REQUIREMENT: DISPLAY WHICH RESIDENT HAS MORE THAN ONE VEHICLE
select Flat_number, sum(vehicle_count) as total_vehicle_count from pushpak_vehicle_proforma  group by Flat_number having sum(vehicle_count)>1;

-- REQUIREMENT: DISPLAY WHICH RESIDENT HAS MORE THAN ONE VEHICLE, INCLUDING BLOCK INFORMATION
select Block, Flat_number, sum(vehicle_count) as total_vehicle_count from pushpak_vehicle_proforma  group by Block, Flat_number having sum(vehicle_count)>1;

