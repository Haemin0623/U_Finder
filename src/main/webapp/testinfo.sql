-- 영화
select * from movie;
insert into movie values (1, '탑건', '비행기가 슝슝', '토니 스콧', 110, 'Y', 'Y', 'N', 'N', '액션', 0, 'TopGun.jpg', 'https://www.youtube.com/watch?v=ArOMXELHiLw');
insert into movie values (2, '탑건: 매버릭', '비행기가 쿠와우오앙', '조셉 코신스키', 130, 'N', 'N', 'N', 'Y', '액션', 0, 'TopGunMaverick.png', 'https://www.youtube.com/watch?v=Mrj9XACVJ8U');
insert into movie values (3, '공조', '남/북 형사의 예측불가 공조수사', '김성훈', 125, 'Y', 'N', 'N', 'Y', '범죄', 0, 'ConfidentialAssignment.jpg', 'https://www.youtube.com/watch?v=g4qQXXtaMqc');
insert into movie values (4, '공조2: 인터내셔날', 'FBI까지 합세!', '이석훈', 129, 'Y', 'N', 'N', 'N', '범죄', 0, 'ConfidentialAssignment2.jpg', 'https://www.youtube.com/watch?v=fzUKUfHeIYA');
insert into movie values (5, '헤어질 결심', '헤어진다 ㅠ', '박찬욱', 138, 'N', 'N', 'N', 'Y', '멜로', 0, 'DecisionToLeave.jpg', 'https://www.youtube.com/watch?v=ArOMXELHiLw');
insert into movie values (6, '한산: 용의 출현', '와! 이순신!', '김한민', 129, 'N', 'N', 'Y', 'N', '사극', 0, 'Hansan.jpg', 'https://www.youtube.com/watch?v=GduEtmvwcI0');
insert into movie values (7, '해리 포터와 마법사의 돌', '와! 해리포터!', '크리스 콜롬버스', 152, 'N', 'N', 'Y', 'N', '판타지', 0, 'SorcerersStone.jpg', 'https://www.youtube.com/watch?v=PbdM1db3JbY');
insert into movie values (8, '해리 포터와 비밀의 방', '와! 도비!', '크리스 콜롬버스', 161, 'N', 'N', 'Y', 'N', '판타지', 0, 'ChamberofSecrets.jpg', 'https://www.youtube.com/watch?v=s4Fh2WQ2Xbk');
insert into movie values (9, '해리 포터와 아즈카반의 죄수', '와! 시리우스 블랙!', '알폰소 쿠아론', 141, 'N', 'N', 'Y', 'N', '판타지', 0, 'PrisonerofAzkaban.jpg', 'https://www.youtube.com/watch?v=R69laoH02xg');
insert into movie values (10, '해리 포터와 불의 잔', '와! 트라이위저드!', '마이크 뉴웰', 157, 'N', 'N', 'Y', 'N', '판타지', 0, 'GobletofFire.jpg', 'https://www.youtube.com/watch?v=7lJ6Suyp1ok');
insert into movie values (11, '해리 포터와 불사조 기사단', '와! 볼드모트!', '데이비드 예이츠', 138, 'N', 'N', 'Y', 'N', '판타지', 0, 'OrderofthePhoenix.jpg', 'https://www.youtube.com/watch?v=vz2_xS4TN6w');
insert into movie values (12, '해리 포터와 혼혈 왕자', '와! 세베루스 스네이프!', '데이비드 예이츠', 153, 'N', 'N', 'Y', 'N', '판타지', 0, 'HalfBloodPrince.jpg', 'https://www.youtube.com/watch?v=JYLdTuL9Wjw');
insert into movie values (13, '해리 포터와 죽음의 성물 - 1부', '와! 호크룩스!', '데이비드 예이츠', 146, 'N', 'N', 'Y', 'N', '판타지', 0, 'DeathlyHallowsPart1.jpg', 'https://www.youtube.com/watch?v=tM7gsg1cGu0');
insert into movie values (14, '해리 포터와 죽음의 성물 - 2부', '와! 해피엔딩!', '데이비드 예이츠', 130, 'N', 'N', 'Y', 'N', '판타지', 0, 'DeathlyHallowsPart2.jpg', 'https://www.youtube.com/watch?v=mObK5XD8udk');
insert into movie values (15, '범죄도시', '니 내 누군지 아니', '강윤성', 121, 'N', 'Y', 'N', 'N', '액션', 0, 'CriminalCity.jpg', 'https://www.youtube.com/watch?v=n-dYGqVVgU4');
insert into movie values (16, '범죄도시2', '형은 다 알 수가 있는데..', '이상용', 106, 'N', 'Y', 'N', 'N', '액션', 0, 'CriminalCity2.jpg', 'https://www.youtube.com/watch?v=DfqBfjboSNE');
insert into movie values (17, '악인전', '표적은 하나, 룰도 하나! 먼저 잡는 놈이 갖는다!', '이원태', 110, 'Y', 'Y', 'N', 'N', '액션', 0, 'TheGangster,TheCop,TheDevil.jpg', 'https://www.youtube.com/watch?v=bdv76JwvfIE');

