show databases;
create database HR;

use HR;
show tables;
describe emp;


create table department(
department_id int primary key,
department_name varchar(30),
manager_id int,
location_id int);

insert into department values
(10,"Administration",200,1700),
(20,"Marketing",201,1800),
(30,"Purchasing",114,1700),
(40,"Human Resources",203,2400),
(50,"Shipping",121,1500),
(60,"IT",103,1400),
(70,"Public Relations",204,2700),
(80,"Sales",145,2500),
(90,"Executive",100,1700),
(100,"Finance",108,1700),
(110,"Accounting",205,1700),
(120,"Treasury",80,1700),
(130,"Corporate Tax",80,1700),
(140,"Control And Credit",70,1700),
(150,"Shareholder Services",70,1700),
(160,"Benefits",70,1700),
(170,"Manufacturing",80,1700),
(180,"Construction",80,1700),
(190,"Contracting",60,1700),
(200,"Operations",60,1700),
(210,"IT Support",60,1700),
(220,"NOC",80,1700),
(230,"IT Helpdesk",70,1700),
(240,"Government Sales",70,1700),
(250,"Retail Sales",60,1700),
(260,"Recruiting",60,1700),
(270,"Payroll",80,1700);

select * from department WHERE manager_id=205;
select * from department;
describe employee;
drop table department;

create table employee(
emp_id int primary key,
firstname varchar(20),
lastname varchar(20),
email varchar(20),
phone_num varchar(20),
hire_date date,
job_id varchar(20),
salary decimal(7,2),
commissiom_pct int,
manager_id int,
department_id int,FOREIGN KEY(department_id) REFERENCES department(department_id));


