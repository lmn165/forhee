-- (선생님)과제 테이블 생성
create table T2_TEACHER(
	h_no		  number(5)		not null,
	writer        varchar2(100)	not null,
	title         varchar2(100)	not null,
	content       varchar2(100) ,
	ex_date		  date			,
	member_type	  number(1)
);

-- (학생)과제 테이블 생성
create table T2_STUDENT(
	no			number(5)		not null,
	h_no		number(5)		not null,
	writer		varchar2(100)	not null,
	content		varchar2(4000)	,
	submit_date	date			not null
);

-- 첨부파일 테이블 생성
create table T2_FILE(
	no				number(5)		,
	h_no			number(5)		not null,
	file_org		varchar2(500)	,
	file_sysname	varchar2(500)	not null,
	file_path		varchar2(500)	not null,
	file_size		number(20)		,
	category		number(1)		not null
);

-- 테이블 조회
select * from T2_TEACHER;
select * from T2_STUDENT;
select * from T2_FILE;

-- 테이블 삭제
drop table T2_TEACHER;
drop table T2_STUDENT;
drop table T2_FILE;

-- 시퀀스 생성(필요한지 모르겠음)
create sequence s_teacher_no;
create sequence s_student_no;
create sequence s_file_no;


