/*Q5_Hospital_1*/
select distinct (nurse.fname) from nurse join supervision where (supervision.nurse_id = nurse.id and supervision.room_number !=2);