--CHARACTER data type:
/*   CHAR(length)
       stores string of specified length;
    VARCHAR
       stores string of any length;
    VARCHAR(length)
       stores string of specified length;
    TEXT
       stores string of any length;

*/
select ('cdbvhdfehvg'::CHAR(5));
--"cdbvh"

select ('cdbvhdfehvg'::VARCHAR(5));
--"cdbvh"

select ('cdbvhdfehvg'::VARCHAR);
--cdbvhdfehvg

select ('cdbvhdfehvhhvg'::TEXT);
--cdbvhdfehvhhvg


--Boolean data type
/*
    1. TRUE: 
        true
        on
        t
        y
        yes
        1
   2.False
       false
        off
        f
        n
        no
        0
   3.null
*/
select(1::BOOLEAN);
select('y'::BOOLEAN);
select('t'::BOOLEAN);
select('yes'::BOOLEAN);
select('true'::BOOLEAN);
select('on'::BOOLEAN)

-- ALL the above queries return 'true'.


select(0::BOOLEAN);
select('n'::BOOLEAN);
select('f'::BOOLEAN);
select('no'::BOOLEAN);
select('false'::BOOLEAN);
select('off'::BOOLEAN)

-- ALL the above queries return 'false'.


--Date data type
select ('2005 4 22'::DATE);
select ('2005-4-22'::DATE);
select ('2005=4=22'::DATE)
select ('2005,4,22'::DATE)
select ('2005-April-22'::DATE)
select ('2005-Apr-22'::DATE)
select ('2005,apr,22'::DATE)
-- ALL the above queries return '2005-04-22'.



--Time data type
select('1:23'::TIME);
select('1:23 PM'::TIME);
select('1:23 AM'::TIME);
select('1:23'::TIME WITHOUT TIME ZONE);
select('1:23 PM'::TIME WITHOUT TIME ZONE);
select('1:23 AM'::TIME WITHOUT TIME ZONE);
-- ALL the above queries return '01:23:00'


select('1:23 PST'::TIME WITH TIME ZONE);
select('1:23 PM PST'::TIME WITH TIME ZONE);
select('1:23 AM PST'::TIME WITH TIME ZONE);
.-- ALL the above queries return '01:23:00-08:00'.


--Timestamp data type
select('2005 4 22 1:23 PST'::TIMESTAMP WITH TIME ZONE);
select('2005 4 22 1:23 PM PST'::TIMESTAMP WITH TIME ZONE);
select('2005 4 22 1:23 AM PST'::TIMESTAMP WITH TIME ZONE);
-- ALL the above queries return '2005-04-22 14:53:00+05:30'.



--Intervals 
    D=day
    H=hour
    M=minutes
    S=seconds
select ('1 D'::interval);
--1 day

select ('1 H'::interval);
--01:00:00

select ('1 M'::interval);
--00:01:00

select ('1 S'::interval);
--00:00:01

select ('1 D 22 H 45 M 23 S'::interval);
--1 day 22:45:23

select ('1 D 22 H 45 M 23 S'::interval)- ('25 M'::interval);
--1 day 22:20:23

select('2005 4 22 1:23 PST'::TIMESTAMP WITH TIME ZONE)- ('2 D'::interval);
--2005-04-20 14:53:00+05:30


     
