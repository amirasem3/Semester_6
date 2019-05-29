
/*First question Query*/
create view max_reject as 
select teacher_id,count(teacher_id) as 'rejected'  from reserve where reserve.state = 'Rejected'
 group by teacher_id order by 'rejected';
 
select teacher_id , rejected from max_reject where rejected in 
(select rejected from max_reject where rejected >2);
/*second question Query*/

select avg(salary) as 'salary average' from teacher where teacher_id  in
(select  distinct teacher_id from reserve where room_number in 
(select room_number from room where price in 
(select max(price) from room))) ; 
/*third question Query */

create view mrc as select room_number, count(room_number) as 'RN' from reserve where (teacher_id = 1 ) group by room_number
order by 'RN';
select capacity as 'max_repeated_capacity' from room where room_number in (select room_number from mrc where RN in (select max(RN) from mrc));


/*forth question Query */
create view days as select datediff(finishing_date , starting_date) as 'days'  from reserve where (teacher_id = 1 and state = 'Finished');
select sum(days)as 'sum_reserve_days' from days;