insert into employee values
(100,"Steven","King","SKING",5151234567,'2003-06-17',"AD_PRES",24000.00,0.00,80,90),
(101,"Neena","Kochhar","NKOCHHAR",5151234568,'2005-09-21',"AD_VP",17000.00,0.00,100,90),
(102,"Lex","De Haan","LDEHAAN",5151234569,'2001-01-13',"AD_VP",17000.00,0.00,100,90),
(103,"Alexander","Hunold","AHUNOLD",5904234567,'2006-01-03',"IT_PROG",9000.00,0.00,102,60),
(104,"Bruce","Ernst","BERNST",5904234568,'2007-05-21',"IT_PROG",6000.00,0.00,103,60),
(105,"David","Austin","DAUSTIN",5904234569,'2005-06-25',"IT_PROG",4800.00,0.00,103,60),
(106,"Valli","Pataballa","VPATABAL",5904234560,'2006-02-05',"IT_PROG",4800.00,0.00,103,60),
(107,"Diana","Lorentz","DLORENTZ",5904235567,'2007-02-07',"IT_PROG",4200.00,0.00 ,103,60),
(108,"Nancy","Greenberg","NGREENBE",5151244569,'2002-08-17',"FI_MGR",12008.00,0.00,101,100),
(109,"Daniel","Faviet","DFAVIET",5151244169,'2002-08-16',"FI_ACCOUNT",9000.00,0.00,108,100),
(110,"John","Chen","JCHEN",5151244269,'2005-09-28',"FI_ACCOUNT",8200.00,0.00,108,100),
(111,"Ismael","Sciarra","ISCIARRA",5151244369,'2005-09-30',"FI_ACCOUNT",7700.00,0.00,108,100),
(112 ,"Jose Manuel","Urman","JMURMAN",5151244469,'2006-03-07',"FI_ACCOUNT",7800.00 ,0.00 ,108 ,100),
(113 ,"Luis","Popp","LPOPP",5151244567,'2007-12-07',"FI_ACCOUNT",6900.00 ,0.00 ,108 ,100 ),
(114 ,"Den","Raphaely","DRAPHEAL",5151274561,'2002-12-07',"PU_MAN",11000.00 ,0.00 ,100 ,30),
(115 ,"Alexander","Khoo","AKHOO",5151274562,'2003-05-18',"PU_CLERK",3100.00 ,0.00 ,114 ,30),
(116 ,"Shelli","Baida","SBAIDA",5151274563, '2005-12-24' ,"PU_CLERK",2900.00 ,0.00 ,114 ,30),
(117 ,"Sigal","Tobias","STOBIAS",5151274564, '2005-07-24' ,"PU_CLERK",2800.00 ,0.00 ,114 ,30),
(118 ,"Guy","Himuro","GHIMURO", 5151274565, '2006-11-15' ,"PU_CLERK",2600.00 ,0.00 ,114 ,30),
(119 ,"Karen","Colmenares","KCOLMENA",5151274566, '2007-08-10' ,"PU_CLERK",2500.00 ,0.00 ,114 ,30),
(120 ,"Matthew","Weiss","MWEISS",6501231234, '2004-07-18' ,"ST_MAN",8000.00 ,0.00 ,100 ,50),
(121 ,"Adam","Fripp","AFRIPP",6501232234, '2005-04-10' ,"ST_MAN",8200.00 ,0.00 ,100 ,50),
(122 ,"Payam","Kaufling","PKAUFLIN",6501233234, '2003-05-01' ,"ST_MAN",7900.00 ,0.00 ,100 ,50),
(123 ,"Shanta","Vollman","SVOLLMAN",6501234234, '2005-10-10' ,"ST_MAN",6500.00 ,0.00 ,100 ,50),
(124 ,"Kevin","Mourgos","KMOURGOS",6501235234, '2007-11-16' ,"ST_MAN",5800.00 ,0.00 ,100 ,50),
(125 ,"Julia","Nayer","JNAYER",6501241214, '2005-07-16' , "ST_CLERK",3200.00 ,0.00 ,120 ,50),
(126 ,"Irene","Mikkilineni","IMIKKILI",6501241224, '2006-09-28' , "ST_CLERK",2700.00 ,0.00 ,120 ,50),
(127 ,"James","Landry","JLANDRY",6501241334, '2007-01-14' , "ST_CLERK",2400.00 ,0.00 ,120 ,50),
(128 ,"Steven","Markle","SMARKLE",6501241434, '2008-03-08' , "ST_CLERK",2200.00 ,0.00 ,120 ,50),
(129 ,"Laura","Bissot","LBISSOT",6501245234, '2005-08-20' , "ST_CLERK",3300.00 ,0.00 ,121 ,50),
(130 ,"Mozhe","Atkinson","MATKINSO",6501246234, '2005-10-30' , "ST_CLERK",2800.00 ,0.00 ,121 ,50),
(131 ,"James","Marlow","JAMRLOW",6501247234, '2005-02-16' , "ST_CLERK",2500.00 ,0.00 ,121 ,50),
(132 ,"TJ","Olson","TJOLSON",6501248234, '2007-04-10' , "ST_CLERK",2100.00 ,0.00 ,121 ,50),
(133 ,"Jason","Mallin","JMALLIN",6501271934, '2004-06-14' , "ST_CLERK",3300.00 ,0.00 ,122 ,50),
(134 ,"Michael","Rogers","MROGERS",6501271834, '2006-08-26' , "ST_CLERK",2900.00 ,0.00 ,122 ,50),
(135 ,"Ki","Gee","KGEE",6501271734, '2007-12-12' , "ST_CLERK",2400.00 ,0.00 ,122 ,50),
(136 ,"Hazel","Philtanker","HPHILTAN",6501271634, '2008-02-06' , "ST_CLERK",2200.00 ,0.00 ,122 ,50),
(137 ,"Renske","Ladwig","RLADWIG",6501211234, '2003-07-14' , "ST_CLERK"   ,  3600.00 ,0.00 ,123 ,50),
(138 ,"Stephen","Stiles","SSTILES",6501212034, '2005-10-26' , "ST_CLERK"   ,  3200.00 ,0.00 ,123 ,50),
(139 ,"John","Seo","JSEO",6501212019, '2006-02-12' , "ST_CLERK"   ,  2700.00 ,0.00 ,123 ,50),
(140 ,"Joshua","Patel","JPATEL",6501211834, '2006-04-06' , "ST_CLERK",  2500.00 ,0.00 ,123 ,50),
(141 ,"Trenna","Rajs","TRAJS", 6501218009, '2003-10-17' , "ST_CLERK",  3500.00 ,0.00 ,124 ,50),
(142 ,"Curtis","Davies","CDAVIES", 6501212994, '2005-01-29' , "ST_CLERK"   ,  3100.00 ,0.00 ,124 ,50),
(143 ,"Randall","Matos","RMATOS", 6501212874, '2006-03-15' , "ST_CLERK"   ,  2600.00 ,0.00 ,124 ,50),
(144 ,"Peter","Vargas","PVARGAS", 6501212004, '2006-07-09' , "ST_CLERK"   ,  2500.00 ,0.00 ,124 ,50),
(145 ,"John","Russell","JRUSSEL", 011441344429268 , '2004-10-01' , "SA_MAN", 14000.00 ,0.40 ,100 ,80),
(146 ,"Karen","Partners","KPARTNER", 011441344467268 , '2005-01-05' , "SA_MAN", 13500.00 ,0.30 ,100 ,80),
(147 ,"Alberto","Errazuriz","AERRAZUR", 011441344429278 , '2005-03-10' , "SA_MAN", 12000.00 ,0.30 ,100 ,80),
(148 ,"Gerald","Cambrault","GCAMBRAU", 011441344619268 , '2007-10-15' , "SA_MAN", 11000.00 ,0.30 ,100 ,80),
(149 ,"Eleni","Zlotkey","EZLOTKEY", 011441344429018 , '2008-01-29' , "SA_MAN", 10500.00 ,0.20 ,100 ,80),
(150 ,"Peter","Tucker","PTUCKER", 011441344129268 , '2005-01-30' , "SA_REP", 10000.00 ,0.30 ,145 ,80),
(151 ,"David","Bernstein","DBERNSTE", 011441344345268 , '2005-03-24' , "SA_REP",  9500.00 ,0.25 ,145 ,80),
(152 ,"Peter","Hall","PHALL", 011441344478968 , '2005-08-20' , "SA_REP",  9000.00 ,0.25 ,145 ,80),
(153 ,"Christopher","Olsen","COLSEN", 011441344498718 , '2006-03-30' , "SA_REP",  8000.00 ,0.20 ,145 ,80),
(154 ,"Nanette","Cambrault","NCAMBRAU", 011441344987668 , '2006-12-09' , "SA_REP",  7500.00 ,0.20 ,145 ,80),
(155 ,"Oliver","Tuvault","OTUVAULT", 011441344486508 , '2007-11-23' , "SA_REP",  7000.00 ,0.15 ,145 ,80),
(156 ,"Janette","King","JKING", 011441345429268 , '2004-01-30' , "SA_REP", 10000.00 ,0.35 ,146 ,80),
(157 ,"Patrick","Sully","PSULLY", 011441345929268 , '2004-03-04' , "SA_REP",  9500.00 ,0.35 ,146 ,80),
(158 ,"Allan","McEwen","AMCEWEN", 011441345829268 , '2004-08-01' , "SA_REP",  9000.00 ,0.35 ,146 ,80),
(159 ,"Lindsey","Smith","LSMITH", 011441345729268 , '2005-03-10' , "SA_REP",  8000.00 ,0.30 ,146 ,80),
(160 ,"Louise","Doran","LDORAN", 011441345629268 , '2005-12-15' , "SA_REP",  7500.00 ,0.30 ,146 ,80),
(161 ,"Sarath","Sewall","SSEWALL", 011441345529268 , '2006-11-03' , "SA_REP",  7000.00 ,0.25 ,146 ,80),
(162 ,"Clara","Vishney","CVISHNEY", 011441346129268 , '2005-11-11' , "SA_REP", 10500.00 ,0.25 ,147 ,80),
(163 ,"Danielle","Greene","DGREENE", 011441346229268 , '2007-03-19' , "SA_REP",  9500.00 ,0.15 ,147 ,80),
(164 ,"Mattea","Marvins","MMARVINS", 011441346329268 , '2008-01-24' , "SA_REP",  7200.00 ,0.10 ,147 ,80),
(165 ,"David","Lee","DLEE", 011441346529268 , '2008-02-23' , "SA_REP",  6800.00 ,0.10 ,147 ,80),
(166 ,"Sundar","Ande","SANDE", 011441346629268 , '2008-03-24' , "SA_REP",  6400.00 ,0.10 ,147 ,80),
(167 ,"Amit","Banda","ABANDA", 011441346729268 , '2008-04-21' , "SA_REP",  6200.00 ,0.10 ,147 ,80),
(168 ,"Lisa","Ozer","LOZER", 011441343929268 , '2005-03-11' , "SA_REP", 11500.00 ,0.25 ,148 ,80),
(169 ,"Harrison","Bloom","HBLOOM", 011441343829268 , '2006-03-23' , "SA_REP", 10000.00 ,0.20 ,148 ,80),
(170 ,"Tayler","Fox","TFOX", 011441343729268 , '2006-01-24' , "SA_REP",  9600.00 ,0.20 ,148 ,80),
(171 ,"William","Smith","WSMITH", 011441343629268 , '2007-02-23' , "SA_REP",  7400.00 ,0.15 ,148 ,80),
(172 ,"Elizabeth","Bates","EBATES", 011441343529268 , '2007-03-24' , "SA_REP",  7300.00 ,0.15 ,148 ,80),
(173 ,"Sundita","Kumar","SKUMAR", 011441343329268 , '2008-04-21' , "SA_REP",  6100.00 ,0.10 ,148,80),
(174 ,"Ellen","Abel","EABEL", 011441644429267 , '2004-05-11' , "SA_REP", 11000.00 ,0.30 ,149 ,80),
(175 ,"Alyssa","Hutton","AHUTTON", 011441644429266 , '2005-03-19' , "SA_REP",  8800.00 ,0.25 ,149 ,80),
(176 ,"Jonathon","Taylor","JTAYLOR", 011441644429265 , '2006-03-24' , "SA_REP",  8600.00 ,0.20 ,149 ,80),
(177 ,"Jack","Livingston","JLIVINGS", 011441644429264 , '2006-04-23' , "SA_REP",  8400.00 ,0.20 ,149 ,80),
(178 ,"Kimberely","Grant","KGRANT", 011441644429263 , '2007-05-24' , "SA_REP",  7000.00 ,0.15 ,149 ,80),
(179 ,"Charles","Johnson","CJOHNSON", 011441644429262 , '2008-01-04' , "SA_REP",  6200.00 ,0.10 ,149 ,80),
(180 ,"Winston","Taylor","WTAYLOR", 6505079876, '2006-01-24' , "SH_CLERK",  3200.00 ,0.00 ,120 ,50),
(181 ,"Jean","Fleaur","JFLEAUR", 6505079877, '2006-02-23' , "SH_CLERK",  3100.00 ,0.00 ,120 ,50),
(182 ,"Martha","Sullivan","MSULLIVA", 6505079878, '2007-06-21' , "SH_CLERK",  2500.00 ,0.00 ,120 ,50),
(183 ,"Girard","Geoni","GGEONI", 6505079879, '2008-02-03' , "SH_CLERK",  2800.00 ,0.00 ,120 ,50),
(184 ,"Nandita","Sarchand","NSARCHAN", 6505091876, '2004-01-27' , "SH_CLERK",  4200.00 ,0.00 ,121 ,50),
(185 ,"Alexis","Bull","ABULL", 6505092876, '2005-02-20' , "SH_CLERK",  4100.00 ,0.00 ,121 ,50),
(186 ,"Julia","Dellinger","JDELLING", 6505093876, '2006-06-24' , "SH_CLERK",  3400.00 ,0.00 ,121 ,50),
(187 ,"Anthony","Cabrio","ACABRIO", 6505094876, '2007-02-07' , "SH_CLERK",  3000.00 ,0.00 ,121 ,50),
(188 ,"Kelly","Chung","KCHUNG", 6505051876, '2005-06-14' , "SH_CLERK",  3800.00 ,0.00 ,122 ,50),
(189 ,"Jennifer","Dilly","JDILLY", 6505052876, '2005-08-13' , "SH_CLERK",  3600.00 ,0.00 ,122 ,50),
(190 ,"Timothy","Gates","TGATES", 6505053876, '2006-07-11' , "SH_CLERK",  2900.00 ,0.00 ,122 ,50),
(191 ,"Randall","Perkins","RPERKINS", 6505054876, '2007-12-19' , "SH_CLERK",  2500.00 ,0.00 ,122 ,50),
(192 ,"Sarah","Bell","SBELL", 6505011876, '2004-02-04' , "SH_CLERK",  4000.00 ,0.00 ,123 ,50),
(193 ,"Britney","Everett","BEVERETT", 6505012876, '2005-03-03' , "SH_CLERK",  3900.00 ,0.00 ,123 ,50),
(194 ,"Samuel","McCain","SMCCAIN", 6505013876, '2006-07-01' , "SH_CLERK",  3200.00 ,0.00 ,123 ,50),
(195 ,"Vance","Jones","VJONES", 6505014876, '2007-03-17' , "SH_CLERK",  2800.00 ,0.00 ,123 ,50),
(196 ,"Alana","Walsh","AWALSH", 6505079811, '2006-04-24' , "SH_CLERK",  3100.00 ,0.00 ,124 ,50),
(197 ,"Kevin","Feeney","KFEENEY", 6505079822, '2006-05-23' , "SH_CLERK",  3000.00 ,0.00 ,124 ,50),
(198 ,"Donald","OConnell","DOCONNEL", 6505079833, '2007-06-21' , "SH_CLERK",  2600.00 ,0.00 ,124 ,50),
(199 ,"Douglas","Grant","DGRANT", 6505079844, '2008-01-13' , "SH_CLERK",  2600.00 ,0.00 ,124 ,50),
(200 ,"Jennifer","Whalen","JWHALEN", 5151234444, '2003-09-17' , "AD_ASST",  4400.00 ,0.00 ,101 ,10),
(201 ,"Michael","Hartstein","MHARTSTE", 5151235555, '2004-02-17' , "MK_MAN", 13000.00 ,0.00 ,100 ,20),
(202 ,"Pat","Fay","PFAY", 6031236666, '2005-08-17' , "MK_REP",  6000.00 ,0.00 ,201 ,20),
(203 ,"Susan","Mavris","SMAVRIS", 5151237777, '2002-06-07' , "HR_REP",  6500.00 ,0.00 ,101 ,40),
(204 ,"Hermann","Baer","HBAER", 5151238888, '2002-06-07' , "PR_REP", 10000.00 ,0.00 ,101 ,70),
(205 ,"Shelley","Higgins","SHIGGINS", 5151238080, '2002-06-07' , "AC_MGR", 12008.00 ,0.00 ,101 ,110),
(206 ,"William","Gietz","WGIETZ", 5151238181, '2002-06-07' , "AC_ACCOUNT" ,  8300.00 ,0.00 ,205 ,110);

