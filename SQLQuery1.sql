Create database services
use services
Create table job(Id int identity(1,1), Name varchar(50),abstract varchar(max), experience int,expires date, img varchar(100))
select * from job

insert into job values('Hiring Skilled Nurse for Maldives.','Hiring Skilled Nurse for Maldives. We need skilled professional for January 2016 joining.
You can send your resume and document directly to our support team. Kindly mention your post and',3,'10-29-2015','/')

insert into job values('Suraj','Web Developer',3,'10-29-2015','/')