update movie set trailer='https://www.youtube.com/embed/ArOMXELHiLw' where movieno=1;
update movie set trailer='https://www.youtube.com/embed/Mrj9XACVJ8U' where movieno=2;
update movie set trailer='https://www.youtube.com/embed/g4qQXXtaMqc' where movieno=3;
update movie set trailer='https://www.youtube.com/embed/fzUKUfHeIYA' where movieno=4;
update movie set trailer='https://www.youtube.com/embed/A33AdB4u8GQ' where movieno=5;
update movie set trailer='https://www.youtube.com/embed/GduEtmvwcI0' where movieno=6;
update movie set trailer='https://www.youtube.com/embed/PbdM1db3JbY' where movieno=7;
update movie set trailer='https://www.youtube.com/embed/s4Fh2WQ2Xbk' where movieno=8;
update movie set trailer='https://www.youtube.com/embed/R69laoH02xg' where movieno=9;
update movie set trailer='https://www.youtube.com/embed/7lJ6Suyp1ok' where movieno=10;
update movie set trailer='https://www.youtube.com/embed/vz2_xS4TN6w' where movieno=11;
update movie set trailer='https://www.youtube.com/embed/JYLdTuL9Wjw' where movieno=12;
update movie set trailer='https://www.youtube.com/embed/tM7gsg1cGu0' where movieno=13;
update movie set trailer='https://www.youtube.com/embed/mObK5XD8udk' where movieno=14;
update movie set trailer='https://www.youtube.com/embed/n-dYGqVVgU4' where movieno=15;
update movie set trailer='https://www.youtube.com/embed/DfqBfjboSNE' where movieno=16;
update movie set trailer='https://www.youtube.com/embed/bdv76JwvfIE' where movieno=17;


-- 회원
select * from member;

insert into member values (1, 'master', '123456', '마스터', 'Y', 'N', 'N', 'N', 'N', 'default');
insert into member values (2, 'haemin@test.com', '111', '해민', 'Y', 'Y', 'N', 'N', 'N', 'default');
insert into member values (3, 'sooin@test.com', '222', '수인', 'Y', 'N', 'Y', 'N', 'N', 'default');
insert into member values (4, 'sunny@test.com', '333', '선희', 'Y', 'N', 'N', 'Y', 'N', 'default');
insert into member values (5, 'changryul@test.com', '444', '창률', 'N', 'Y', 'N', 'N', 'N', 'default');
insert into member values (6, 'chim@naver.com', '555', '침착맨', 'N', 'Y', 'Y', 'N', 'N', 'default');
insert into member values (7, 'joo@daum.com', '666', '주호민', 'N', 'Y', 'N', 'Y', 'N', 'default');
insert into member values (8, 'poong@google.com', '777', '김풍', 'N', 'N', 'Y', 'N', 'N', 'default');
insert into member values (9, 'dddd@kakao.com', '888', '탈퇴', 'N', 'N', 'Y', 'Y', 'Y', 'default');
insert into member values (10, 'abcd@test.com', '999', '유재석', 'Y', 'Y', 'Y', 'N', 'N', 'default');
insert into member values (11, 'dcba@test.com', '000', '박명수', 'Y', 'Y', 'Y', 'Y', 'N', 'default');
insert into member values (12, 'test@test.com', '123', '테스트', 'Y', 'N', 'N', 'N', 'N', 'default');
select distinct a.* from actor a, movie m where a.movieno = m.movieno and m.movieno = 47;
-- 태그
select * from tag;

insert into tag values (1, '비행기', 1);
insert into tag values (2, 'F-14', 1);
insert into tag values (3, '비행기', 2);
insert into tag values (4, 'F-14', 2);
insert into tag values (5, '남한', 3);
insert into tag values (6, '북한', 3);
insert into tag values (7, '남한', 4);
insert into tag values (8, '북한', 4);
insert into tag values (9, '연애', 5);
insert into tag values (10, '이별', 5);
insert into tag values (11, '이순신', 6);
insert into tag values (12, '명량', 6);
insert into tag values (13, '부엉이', 7);
insert into tag values (14, '지팡이', 7);
insert into tag values (15, '부엉이', 8);
insert into tag values (16, '지팡이', 8);
insert into tag values (17, '부엉이', 9);
insert into tag values (18, '지팡이', 9);
insert into tag values (19, '부엉이', 10);
insert into tag values (20, '지팡이', 10);
insert into tag values (21, '부엉이', 11);
insert into tag values (22, '지팡이', 11);
insert into tag values (23, '부엉이', 12);
insert into tag values (24, '지팡이', 12);
insert into tag values (25, '부엉이', 13);
insert into tag values (26, '지팡이', 13);
insert into tag values (27, '부엉이', 14);
insert into tag values (28, '지팡이', 14);
insert into tag values (29, '베트남', 15);
insert into tag values (30, '베트남', 16);


-- 배우
select * from actor;