select hire_date from employee;
describe job_history;


create table job_history(
emp_id int primary key,foreign key(emp_id) references employee(emp_id),
start_date date,
end_date date,
job_id varchar(20),
department_id int,foreign key(department_id) references department(department_id));

describe job_history;
select * from job_history;

insert into job_history values
(102,'2001-01-13','2006-07-24',"IT_PROG",60),
(101,'1997-09-21','2001-10-27',"AC_ACCOUNT",110),
(103,'2001-10-28','2005-03-15',"AC_MGR",110),
(201,'2004-02-17','2007-12-19',"MK_REP",20),
(114,'2006-03-24','2007-12-31',"ST_CLERK",50),
(122,'2007-01-01','2007-12-31',"ST_CLERK",50),
(200,'1995-09-17','2001-06-17',"AD_ASST",90),
(176,'2006-03-24','2006-12-31',"SA_REP",80),
(146,'2007-01-01','2007-12-31',"SA_MAN",80),
(206,'2002-07-01','2006-12-31',"AC_ACCOUNT",90);

create table salary(
grade int primary key,
min_salary decimal(7,2),
max_salary decimal(7,2));

insert into salary values
(1,800,1300),
(2,1301,1500),
(3,1501,2100),
(4,2101,3100),
(5,3101,9999),
(6,2100,24000);

