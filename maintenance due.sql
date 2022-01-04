--SQL QUERIES THAT PRESENT INFORMATION RELATED TO PUSHPAK APARTMENTS.

-- MAINTENANCE DUE 
-- VEHICLE PROFORMA

create table maintenance_due
(
block varchar,
flat_number int,
due_amount int
)
insert into maintenance_due (block,flat_number,due_amount) values ('A',101,1000),('A',203,2000),('B',311,2200),('C',319,3300),('C',105,3700),('D',203,1100)

alter table maintenance_due
add payment_status varchar;

select * from maintenance_due

update maintenance_due set due_amount=1000 where block='A' ;
update maintenance_due set due_amount=3000 where block='C' ;

update maintenance_due set payment_status='Y' where flat_number=203
update maintenance_due set payment_status='Y' where flat_number=311
update maintenance_due set payment_status='Y' where flat_number=105
update maintenance_due set payment_status='N' where flat_number=203 and block='D'
update maintenance_due set payment_status='N' where flat_number=319
update maintenance_due set payment_status='N' where flat_number=101

--REQUIREMENT: DISPLAY DETAILS OF RESIDENTS THAT DID NOT PAY THE MAINTENANCE DUES--
select * from maintenance_due where payment_status='N'