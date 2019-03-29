-- 멤버
create table HR_MEMBER(
	m_id varchar2(16 char) primary key,
	m_pw varchar2(16 char) not null,
	m_name varchar2(6 char) not null,
	m_gender number(1) not null,
	m_email varchar2(45 char) not null,
	m_birth varchar2(6 char) not null,
	m_phone varchar2(11 char) not null,
	m_school number(1) not null,
	m_schoolname varchar2(15 char) not null,
	m_schoolmajor varchar2(20 char) not null,
	m_working number(1) not null,
	m_army number(1) not null,
	m_post varchar2(6 char) not null,
	m_addr varchar2(150 char) not null,
	m_addrdetail varchar2(150 char) not null,
	m_station varchar2(15 char) not null,
	m_intro varchar2(300 char) not null,
	m_photo varchar2(100 char) not null,
	m_point number(11) not null
);
create table HR_BANK(
	mb_id varchar2(16 char) primary key,
	m_bank varchar2(20 char) not null,
	m_account varchar2(30 char) not null,
	m_accname varchar2(6 char) not null
);

alter table HR_BANK 
add constraint hr_bank_cb foreign key (mb_id) 
	references HR_MEMBER(m_id) 
	on delete cascade;

alter table HR_MEMBER add(m_point number(11));

select * from HR_MEMBER;
select * from HR_BANK;

drop table HR_MEMBER cascade constraint purge;
drop table HR_BANK cascade constraint purge;

insert into HR_MEMBER values('test','1234','test',0,'test@gmail.com','950611','01012345678',3,'서운대학교','영문학과',1,1,'12345','서운시','집앞','서운대앞역','안녕하세요','test.jpg',0);
insert into HR_BANK values('test','국민은행','3350303295302','test');

update HR_MEMBER set m_name = 'ADMIN' where m_id = 'test';
---------------------------------------------------------------------------
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
	g_addr varchar2(60 char) not null,
	g_hp varchar2(100 char) not null,
	g_recruitment varchar2(150 char) not null,
	g_require varchar2(150 char) not null,
	g_submission varchar2(250 char) not null,
	g_logo varchar2(150 char) not null
);
create sequence HR_GENBA_seq;

insert into HR_GENBA values(HR_GENBA_seq.nextval, 'Interpark Inc.', 'e-commerce', 3255, 8, 'Seoul Gangnam', 'http://www.interpark.com/', 
'Java Web(PC,Mobile) sevice programing', '- Experience developing web services based on Java & Spring framework<br>
- Development experience using HTML, PHP, Java, HTML5, CSS3, JQUERY, etc.<br>
- Operating and development thistle using RDBMS<br>
- Experience large data processing and DB usage<br>
- Experience designing and developing RESTful APIs<br>
- Experienced in the development of AWS, Git&Github environment', 
'- Document type: Submit resume and self-introduction<br>
- Final acceptance: Certificate of graduation (scheduled) of final academic year, certificate of record of previous year, certificate of experience (for those concerned only), Submit a copy of the accreditation exam and other certificates (for the applicant only), a certificate subject to employment protection (for the target only)', 
'http://pds.saramin.co.kr/company/logo/201101/13/1294891268_logo.jpg');

create table HR_RECRUIT(
	r_no number(6) primary key,
	r_date date not null,
	r_total number(3) not null,
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
	b_photo varchar2(100 char),
	b_hit number(8) not null,
	b_notice varchar2(1 char) not null
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

insert into HR_BBS values(HR_BBS_seq.nextval, 'notice', 'test', 'test<br>message', 'test', 'test', sysdate, null, 0, '0');
insert into HR_BBS values(HR_BBS_seq.nextval, 'notice', '공지테스트', 'test<br>message', 'test', 'test', sysdate, 'test.jpg', 0, '1');

select * from HR_BBS;
select * from HR_REPLY;

drop table HR_BBS cascade constraint purge;
drop table HR_REPLY cascade constraint purge;

select r.*, m.m_name from HR_REPLY r, HR_BBS b, HR_MEMBER m 
where r.b_no=b.b_no and b_id=m_id 
order by rp_date;

select b.*, m.m_photo from HR_BBS b, HR_MEMBER m where b.b_no = 24 and b.b_id = m.m_id;

select * from (
			select rownum r, b_no, b_category, b_id, b_name, b_title, b_content, b_date, b_hit, b_notice, m_photo 
			from (select * from HR_BBS, HR_MEMBER where b_id = m_id order by b_notice, b_no)
		) where r <= 10 and r >= 1 
		order by r desc;

select * from HR_BBS b, HR_REPLY r 
where b.b_no = 23 and b.b_no = r.b_no; 

select count(*) from HR_BBS, HR_MEMBER where b_id = m_id;

update HR_BBS set b_hit = (b_hit + 1) where b_no = 23;

insert into HR_REPLY values(HR_REPLY_seq.nextval, 24, 'Good job!', 'tes2', '테스터', sysdate);

select r.*, m.m_photo from HR_REPLY r, HR_MEMBER m 
		where b_no = 24 and rp_id = m_id 
		order by rp_date;

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