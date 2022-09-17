select * from movie;

insert into movie (movieno, moviename)  values (1, '탑건');
insert into movie (movieno, moviename)  values (2, '탑건:매버릭');
insert into movie (movieno, moviename)  values (3, '공조');
insert into movie (movieno, moviename)  values (4, '공조2');

update movie set tving='Y', director='김성훈', genre='액션/코미디', poster='공조' where moviename='공조';
update movie set tving='Y', director='이석훈', genre='액션/코미디', poster='공조2' where moviename='공조2';

insert into member values (1, 'test@test.com', '123', '테스트', 'Y', 'N', 'N', 'N', 'N');
select * from member;