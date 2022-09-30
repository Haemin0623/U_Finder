-- 영화
drop table movie cascade constraints;
create table movie (
    movieno number(4) primary key not null,
    moviename varchar2(100) not null,
    story varchar2(4000),
    director varchar2(50),
    playtime number(4),
    netflix varchar2(1) default 'N' not null,
    disney varchar2(1) default 'N' not null,
    coupang varchar2(1) default 'N' not null,
    tving varchar2(1) default 'N' not null,
    genre varchar2(50),
    cnt number(10) default 0 not null,
    poster varchar2(100),
    trailer varchar2(1000)
);
select * from movie;
alter table movie rename column cnt to mvcnt;

-- 회원
drop table member cascade constraints;
create table member (
    memberno number(4) primary key not null,
    id varchar2(30) not null,
    password varchar2(30) not null,
    nickname varchar2(30) not null,
    netflix varchar2(1) default 'N' not null,
    disney varchar2(1) default 'N' not null,
    coupang varchar2(1) default 'N' not null,
    tving varchar2(1) default 'N' not null,
    memberout varchar2(1) default 'N' not null
);
alter table member add profile varchar2(100);
select * from member;

-- 태그 
drop table tag;
create table tag (
    tagno number(4) primary key not null,
    tag varchar2(50) not null,
    movieno number(4) not null,
    constraint fk_tag foreign key(movieno) references movie(movieno)
);
select * from tag;

-- 캘린더
--drop table calendar;
--create table calendar (
--   calno number(4) primary key not null,
--    movieno number(4) not null,
--    opendate date not null,
--    constraint fk_calendar foreign key(movieno) references movie(movieno)
--);
--select * from calendar;

-- 찜
drop table pick;
create table pick (
    pickno number(4) primary key not null,
    movieno number(4) not null,
    memberno number(4) not null,
    constraint fk_pick1 foreign key(movieno) references movie(movieno),
    constraint fk_pick2 foreign key(memberno) references member(memberno)
);
select * from pick;

-- 리뷰
drop table review cascade constraints;
create table review (
    reviewno number(4) primary key not null,
    movieno number(4) not null,
    memberno number(4) not null,
    content varchar2(500) not null,
    movielike number(1) default 0 not null,
    del varchar2(1) default 'N' not null,
    constraint fk_review1 foreign key(movieno) references movie(movieno),
    constraint fk_review2 foreign key(memberno) references member(memberno)
);
select * from review;

-- 배우
drop table actor;
create table actor (
    actorno number(4) primary key not null,
    actorname varchar2(100) not null,
    movieno number(4) not null,
    constraint fk_actor foreign key(movieno) references movie(movieno)
);
select * from actor;

