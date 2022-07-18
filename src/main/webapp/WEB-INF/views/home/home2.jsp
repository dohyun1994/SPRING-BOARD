<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>Spring</title>
    <!-- jQuery 스크립트 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <!-- Favicon-->
    <link rel="icon" type="image/x-icon" href="./resources/assets/favicon.ico" />
    <!-- Font Awesome icons (free version)-->
    <script src="https://use.fontawesome.com/releases/v5.15.4/js/all.js" crossorigin="anonymous"></script>
    <!-- Google fonts-->
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css" />
    <link href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet"
        type="text/css" />
    <!-- Core theme CSS (includes Bootstrap)-->
    <link href="./resources/css/styles.css" rel="stylesheet" />
</head>
<body id="page-top">
    <!-- Navigation-->
    <nav class="navbar navbar-expand-lg bg-secondary text-uppercase fixed-top" id="mainNav">
        <div class="container">
            <a class="navbar-brand" href="home.do">SPRING</a>
            <button class="navbar-toggler text-uppercase font-weight-bold bg-primary text-white rounded"
                type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive"
                aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                Menu
                <i class="fas fa-bars"></i>
            </button>
            <div class="collapse navbar-collapse" id="navbarResponsive">
                <ul class="navbar-nav ms-auto">
                    <jsp:include page="../home/menu.jsp" />
                </ul>
            </div>
        </div>
    </nav>
    <!-- Masthead-->
    <header class="masthead bg-primary text-white text-center">
        <div class="container d-flex align-items-center flex-column">
            <!-- Masthead Avatar Image-->
            <img class="masthead-avatar mb-5" src="./resources/assets/img/avataaars.svg" alt="..." />
            <!-- Masthead Heading-->
            <h1 class="masthead-heading text-uppercase mb-0">윤 도 현</h1>
            <!-- Icon Divider-->
            <div class="divider-custom divider-light">
                <div class="divider-custom-line"></div>
                <div class="divider-custom-icon"><i class="fas fa-star"></i></div>
                <div class="divider-custom-line"></div>
            </div>
            <!-- Masthead Subheading-->
            <p class="masthead-subheading font-weight-light mb-0" align="center">*보유 기술서<br>JAVA, JSP, SPRING,
                <br>이메일<br>hiyaya94@naver.com</p>
        </div>
    </header>
   <div align="center" style="background-color: #1abc9c;">
	<div><h2 class="page-section-heading text-center text-uppercase text-white">Welcome to my Web-site</h2></div>
	<button type="button" class="btn btn-xl btn-outline-light" onclick="memberList()">멤버리스트 ajax 호출하기</button>
	<div id="memberList"></div>	<!--  호출결과를 여기다 출력 -->
	</div>

<script type="text/javascript">
   function memberList(){
      $.ajax({
         url : "ajaxMemberList.do",
         dataType : "json",
         success : function(data) { //넘어온 데이터를 가공해서 원하는 곳에 출력해준다.
            if(data.length>0){
            	viewHtml(data);
            }else{
               alert("데이터가 존재하지 않습니다.");
            }   
         },
         error : function() {
        	 alert("데이터 가져오기 실패.");
         }
      });   
   }
   
   function viewHtml(data){
      var html = "<br><table border='1'>";
      html += "<tr>";
      html += "<th width='150'>아이디</th>";
      html += "<th width='150'>이 름</th>";
      html += "<th width='150'>전화번호</th>";
      html += "<th width='200'>주 소</th>";
      html += "<th width='150'>권 한</th>";
      $(data).each(function(index, item){
         html +="<tr align='center'>";
         html +="<td>"+item.id+"</td>";
         html +="<td>"+item.name+"</td>";
         html +="<td>"+item.tel+"</td>";
         html +="<td>"+item.address+"</td>";
         html +="<td>"+item.author+"</td></tr>";
      });
      html +="</table>";
      html +="<br>";
      html +="<button type='button' class='btn btn-xl btn-outline-light' onclick='closeData()'>";
      html +="데이터창 닫기</button>";
      html +="<br>";
      $("#memberList").append(html);
   }
   
   function closeData() {
      $("#memberList").empty();
   } 
