# 유_Finder
1st project
2022/9/1 ~ 2022/10/4

## 개요
![image](https://user-images.githubusercontent.com/112607474/204413119-2b73851f-54e7-41da-bd86-ae23d305df0e.png)
프레임워크 없이 servlet을 이용한 jsp 웹사이트 개발하는 프로젝트 입니다.  
수많은 스트리밍 서비스(OTT)들 중에서 내가 보고싶은 영화가 어느곳에서 서비스 하는지를 확인 하는 사이트를 만드는 것이 목적입니다.  
  
## 개발환경
- IDE : Eclipse
* 언어 : JAVA, javaScript
+ 서버 : Apache Tomcat v9.0
- DB : Oracle RDBMS (MyBatis)
  
## 팀
![image](https://user-images.githubusercontent.com/112607474/204417286-6cd060f9-ec66-48c1-bc89-6302b6c2104c.png)
이번 프로젝트에서는 메인페이지와 관리자페이지를 담당했습니다. 
  
## ERD
![image](https://user-images.githubusercontent.com/112607474/204416080-62c95e9c-3cf9-45a4-8f95-c13c04e13ea6.png)
DB구성은 크게 영화정보를 담는 테이블과, 회원관리를 위한 테이블 로 나누어집니다.  
  
## 주요 화면 구성
##### 메인화면
![image](https://user-images.githubusercontent.com/112607474/204421517-7d905a5a-aac4-4c43-8a67-6da55254c775.png)
![image](https://user-images.githubusercontent.com/112607474/204421528-56e523c3-d77b-4a1b-8bb5-03d268c17a1d.png)
메인 화면은 블럭의 조건 맞는 영화 리스트를 불러오며, 자동으로 슬라이딩 됩니다.  
인기작은 사람들이 많이 찾은(조회수 기준) 순서로 보여주며, 신작은 DB에 최근에 등록 된 순서, 찜목록은 로그인 후 회원이 찜한 영화만을 보여줍니다.  
  
##### OTT별 영화목록
![image](https://user-images.githubusercontent.com/112607474/204422018-3f0ad861-9075-4ae9-88eb-d0e3822b00e1.png)
상단에서 OTT서비스를 선택하면 해당 OTT에 등록된 영화목록을 볼 수 있습니다.  
  
##### 검색
![image](https://user-images.githubusercontent.com/112607474/204422133-ee821632-7d91-4cbd-ad6e-f11a9b315935.png)
출연 배우, DB에 등록한 검색어(영화제 수상작 등)를 검색하면 일치하는 영화들을 보여줍니다.  
  
##### 영화정보
![image](https://user-images.githubusercontent.com/112607474/204422290-b39419ad-b6dc-451b-a601-02a0b283253a.png)
![image](https://user-images.githubusercontent.com/112607474/204422807-49fddd98-7393-4422-aa78-aa23eeb677f8.png)
영화 상세로 들어가면 해당 영화의 간단한 소개와 예고편, 해당 영화의 리뷰와 추천작을 소개해 줍니다.  

그 외에 회원가입과 로그인,  
관리자페이지를 통해 DB관리를 할 수 있습니다.
