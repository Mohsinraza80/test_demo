select  * 
from  dbo.TestInfo;
select * from TestInfo where code='ROU';
insert into TestInfo values ('ROU','Old Romania','567903','6562.45','219');
select * from TestInfo;		
select * from dbo.winter where Code='MNE';

insert into  Athelete(a_id,Name,Gender)
select w_id,Athlete_name,Gender from winter ;

select no,code from TestInfo order by no Asc;
update TestInfo set TestInfo.no ='221 ' where code='MNE';
select * from Country;

insert into Athelete(c_id);

select TestInfo.no,TestInfo.Country,winter.Athlete_name from TestInfo,WINTER  where TestInfo.code=winter.Code;

insert into Athelete(a_id,Name,Gender,c_id) 
select winter.w_id,winter.Athlete_name,Winter.Gender ,TestInfo.no from Testinfo, WINTER  where TestInfo.code=winter.Code;

select * from Athelete;
select winter.w_id,winter.Athlete_name,Winter.Gender ,TestInfo.no from Testinfo, WINTER  where TestInfo.code=winter.Code;



select * from Athelete;
select * from Country;
select * from winter;
select * from Summar;

select * from Discipline;



delete from Summar;
insert into Athelete(a_id,Name,Gender,c_id) 
select  Summar.s_id, Summar.Athelete_name,Summar.gender,TestInfo.no  from Summar,TestInfo  where Summar.Country=TestInfo.code;
insert into Discipline(Name,c_id,a_id);
select winter.Sport,Athelete.a_id,Athelete.Name, 
Country.Name,Country.c_id from winter,Athelete,Country  where winter.w_id=Athelete.a_id AND
Athelete.c_id=Country.c_id;

insert into Discipline(Name,c_id,a_id)
select winter.Sport,Athelete.a_id,Country.c_id from winter,Athelete,Country  where winter.w_id=Athelete.a_id AND
Athelete.c_id=Country.c_id;

CREATE TABLE checkdiscp(
  id              INT           NOT NULL    IDENTITY    PRIMARY KEY,
  Name           VARCHAR(50)  NOT NULL,
  c_id  INT,
  a_id INT
);

insert into checkdiscp(Name,c_id,a_id)
select winter.Sport,Athelete.a_id,Country.c_id from winter,Athelete,Country  where winter.w_id=Athelete.a_id AND
Athelete.c_id=Country.c_id;

delete  FROM checkdiscp;
ALTER TABLE Discipline  ADD d_id int NOT NULL IDENTITY PRIMARY KEY;

select * from Discipline;

insert into Discipline Values('hello',23,44);
insert into Discipline Values('hello',23,44);

select * from Discipline;
select * from Country;
select * from Athelete;

insert into Discipline(Name,c_id,a_id)
select winter.Sport,Country.c_id,Athelete.a_id from winter,Athelete,Country  where winter.w_id=Athelete.a_id AND
Athelete.c_id=Country.c_id;

select  Discipline.Name,Country.Name,Athelete.Name from Country,Athelete ,Discipline where Country.c_id=192 AND
Athelete.a_id=131 AND(Discipline.a_id=Athelete.a_id);

select * from winter;
select * from Sport;
insert into Sport values('Boxing',11,33,11546);
delete from Sport;

insert into Sport(Name,c_id,a_id,d_id)

select winter.Sport,Athelete.a_id ,Athelete.Name,Country.c_id,Country.Name,Discipline.d_id,Discipline.Name from winter,Athelete,country,Discipline  where winter.w_id=Athelete.a_id 
AND (Athelete.c_id=Country.c_id) AND (Discipline.a_id=Athelete.a_id);

insert into Sport(Name,c_id,a_id,d_id)
select winter.Sport, Country.c_id, Athelete.a_id, Discipline.d_id  from winter,Athelete,country,Discipline  where winter.w_id=Athelete.a_id 
AND (Athelete.c_id=Country.c_id) AND (Discipline.a_id=Athelete.a_id);

select * from winter;

insert into Event values('KJLKJ',12,3222);

select winter.event,Athelete.a_id,Athelete.Name,Country.c_id from winter,Athelete, Country where (winter.w_id=Athelete.a_id) AND (Athelete.c_id=Country.c_id );

insert into Event
select winter.event,Country.c_id,Athelete.a_id from winter,Athelete, Country where (winter.w_id=Athelete.a_id) AND (Athelete.c_id=Country.c_id );

select * from Event;
delete from Event where Name='KJLKJ'; 

insert into Medal
select winter.Medal,country.c_id,Athelete.a_id  from winter,Athelete, Country where (winter.w_id=Athelete.a_id) AND (Athelete.c_id=Country.c_id );
select * from Medal;
select * from Country;
select winter.year,winter.City,winter.Code from winter,TestInfo where winter.Code=TestInfo.code  group by winter.Year,winter.City,winter.Code;

select winter.code ,country.c_id from  winter,TestInfo ,Country
where TestInfo.no=Country.c_id AND winter.code=TestInfo.code group by winter.code ;

select winter.codfrom  winter, Country
 group by country.c_id  ;

 select * from hostcity;
 select * from TestInfo;
 select * from hostcity;
 select * from winter;
 select winter.Year,winter.City,TestInfo.code from winter,TestInfo where winter.Code=TestInfo.code group by winter.Year,winter.City,TestInfo.code order by winter.Year;

select Year AS Y,TestInfo.code AS C  from winter,TestInfo  where winter.Code=TestInfo.code group by year,TestInfo.code;

 insert into  hostcity(h_year,h_name)
 select year,city from winter group by year,City order by Year;
 
 select year from winter group by year order by Year;
 Select code from winter group by code order by code;
 
 select winter.Code from  Testinfo,winter where TestInfo.code =winter.code AND (winter.Code IN (Select code from winter group by code)) group by winter.code;


  select winter.Year,TestInfo.code from Testinfo,winter where (Year IN (select year from winter group by year ));


  select * from Country;
  select * from Athelete;
  select * from Discipline;
  select * from Event;
  select * from sport;
  select * from Medal;
  select * from hostcity;
  select * from Result;
   