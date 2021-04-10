use hotel
drop procedure bookRoom if exists
delimiter $ 
create procedure bookRoom(in roomID int, in guestID int, in PSID int, in price int, in startDate Date, in endDate Date)
begin
if not exists (select 1 from Reservations where room_id=@roomID and guest_id=@guestID and PS_id=@PSID and price_paid=@price and start_date=@startDate and end_date=@endDate )
then
insert into Reservations(room_id, guest_id, PS_id, price_paid, start_date, end_date)
values (roomID,guestID,PSID,price,startDate,endDate);
else
select 'room is already booked' as error;
end if;
end;
$
delimiter ;

set @roomID=5;
set @guestID=11;
set  @PSID=2;
set @price=445;
set @startDate='2022-06-23'; 
set @endDate='2022-06-26';
call bookRoom(@roomID,@guestID,@PSID,@price,@startDate,@endDate);