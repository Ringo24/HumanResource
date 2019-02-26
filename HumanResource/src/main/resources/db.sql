create table HR_MEMBER(
	m_id varchar2(16 char) primary key,
	m_pw varchar2(16 char) not null,
	m_name varchar2(6 char) not null,
	m_gender number(1) not null,
	m_email varchar2(45 char) not null,
	m_birth number(6) not null,
	m_phone number(11) not null,
	m_school number(1) not null,
	m_schoolname varchar2(15 char) not null,
	m_schoolmajor varchar2(20 char) not null,
	m_working number(1) not null,
	m_army number(1) not null,
	m_post number(6) not null,
	m_addr varchar2(150 char) not null,
	m_addrdetail varchar2(150 char) not null,
	m_station varchar2(15 char) not null,
	m_intro varchar2(300 char) not null,
	m_photo varchar2(100 char) not null
);
create table HR_BANK(
	m_id varchar(16 char) primary key,
	m_bank varchar(20 char) not null,
	m_account number(30) not null,
	m_accname varchar(6 char) not null
);

alter table HR_MEMBER add(jm_point number(11));

select * from HR_MEMBER;
----------------------------------------------------------
create table JSC_SNS(
	js_no number(5) primary key,
	js_id varchar2(16 char) not null,
	js_txt varchar2(700 char) not null,
	js_date date not null
);

create sequence jsc_sns_seq;

select * from jsc_sns;

delete from jsc_sns;

drop table jsc_sns cascade constraint purge;

insert into jsc_sns values(
	jsc_sns_seq.nextval,
	'test',
	'ㅋㅋㅋㅋ',
	sysdate
);

select * from JSC_SNS, JSC_MEMBER 
where js_id = jm_id
order by js_no;

select * from (
select rownum r, js_no, js_txt, js_date from (select * from JSC_SNS order by js_no desc))
where r >= 5 and r <= 10;

select * from (
select rownum r, js_no, js_id, js_txt, js_date, jm_name, jm_photo  
from (select * from JSC_SNS, JSC_MEMBER where js_id = jm_id order by js_no desc))
where r >= 5 and r 	<= 10

select * from JSC_SNS, JSC_MEMBER 
where js_id = jm_id 
and js_id like '%nako%'
order by js_date;

----------------------------------------
create table JSC_REPLY(
	jr_no number(5) primary key,
	jr_jsno number(5) not null,
	jr_id varchar2(16 char) not null,
	jr_txt varchar2(300 char) not null,
	jr_date date not null,
);

--리플을 글에 참조시켜서 글 삭제 시 자동으로 삭제
alter table JSC_REPLY 
add constraint sns_reply_cj foreign key (jr_jsno) 
	references JSC_SNS(js_no) 
	on delete cascade;

create sequence jsc_reply_seq;

select * from JSC_REPLY order by jr_date;

insert into jsp_reply values(
	jsc_reply_seq.nextval,
	jr_jsno,
	'test',
	'ㅋㅋㅋㅋ',
	sysdate
);

select r.*, m.jm_name from JSC_REPLY r, JSC_SNS s, JSC_MEMBER m 
where jr_jsno=js_no and jr_id=jm_id 
order by jr_date;

select * from JSC_SNS, JSC_REPLY 
where js_no = 17 and js_no = jr_jsno; 

-----------------------------------------------------
create table JSC_DATA(
	jd_no number(5) primary key,
	jd_id varchar2(16 char) not null,
	jd_title varchar2(100 char) not null,
	jd_file varchar2(700 char) not null,
	jd_date date not null
);

create sequence jsc_data_seq;

select * from JSC_DATA;

insert into JSC_DATA values(
	jd_sns_seq.nextval,
	jd_id,
	jd_title,
	jd_file,
	sysdate
);

select d.*, m.jm_name from JSC_DATA d, jsc_member m 
where jd_no=1 and jd_id=jm_id 
order by jd_no;

select * from JSC_DATA, JSC_MEMBER 
where jd_id = jm_id and jd_no = 21;