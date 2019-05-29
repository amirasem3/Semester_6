

/*First question query*/
select  max(price) from medicine where  id in 
(select medicine_id from prescription where 
(visit_id = 
(select id from visit where (doctor_id = '1' and patient_id = '2'))));
/*second question query*/
 

 
 create view max_profession as select profession ,count(profession) as 'cnt' from doctor where doctor.id in 
(select doctor_id  from visit where room_number is not  null)
group by profession
order by 'cnt';

 select profession,cnt from max_profession where cnt in (select max(cnt) from max_profession);
 
 
 /*third question query*/
 select room_number from room where room_number not in (select room_number from supervision where supervision.nurse_id = '1');
 /*forth question query*/
create view phen_fen_medicine as select company,count(company) as 'cnt' from medicine where medicine.id in 
(select id from medicine where (medicine.name like '%fen' or medicine.name like '%phen')) 
group by company order by 'cnt' limit 4;

select company,cnt from phen_fen_medicine where cnt in (select max(cnt) from phen_fen_medicine);
 