select * from salary;


# 1.write a SQL query to find those employees whose salaries are less than 6000.Return full name (first and last name), and salary.
select emp_id,concat(firstname,' ',lastname)as Full_Names ,salary from employee where salary<6000;

# 2.write a SQL query to find those employees whose salary is higher than 8000.Return first name, last name and department number and salary.
select emp_id,concat(firstname,' ',lastname) as full_name,department_id,salary  from employee where salary>8000; 

# 3.write a SQL query to find those employees whose last name is "McEwen". Return first name, last name and department ID.
SELECT concat(firstname,' ',lastname) as Full_Name,department_id from employee where lastname='McEwen';

# 4.write a SQL query to identify employees who do not have a department number. 
# Return employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary,commission_pct, manager_id and department_id.
select emp_id,firstname,lastname,email,phone_num,hire_date,job_id,salary,commissiom_pct,manager_id,department_id from employee where department_id is null;

# 5.write a SQL query to find the details of 'Marketing' department. Return all fields.
select * from department where department_name="Marketing";

#6.write a SQL query to find those employees whose first name does not contain the letter ‘M’. 
# Sort the result-set in ascending order by department ID.Return full name (first and last name together), hire_date, salary and department_id.
select concat(firstname,' ',lastname) 'Full Name',hire_date,salary,department_id from employee where firstname not like '%M%' order by department_id;

