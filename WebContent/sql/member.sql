-- 생성
create table T2_MEMBER(
	id            varchar2(20)  primary key,
	name          varchar2(20)  not null,
	password      varchar2(20)  not null,
	email         varchar2(30)          ,
	member_type   number(1)     default 2, -- 0: 관리자, 1: 강사, 2: 학생
	phone_number  number(15)            ,
	gender        number(1)     not null,  -- 0: 남자 , 1: 여자
	sign_date     date          default sysdate
);

-- 테이블 조회
select * from T2_MEMBER;

-- 테이블 삭제
drop table T2_MEMBER;

-- 기본 멤버 추가
insert into T2_MEMBER(id, name, password, member_type, gender)
values('admin', '관리자', 1234, 0, 0);
insert into T2_MEMBER(id, name, password, member_type, gender)
values('teacher', '강사', 1234, 1, 0);
insert into T2_MEMBER(id, name, password, email, member_type, phone_number, gender)
values('stu', '학생', 1234, 'a@a.com', 2, 01012345678, 0);
insert into T2_MEMBER(id, name, password, email, member_type, phone_number, gender)
values('Inchijeong', '인치정', 1234, 'a@a.com', 2, 01012345678, 0);