</script>
    <section class="page-section bg-primary text-white mb-0" id="about">
        <div class="container">
            <!-- About Section Heading-->
            <h2 class="page-section-heading text-center text-uppercase text-white">자기소개</h2>
            <!-- Icon Divider-->
            <div class="divider-custom divider-light">
                <div class="divider-custom-line"></div>
                <div class="divider-custom-icon"><i class="fas fa-star"></i></div>
                <div class="divider-custom-line"></div>
            </div>
            <!-- About Section Content-->
            <div class="row">
                <p class="lead" align="center">
                    대구 국비지원 학원에서 빅데이터 분석과 자바, 파이썬 개발자 양성 과정 수강중에 스프링 프레임워크를 이용한 간단한 게시판 웹 애플리케이션을 구현해보았습니다.
                    아직 많은 개발 경험이 없어 구현하지 못한 부분도 있고 부족한 부분도 많습니다. 하지만 반복 학습과 회사 배움에 맞춰 꾸준히 성장할 수 있는 사람이 되고 싶습니다. 감사합니다. </p>
            </div>
        </div>
        <!-- About Section Button-->
        <div class="text-center mt-4">
            <a class="btn btn-xl btn-outline-light" href="https://github.com/dohyun1994/SPRING-BOARD">
                <i class="fas fa-download me-2"></i>
                깃허브로 이동
            </a>
        </div>
    </section>
    <!-- Footer-->
    <footer class="footer text-center">
        <div class="container">
            <div class="row">
                <!-- Footer Location-->
                <div class="col-lg-4 mb-5 mb-lg-0">
                    <h4 class="text-uppercase mb-4">선호 지역</h4>
                    <p class="lead mb-0">
                        서울
                        <br />
                    </p>
                </div>
                <!-- Footer Social Icons-->
                <div class="col-lg-4 mb-5 mb-lg-0">
                    <h4 class="text-uppercase mb-4">프로젝트 구현 과정 및 GSITM 업무내용</h4>
                    <a class="btn btn-outline-light btn-social mx-1" href="https://ajar-podium-bfa.notion.site/MVC-1-42d3bdd21f64425aa8df3bf9f26b6910" target="_blank"><i
                            class="fab fa-fw fa-facebook-f"></i></a>
                    <a class="btn btn-outline-light btn-social mx-1" href="https://ajar-podium-bfa.notion.site/MVC-2-150ac2f458c44d40859a6279f4657b8e" target="_blank"><i
                            class="fab fa-fw fa-twitter"></i></a>
                    <a class="btn btn-outline-light btn-social mx-1" href="https://ajar-podium-bfa.notion.site/MVC-3-72310804adac40298d0b78894aa69148" target="_blank"><i
                            class="fab fa-fw fa-linkedin-in"></i></a>
                    <a class="btn btn-outline-light btn-social mx-1" href="https://ajar-podium-bfa.notion.site/ITSM-4e433ee43e10441599033ab901eac8d6" target="_blank"><i
                            class="fab fa-fw fa-dribbble"></i></a>
                </div>
                <!-- Footer About Text-->
                <div class="col-lg-4">
                    <h4 class="text-uppercase mb-4">현재 거주지</h4>
                    <p class="lead mb-0">
                        서울 마포구<br>
                    </p>
                </div>
            </div>
        </div>
    </footer>
    <!-- Copyright Section-->
    <div class="copyright py-4 text-center text-white">
        <div class="container"><small>Copyright &copy; Your Website 2022</small></div>
    </div>
    
    <!-- Bootstrap core JS-->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <!-- Core theme JS-->
    <script src="js/scripts.js"></script>
    <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
    <!-- * *                               SB Forms JS                               * *-->
    <!-- * * Activate your form at https://startbootstrap.com/solution/contact-forms * *-->
    <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
    <script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
</body>
</html>