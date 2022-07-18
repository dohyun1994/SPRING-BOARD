# SPRING-BOARD

### <a href="http://54.180.25.57:8080/Potal" target="_blank">스프링 프로젝트 IP 주소 : http://54.180.25.57:8080/Potal </a>

[게시판 구현 과정 기록 1] https://ajar-podium-bfa.notion.site/MVC-1-42d3bdd21f64425aa8df3bf9f26b6910

[게시판 구현 과정 기록 2] https://ajar-podium-bfa.notion.site/MVC-2-150ac2f458c44d40859a6279f4657b8e

[게시판 구현 과정 기록 3] https://ajar-podium-bfa.notion.site/MVC-3-72310804adac40298d0b78894aa69148




![image](https://user-images.githubusercontent.com/88605278/179525888-5a25ab0b-8198-4781-aae4-77d9cea98d99.png)

1. 클라이언트(사용자)의 모든 요청은 DispatcherServlet이 받는다.
2. DispatcherServlet은 hanlderMapping을 통해서 요청에 해당하는 Controller를 실행 시킨다. 
3. Controller는 적절한 서비스 객체를 호출 시킨다.
4. Service는 DB처리를 위해  DAO를 이용하여 데이터를 요청 한다
5. DAO는 mybatis를 이용하는 Mapper를 통해 작업 처리를 한다.
6. 결과(처리한 데이터)가 mapper->DAO->Service->Controller로 전달된다.
7. Contorller는 전달된 결과(처리된 데이터)를 View Resolver를 통해전달 받을 View가 있는지 검색한다.
8. 전달 받은 View가 있다면 View에게 전달된 결과(처리된 데이터)를 전달한다.
9. View는 전달받은 결과(처리된 데이터)를 다시 DispatcherServlet에게 전달한다.
10. DispatcherServlet은 전달받은 결과(처리된 데이터)를 클라이언트에게 전달한다.

출처: https://min-it.tistory.com/7 [MIN-IT:티스토리]