insert into actor values (1, '톰 크루즈', 1);
insert into actor values (2, '켈리 맥길리스', 1);
insert into actor values (3, '톰 크루즈', 2);
insert into actor values (4, '마일스 텔러', 2);
insert into actor values (5, '현빈', 3);
insert into actor values (6, '유해진', 3);
insert into actor values (7, '현빈', 4);
insert into actor values (8, '다니엘 헨리', 4);
insert into actor values (9, '탕웨이', 5);
insert into actor values (10, '박해일', 5);
insert into actor values (11, '박해일', 6);
insert into actor values (12, '변요한', 6);
insert into actor values (13, '다니엘 래드클리프', 7);
insert into actor values (14, '엠마 왓슨', 7);
insert into actor values (15, '다니엘 래드클리프', 8);
insert into actor values (16, '루퍼트 그린트', 8);
insert into actor values (17, '다니엘 래드클리프', 9);
insert into actor values (18, '엠마 왓슨', 9);
insert into actor values (19, '다니엘 래드클리프', 10);
insert into actor values (20, '루퍼트 그린트', 10);
insert into actor values (21, '다니엘 래드클리프', 11);
insert into actor values (22, '엠마 왓슨', 11);
insert into actor values (23, '다니엘 래드클리프', 12);
insert into actor values (24, '루퍼트 그린트', 12);
insert into actor values (25, '마동석', 15);
insert into actor values (26, '마동석', 16);
insert into actor values (27, '윤계상', 15);
insert into actor values (28, '손석구', 16);
insert into actor values (29, '마동석', 17);

-- 찜
select * from pick;

insert into pick values (1, 1, 1);
insert into pick values (2, 2, 1);
insert into pick values (3, 3, 1);
insert into pick values (4, 4, 2);
insert into pick values (5, 5, 2);
insert into pick values (6, 6, 2);
insert into pick values (7, 7, 3);
insert into pick values (8, 8, 3);
insert into pick values (9, 9, 3);
insert into pick values (10, 10, 4);
insert into pick values (11, 11, 4);
insert into pick values (12, 1, 4);
insert into pick values (13, 2, 5);
insert into pick values (14, 3, 5);
insert into pick values (15, 5, 5);
insert into pick values (16, 7, 6);
insert into pick values (17, 8, 6);
insert into pick values (18, 5, 6);
insert into pick values (19, 1, 7);
insert into pick values (20, 2, 7);
insert into pick values (21, 6, 7);
insert into pick values (22, 3, 8);
insert into pick values (23, 4, 8);
insert into pick values (24, 5, 8);
insert into pick values (25, 7, 9);
insert into pick values (26, 9, 9);
insert into pick values (27, 10, 9);
insert into pick values (28, 1, 10);
insert into pick values (29, 2, 10);
insert into pick values (30, 10, 10);
insert into pick values (31, 8, 11);
insert into pick values (32, 7, 11);
insert into pick values (33, 6, 11);

-- 리뷰
select * from review;

insert into review values (1, 1, 1, '재밋어요', 5, 'N');
insert into review values (2, 2, 1, '노잼', 1, 'N');
insert into review values (3, 3, 1, '볼만해', 3, 'N');
insert into review values (4, 2, 2, '쌉노잼', 0, 'N');
insert into review values (5, 4, 2, '재밋네', 4, 'N');
insert into review values (6, 6, 2, '명작이야', 5, 'N');
insert into review values (7, 7, 3, '내 돈 주곤 안봐', 1, 'N');
insert into review values (8, 9, 3, '진짜 전설이다..', 5, 'N');
insert into review values (9, 1, 3, '하...', 0, 'N');
insert into review values (10, 2, 4, '쏘쏘', 3, 'N');
insert into review values (11, 4, 4, '흠', 2, 'N');
insert into review values (12, 6, 4, '노잼', 2, 'N');
insert into review values (13, 8, 5, '개노잼', 1, 'N');
insert into review values (14, 4, 5, '짱잼', 4, 'N');
insert into review values (15, 1, 5, '꿀잼', 5, 'N');
insert into review values (16, 3, 6, '허니잼', 5, 'N');
insert into review values (17, 11, 6, '괜찮아', 4, 'N');
insert into review values (18, 6, 6, '메롱', 0, 'Y');
insert into review values (19, 2, 7, '퉤', 0, 'N');
insert into review values (20, 13, 7, '별이 다섯개', 5, 'N');
insert into review values (21, 6, 7, '똥', 1, 'N');
insert into review values (22, 8, 8, '왜보냐', 0, 'N');
insert into review values (23, 6, 8, '다신 안봐', 2, 'N');
insert into review values (24, 1, 8, '보다 끔', 0, 'N');
insert into review values (25, 2, 9, '수작이야', 4, 'N');
insert into review values (26, 3, 9, '평작이야', 3, 'N');
insert into review values (27, 4, 9, '망작이야', 0, 'N');
insert into review values (28, 5, 10, '나가라', 1, 'N');
insert into review values (29, 6, 10, '끼요옷', 2, 'Y');
insert into review values (30, 7, 10, '삭제', 5, 'Y');
insert into review values (31, 8, 11, '너무 재밋엉', 5, 'N');
insert into review values (32, 9, 11, '깔깔깔', 4, 'N');
insert into review values (33, 13, 11, '후', 2, 'N');

select*from member;
