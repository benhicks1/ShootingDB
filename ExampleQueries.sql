select * from shooting
where county ='Philadelphia';

select * from shooting 
where legal=1;

select vname, race, age from victim, shooting
where weapon=0 and county='Philadelphia'
group by vname, race, age;