# 7.write a SQL query to find those employees who earn between 8000 and 12000 (Begin and end values are included.) and get some commission. 
# These employees joined before ‘1987-06-05’ and were not included in the department numbers 40, 120 and 70. Return all fields.
select * from employee where salary between 8000 and 12000 and commissiom_pct is not null or department_id not in(40,120,70) and hire_date<"1987-06-05";

# 8.write a SQL query to find those employees who do not earn any commission. Return full name (first and last name), and salary.
select emp_id,concat(firstname,' ',lastname),salary from employee where commissiom_pct is null;

# 9.write a SQL query to find the employees whose salary is in the range 9000,17000 (Begin and end values are included). 
# Return full name, contact details and salary.
select emp_id,concat(firstname,' ',lastname) 'Full Name',concat(email,'-',phone_num) 'Contact Detail',salary from employee where salary between 9000 and 17000;

# 10. write a SQL query to find the employees whose first name ends with the letter ‘m’. Return the first and last name, and salary.
select firstname,lastname,salary from employee where firstname like '%m';


# 11.write a SQL query to find those employees whose salaries are not between 7000 and 15000 (Begin and end values are included).
# Sort the result-set in ascending order by the full name (first and last). Return full name and salary.
select concat(firstname,' ',lastname) 'Full Name',salary from employee where salary not between 7000 and 15000 order by concat(firstname,' ',lastname);

