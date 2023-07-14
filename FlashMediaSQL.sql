create table tbl_flashMedia
(
Id int primary key identity(1,1),
FlashName varchar(50),
FlashEmail varchar(50),
FlashPassword varchar(50)
)

select * from tbl_flashMedia
-------------------------------------

create procedure sp_flashLogin
(
	@flEmail varchar(50),
	@flPassword varchar(50)
)
as
begin
	select count(1) from tbl_flashMedia
	where FlashEmail=@flEmail and FlashPassword=@flPassword
end

---------------------------------------

create procedure sp_flashSignup
(
	@flName varchar(50),
	@flEmail varchar(50),
	@flPassword varchar(50)
)
as
begin
	insert into tbl_flashMedia
	(FlashName,FlashEmail,FlashPassword)
	values(@flName,@flEmail,@flPassword)
end

--------------------------------------------

--------------------------------------------


