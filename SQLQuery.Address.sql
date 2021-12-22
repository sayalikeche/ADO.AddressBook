UC1
create database AddressBookService;


use AddressBookService;



UC2
CREATE TABLE AddressBook1
(
id INT  IDENTITY (1,1) PRIMARY KEY not null ,
First_Name VARCHAR(150) not null,
Last_Name VARCHAR(150) not null,
Address VARCHAR (200) not null,
City VARCHAR (200) not null,
State VARCHAR (200) not null,
Zip Varchar(4) not null,
Phone_Number varchar(10)not null,
Email VARCHAR (200) not null,
);




UC3
ALTER TABLE AddressBook1 ADD Contact Varchar(10) null;
insert into AddressBook1( First_Name,Last_Name,Address ,City,State,Zip,Phone_Number,Email) 
Values
('Sayali','Keche','TapvonComplex','Nagpur','Maharashtra',1234,123456789,'abc@gmail.com'),
('Shubham','Keche','ShankarNagar','Nagpur','Maharashtra',4567,9876654321,'srk09@gmail.com'),
('Kartik','Gautam','PandeyLayout','Pune','Maharashtra',4402,9898656543,'kartik@yahoo.com'),
('Ashwini','Sharam','ShivajiNagar','Mumbai','Maharashtra',4015,2545678931,'ashu22@gmail.com');




UC4
update AddressBook1 set Contact=123456789 where First_Name ='Sayali';
update AddressBook1 set Contact=659874123 where First_Name ='Shubham';



Select * from AddressBook1

UC5
delete from AddressBook1 where First_Name ='Kartik'



UC6
SELECT * from AddressBook1 where City='Nagpur';



UC7
exec sp_help AddressBook1

SELECT COUNT(City) as ContactCount From AddressBook1 where City = 'Nagpur' GROUP BY City;
SELECT COUNT(State) as ContactCount From AddressBook1 where State = 'Pune' GROUP BY State;

UC8
SELECT * from AddressBook1 ORDER BY  City ASC;




UC9

ALTER TABLE AddressBook1 ADD Name_type Varchar(20) null;
update AddressBook1 set Name_type ='Me' where First_Name= 'Sayali';
update AddressBook1 set Name_type ='Brother' where First_Name= 'Shubham';
update AddressBook1 set Name_type ='Friend' where First_Name= 'Kartik';
update AddressBook1 set Name_type ='Friend' where First_Name= 'Ashwini';

uc10

SELECT COUNT(Contact) as BrotherCOUNT From AddressBook1 Where Name_type = 'Brother' GROUP BY Name_type;