# 12.write a SQL query to find those employees who were hired between November 5th, 2007 and July 5th, 2009. 
# Return full name (first and last), job id and hire date.
select concat(firstname,' ',lastname) 'Full Name',job_id,hire_date from employee where hire_date between '2007-11-05' and '2009-07-05';

# 13.write a SQL query to find those employees who work either in department 70 or 90. 
# Return full name (first and last name), department id.
select  concat(firstname,' ',lastname) 'Full Name',department_id from employee where department_id=70 or department_id=90;

# 14.write a SQL query to find those employees who work under a manager. Return full name (first and last name), salary, and manager ID.
select  concat(firstname,' ',lastname) 'Full Name',salary,manager_id from employee where manager_id is not null;

# 15.write a SQL query to find the employees who were hired before June 21st, 2002. Return all fields.
select * from employee where hire_date<'2002-06-21';

# 16.write a SQL query to find the employees whose managers hold the ID 120, 103, or 145. 
# Return first name, last name, email, salary and manager ID.
select firstname,lastname,email,salary,manager_id from employee where manager_id in (120,103,145);

# 17.write a SQL query to find employees whose first names contain the letters D, S, or N. Sort the result-set in descending order by salary.Return all fields.
select * from employee where firstname like '%D%' or firstname like '%S%'or firstname like '%N%' order by salary desc;

