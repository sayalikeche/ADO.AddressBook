use AddressBookService
-------------Add------------
Create procedure AddAddressBook
(
@First_Name varchar(150),
@Last_Name varchar(150),
@Address varchar(200),
@City varchar(200),
@State varchar(200),
@Zip int,
@Phone_Number int,
@Email varchar(200),
@Contact int
)
as
begin try
Insert into AddressBook values( @First_Name,@Last_Name,@Address,@City,@State,@Zip,@Phone_Number,@Email,@Contact)
End TRY
BEGIN CATCH
SELECT
ERROR_NUMBER() AS ERRORNumber,
ERROR_STATE() AS ERRORState,
ERROR_PROCEDURE() AS ERRORProcedure,
ERROR_LINE() AS ERRORLine,
ERROR_MESSAGE() AS ERRORMessage;
END CATCH

---------Delete----------
create procedure DeleteAddressBook
(
@id int
)
as 
begin TRY 
delete from AddressBook where id = @id
End TRY
BEGIN CATCH
SELECT
ERROR_NUMBER() AS ERRORNumber,
ERROR_STATE() AS ERRORState,
ERROR_PROCEDURE() AS ERRORProcedure,
ERROR_LINE() AS ERRORLine,
ERROR_MESSAGE() AS ERRORMessage;
END CATCH

-----------Update--------
create procedure UpdateAddressBook
(
@id int,
@firstname varchar(150)
)
as 
begin TRY 
Update AddressBook set First_Name = @firstname where id = @id
 End TRY
BEGIN CATCH
SELECT
ERROR_NUMBER() AS ERRORNumber,
ERROR_STATE() AS ERRORState,
ERROR_PROCEDURE() AS ERRORProcedure,
ERROR_LINE() AS ERRORLine,
ERROR_MESSAGE() AS ERRORMessage;
END CATCH
------------------------------------------
create procedure GetAddressBookTable
(
@id int
)
as 
begin TRY 
select * from AddressBook
End TRY
BEGIN CATCH
SELECT
ERROR_NUMBER() AS ERRORNumber,
ERROR_STATE() AS ERRORState,
ERROR_PROCEDURE() AS ERRORProcedure,
ERROR_LINE() AS ERRORLine,
ERROR_MESSAGE() AS ERRORMessage;
END CATCH