create table tbl_flashClient
(
Id int primary key identity(1,1),
ClUserID varchar(50),
ClCompName varchar(50),
ClName varchar(50),
ClEmail varchar(50),
ClMobile varchar(50),
ClAddress varchar(50),
ClCity varchar(50),
ClState varchar(50)
)

select * from tbl_flashClient

------------------------------------

create procedure sp_clientInsert
( 
        @ClUserID varchar(50),
		@ClCompName varchar(50),
		@ClName varchar(50),
		@ClEmail varchar(50),
		@ClMobile varchar(50),
		@ClAddress varchar(50),
		@ClCity varchar(50),
		@ClState varchar(50)
)
as begin
insert into tbl_flashClient
   (ClUserID,ClCompName,ClName,ClEmail,ClMobile,ClAddress,ClCity,ClState)
   values (@ClUserID,@ClCompName,@ClName,@ClEmail,@ClMobile,@ClAddress,@ClCity,@ClState)
end

-------------------------------------------

create procedure sp_clientUpdate
(
        @ClUserID varchar(50),
		@ClCompName varchar(50),
		@ClName varchar(50),
		@ClEmail varchar(50),
		@ClMobile varchar(50),
		@ClAddress varchar(50),
		@ClCity varchar(50),
		@ClState varchar(50)
)
as begin
update tbl_flashClient set ClUserID=@ClUserID,
	ClCompName = @ClCompName,
	ClName = @ClName,
	ClEmail = @ClEmail,
	ClMobile = @ClMobile,
	ClAddress = @ClAddress,
	ClCity = @ClCity,
	ClState = @ClState
	where ClUserID=@ClUserID
end

-------------------------------------

create procedure sp_clientDelete
(
    @ClUserID varchar(50)
)
as begin
delete from tbl_flashClient where ClUserID=@ClUserID
end

---------------------------------------

create procedure sp_clientFetch
as begin
select * from tbl_flashClient
end

-----------------------------------------

create procedure sp_clientSearch
(
    @searchClient varchar(50)
)
as begin
select * from tbl_flashClient where ClName like'%'+ @searchClient +'%'
end