# 18.write a SQL query to find those employees who earn above 11000 or the seventh character in their phone number is 3. 
# Sort the result-set in descending order by first name. 
# Return full name (first name and last name), hire date, commission percentage, email, and telephone separated by '-', and salary.
select concat(firstname,' ',lastname) 'Full Name',hire_date,commissiom_pct,concat(email,'-',phone_num) 'Contact Details',salary from employee
where salary>11000 or phone_num Like '_______3%' order by firstname desc;

# 19.write a SQL query to find those employees whose first name contains a character 's' in the third position. 
# Return first name, last name and department id.
select firstname,lastname,department_id from employee where firstname like '___s%';

# 20. write a SQL query to find those employees work in the departments that are not part of the department 50 or 30 or 80. 
# Return employee_id, first_name,job_id, department_id.
select emp_id,firstname,job_id,department_id from employee where department_id not in(50,30,80);

# 21.write a SQL query to find the employees whose department numbers are included in 30, 40, or 90. 
#Return employee id, first name, job id, department id.
select emp_id,firstname,job_id,department_id from employee where department_id in(30,40,90);

# 22.write a SQL query to find those employees who worked more than two jobs in the past. Return employee id.
select * from job_history;
select * from salary;
show tables;
select emp_id from job_history group by emp_id having count(*)>=2; 

# 23.write a SQL query to count the number of employees, the sum of all salary, and difference between the highest salary and lowest salaries by each job id. 
# Return job_id, count, sum, salary_difference.

select job_id, count(*),sum(salary),max(salary)-min(salary)'Salary Difference'  from employee group by job_id;

# 24.write a SQL query to find each job ids where two or more employees worked for more than 300 days. Return job id.
select job_id from job_history where end_date-start_date >300 group by job_id;

# 25.write a SQL query to count the number of cities in each country. Return country ID and number of cities.
select * from employee;
select * from department;
select * from job_history;
select * from salary;
show tables;
# 26.write a SQL query to count the number of employees worked under each manager. Return manager ID and number of employees.
select manager_id,count(*) from employee group by manager_id;

# 27.write a SQL query to find all jobs. Sort the result-set in descending order by job title. Return all fields.


# 28.write a SQL query to find all those employees who are either Sales Representatives or Salesmen. 
#Return first name, last name and hire date.
select firstname,lastname,hire_date from employee where job_id="SA_REP" or job_id="SA_MAN";

#29.write a SQL query to calculate the average salary of employees who receive a commission percentage for each department. 
#Return department id, average salary.
select department_id,avg(salary) from employee where commissiom_pct is not null group by department_id;

#30.write a SQL query to find the departments where any manager manages four or more employees. Return department_id.
select department_id from employee group by department_id,manager_id having count(emp_id)>=4;

#31.write a SQL query to find the departments where more than ten employees receive commissions. Return department id.
select department_id from employee where commissiom_pct is not null group by department_id having count(commissiom_pct)>10;

#32.write a SQL query to find those employees who have completed their previous jobs. Return employee ID, end_date.
show tables;
describe job_history;

select emp_id,max(end_date) from job_history where emp_id in (select emp_id from job_history group by 1 having count(emp_id) >1) group by 1;











