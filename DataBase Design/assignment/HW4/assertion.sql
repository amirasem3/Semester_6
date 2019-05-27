


select count(room_number)/ (select count(room_number) from room where type =1 or type =2 ) from room where type = 2;

create assertion check (30 >=(select count(room_number)/ (select count(room_number) from room where type =1 or type =2 )*100 from room where type = 2);