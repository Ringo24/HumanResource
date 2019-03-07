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

alter table HR_BANK 
add constraint hr_bank_cb foreign key (m_id) 
	references HR_MEMBER(m_id) 
	on delete cascade;

alter table HR_MEMBER add(jm_point number(11));

select * from HR_MEMBER;
select * from HR_BANK;

insert into HR_MEMBER values('test','1234','test',0,'test@gmail.com','950611','01012345678',3,'test','test',1,1,'12345','test','test','test','test','test.jpg');
----------------------------------------------------------
--급여신청, 지급
create table HR_APPLICATION(
	a_no number(6) primary key,
	r_no number(6) not null,
	m_id varchar2(16 char) not null,
	a_state number(1) not null
);
create sequence HR_APPLICATION_seq;

create table HR_REQUEST(
	rq_no number(6) primary key,
	r_no number(6) not null,
	rq_sdate date not null,
	rq_edate date not null,
	m_id varchar2(16 char) not null,
	rq_state number(1) not null
);
create sequence HR_REQUEST_seq;

select * from HR_APPLICATION;

delete from HR_APPLICATION;

drop table HR_APPLICATION cascade constraint purge;

insert into HR_APPLICATION values(
	HR_REQUEST_seq.nextval,
	'test',
	'ㅋㅋㅋㅋ',
	sysdate
);

select * from HR_APPLICATION a, HR_REQUEST rq 
where a.m_id = rq.m_id
order by a.a_no;

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
-- 근무지
create table HR_GENBA(
	g_no number(6) primary key,
	g_name varchar2(25 char) not null,
	g_category varchar2(50 char) not null,
	g_pay number(10) not null,
	g_time number(2) not null,
	g_detail varchar2(150 char) not null,
	g_addr varchar2(60 char) not null
);
create sequence HR_GENBA_seq;

create table HR_RECRUIT(
	r_no number(6) primary key,
	r_date date not null,
	g_no number(6) not null,
	r_state number(1) not null
);
create sequence HR_RECRUIT_seq;

----------------------------------------
-- 게시판 DB
create table HR_BBS(
	b_no number(6) primary key,
	b_category varchar2(10 char) not null,
	b_title varchar2(30 char) not null,
	b_content varchar2(1000 char) not null,
	b_id varchar2(16 char) not null,
	b_name varchar2(6 char) not null,
	b_date date not null,
	b_hit number(8) not null
);
create sequence HR_BBS_seq;

create table HR_REPLY(
	rp_no number(6) primary key,
	b_no number(6) not null,
	rp_content varchar2(300 char) not null,
	rp_id varchar2(16 char) not null,
	rp_name varchar2(6 char) not null,
	rp_date date not null
);

--리플을 글에 참조시켜서 글 삭제 시 자동으로 삭제
alter table HR_REPLY 
add constraint hr_reply_cb foreign key (b_no) 
	references HR_BBS(b_no) 
	on delete cascade;

create sequence HR_REPLY_seq;

select * from HR_REPLY order by rp_date;

select r.*, m.m_name from HR_REPLY r, HR_BBS b, HR_MEMBER m 
where r.b_no=b.b_no and b_id=m_id 
order by rp_date;

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