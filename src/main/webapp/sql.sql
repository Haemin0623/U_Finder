create table MOVIE (
	MOVIENO		number(4) primary key not null,
	MOVIENAME	varchar2(50) not null,
	STORY		varchar2(1000),
	DIRECTOR	varchar2(20),
	PLAYTIME	number(4),
	NETFLIX		varchar2(1) default 'N' not null,
	DISNEY		varchar2(1) default 'N' not null,
	COUPANG		varchar2(1) default 'N' not null,
	TVING		varchar2(1) default 'N' not null,
	GENRE		varchar2(20),
	CNT			number(4) default 0 not null,
	POSTER		varchar2(50),
	TRAILER		varchar2(500)
);

create table MEMBER (
	MEMBERNO	number(4) not null primary key,
	EMAIL		varchar2(30) not null,
	PASSWORD	varchar2(30) not null,
	NICKNAME	varchar2(30) not null,
	NETFLIX     varchar2(1) default 'N' not null,
	DISNEY      varchar2(1) default 'N' not null, 
	COUPANG     varchar2(1) default 'N' not null,
	TVING       varchar2(1) default 'N' not null,
	MEMBEROUT   varchar2(1) default 'N' not null 
);
