# YOLLOWA

## Activity / lodgement reservation System.

### 화면 레이아웃 구성 및 템플릿화

html,css,javascript,bootstrap,jquery,java8,Spring,oAuth2.0,naverAPI,kakaoAPI 등을 이용하여 개발하였습니다.

메인화면, 마이페이지, 로그인 , 장바구니 , 찜목록 , 리뷰쓰기 , 예약현황 등 

전체적인 UI/UX 및 로직 구현 하였습니다.

## 로컬 OAuth 설정

OAuth 자격증명은 저장소에 커밋하지 않고 실행 환경에서 제공합니다.

- `NAVER_CLIENT_ID`
- `NAVER_CLIENT_SECRET`
- `GOOGLE_CLIENT_ID`
- `GOOGLE_CLIENT_SECRET`
- `GOOGLE_API_KEY`

커밋 전 `bash tests/check_credentials.sh`로 설정과 알려진 provider key 패턴을 검사합니다.

GitHub Actions는 Java 11에서 main/test source compilation도 수행합니다. 기존 DAO 통합 테스트는 외부 데이터베이스가 필요하므로 자동 실행하지 않습니다.

![Untitled](https://user-images.githubusercontent.com/64122884/102733621-165d7d80-4381-11eb-8beb-74892682e83c.png)
![Untitled 1](https://user-images.githubusercontent.com/64122884/102733614-13628d00-4381-11eb-86a0-a97a5f8de808.png)
![Untitled 2](https://user-images.githubusercontent.com/64122884/102733615-1493ba00-4381-11eb-8cab-ae64a482c13b.png)
![Untitled 3](https://user-images.githubusercontent.com/64122884/102733616-152c5080-4381-11eb-8c19-a3ab75262098.png)
![Untitled 4](https://user-images.githubusercontent.com/64122884/102733618-152c5080-4381-11eb-8c1d-3237efd239b8.png)
![Untitled 5](https://user-images.githubusercontent.com/64122884/102733619-15c4e700-4381-11eb-89e0-b356648c08e8.png)
![Untitled 6](https://user-images.githubusercontent.com/64122884/102733620-15c4e700-4381-11eb-9955-385f1ec25cde.png)
