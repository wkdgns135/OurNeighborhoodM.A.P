<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.Date,java.sql.*"%>
<!DOCTYPE html>
<html lang="ko">
<style type="text/css">
.inputTilte {
	padding-bottom: 30px
}

.inputTitle {
	width: 100%
}

.inputContent {
	width: 100%
}
</style>
<head>

<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
	
<title>WellShare</title>

<!-- Custom fonts for this template-->
<link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet"
	type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">

<!-- Custom styles for this template-->
<link href="css/sb-admin-2.min.css" rel="stylesheet">

</head>

<body id="page-top">
	<%
	if(session.getAttribute("sid") == null){
		out.println("<script>");
		out.println("alert('로그인이 필요합니다.');");
		out.println("window.location.replace('login.html');");
		out.println("</script>");
	}
	
	%>
	<!-- Page Wrapper -->
	<div id="wrapper">

		<!-- Sidebar -->
		<ul
			class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion"
			id="accordionSidebar">

			<!-- Sidebar - Brand -->
			<a
				class="sidebar-brand d-flex align-items-center justify-content-center"
				href="index.jsp">
					<div class="col-lg-5 d-none d-lg-block">
						<img src="img/noodles.png"
							style="background-position: center; background-size: cover;"
							width="70%" height="70%">
					</div>
				<div class="sidebar-brand-text mx-3">
					우<sub>리</sub>동<sub>네</sub><br>M.A.P
				</div>
			</a>

			<!-- Divider -->
			<hr class="sidebar-divider my-0">

			<!-- Nav Item - Dashboard -->
			<li class="nav-item active"><a class="nav-link"
				href="index.html"> <i></i> <span>홈</span></a></li>

			<!-- Divider -->
			<hr class="sidebar-divider">

			<!-- Heading -->
			<div class="sidebar-heading">분야</div>

			<!-- Nav Item - Pages Collapse Menu -->
			<li class="nav-item"><a class="nav-link collapsed" href="#"
				data-toggle="collapse" data-target="#collapseTwo"
				aria-expanded="true" aria-controls="collapseTwo"> <span>음악</span>
			</a>
				<div id="collapseTwo" class="collapse" aria-labelledby="headingTwo"
					data-parent="#accordionSidebar">
					<div class="bg-white py-2 collapse-inner rounded">
						<h6 class="collapse-header">세부 분야:</h6>
						<a class="collapse-item" href="buttons.html">리코더 교실</a> <a
							class="collapse-item" href="cards.html">실로폰 교실</a> <a
							class="collapse-item" href="buttons.html">피아노 교실</a> <a
							class="collapse-item" href="cards.html">장구 교실</a> <a
							class="collapse-item" href="cards.html">가창 교실</a> <a
							class="collapse-item" href="cards.html">랩 교실</a>
					</div>
				</div></li>

			<!-- Nav Item - Utilities Collapse Menu -->
			<li class="nav-item"><a class="nav-link collapsed" href="#"
				data-toggle="collapse" data-target="#collapseUtilities"
				aria-expanded="true" aria-controls="collapseUtilities"> <span>미술</span>
			</a>
				<div id="collapseUtilities" class="collapse"
					aria-labelledby="headingUtilities" data-parent="#accordionSidebar">
					<div class="bg-white py-2 collapse-inner rounded">
						<h6 class="collapse-header">세부 분야:</h6>
						<a class="collapse-item" href="utilities-color.html">수채화 교실</a> <a
							class="collapse-item" href="utilities-border.html">색종이 교실</a> <a
							class="collapse-item" href="utilities-animation.html">악세사리 교실</a>
						<a class="collapse-item" href="utilities-other.html">클레이 교실</a>
					</div>
				</div></li>

			<!-- Nav Item - Pages Collapse Menu -->
			<li class="nav-item"><a class="nav-link collapsed" href="#"
				data-toggle="collapse" data-target="#collapseP" aria-expanded="true"
				aria-controls="collapseP"> <span>체육</span>
			</a>
				<div id="collapseP" class="collapse" aria-labelledby="headingTwo"
					data-parent="#accordionSidebar">
					<div class="bg-white py-2 collapse-inner rounded">
						<h6 class="collapse-header">세부 분야:</h6>
						<a class="collapse-item" href="buttons.html">태권도 교실</a> <a
							class="collapse-item" href="cards.html">발레 교실</a> <a
							class="collapse-item" href="buttons.html">요가 교실</a> <a
							class="collapse-item" href="cards.html">댄스 교실</a> <a
							class="collapse-item" href="cards.html">체조 교실</a>

					</div>
				</div></li>

			<!-- Nav Item - Utilities Collapse Menu -->
			<li class="nav-item"><a class="nav-link collapsed" href="#"
				data-toggle="collapse" data-target="#collapseNa"
				aria-expanded="true" aria-controls="collapseNa"> <span>자연</span>
			</a>
				<div id="collapseNa" class="collapse"
					aria-labelledby="sheadingUtilities" data-parent="#accordionSidebar">
					<div class="bg-white py-2 collapse-inner rounded">
						<h6 class="collapse-header">세부 분야:</h6>
						<a class="collapse-item" href="utilities-color.html">원예 교실</a> <a
							class="collapse-item" href="utilities-border.html">꽃 교실</a> <a
							class="collapse-item" href="utilities-animation.html">농작물 교실</a>
					</div>
				</div></li>

			<!-- Divider -->
			<hr class="sidebar-divider">

			<!-- Heading -->
			<div class="sidebar-heading">내 채널</div>
			<!-- Nav Item - Charts -->
			<li class="nav-item"><a class="nav-link" href="upload.html">
					<span>새영상업로드</span>
			</a></li>

			<!-- Nav Item - Tables -->
			<li class="nav-item"><a class="nav-link" href="history.html">
					<span>활동 기록</span>
			</a></li>

			<!-- Divider -->
			<hr class="sidebar-divider d-none d-md-block">

			<!-- Nav Item - Pages Collapse Menu -->
			<li class="nav-item"><a class="nav-link collapsed" href="#"
				data-toggle="collapse" data-target="#collapsePages"
				aria-expanded="true" aria-controls="collapsePages"> <span>구매관련</span>
			</a>
				<div id="collapsePages" class="collapse"
					aria-labelledby="headingPages" data-parent="#accordionSidebar">
					<div class="bg-white py-2 collapse-inner rounded">
						<h6 class="collapse-header">확인:</h6>
						<a class="collapse-item" href="register.html">주문목록</a> <a
							class="collapse-item" href="forgot-password.html">배송조회</a>
						<div class="collapse-divider"></div>
						<h6 class="collapse-header">주문하기:</h6>
						<a class="collapse-item" href="404.html">단일키트</a> <a
							class="collapse-item" href="blank.html">정기키트</a>
					</div>
				</div></li>

			<!-- Divider -->
			<hr class="sidebar-divider d-none d-md-block">

			<!-- Sidebar Toggler (Sidebar) -->
			<div class="text-center d-none d-md-inline">
				<button class="rounded-circle border-0" id="sidebarToggle"></button>
			</div>

			<!-- Sidebar Message -->

		</ul>
		<!-- End of Sidebar -->

		<!-- Content Wrapper -->
		<div id="content-wrapper" class="d-flex flex-column">

			<!-- Main Content -->
			<div id="content">

				<!-- Topbar -->
				<nav
					class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

					<!-- Sidebar Toggle (Topbar) -->
					<button id="sidebarToggleTop"
						class="btn btn-link d-md-none rounded-circle mr-3">
						<i class="fa fa-bars"></i>
					</button>

					<!-- Topbar Search -->
					<form
						class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
						<div class="input-group">
							<input type="text" class="form-control bg-light border-0 small"
								placeholder="Search for..." aria-label="Search"
								aria-describedby="basic-addon2">
							<div class="input-group-append">
								<button class="btn btn-primary" type="button">
									<i class="fas fa-search fa-sm"></i>
								</button>
							</div>
						</div>
					</form>

					<!-- Topbar Navbar -->
					<ul class="navbar-nav ml-auto">

						<!-- Nav Item - Search Dropdown (Visible Only XS) -->
						<li class="nav-item dropdown no-arrow d-sm-none"><a
							class="nav-link dropdown-toggle" href="#" id="searchDropdown"
							role="button" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false"> <i class="fas fa-search fa-fw"></i>
						</a> <!-- Dropdown - Messages -->
							<div
								class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in"
								aria-labelledby="searchDropdown">
								<form class="form-inline mr-auto w-100 navbar-search">
									<div class="input-group">
										<input type="text"
											class="form-control bg-light border-0 small"
											placeholder="Search for..." aria-label="Search"
											aria-describedby="basic-addon2">
										<div class="input-group-append">
											<button class="btn btn-primary" type="button">
												<i class="fas fa-search fa-sm"></i>
											</button>
										</div>
									</div>
								</form>
							</div></li>

						<!-- Nav Item - Alerts -->
						<li class="nav-item dropdown no-arrow mx-1"><a
							class="nav-link dropdown-toggle" href="#" id="alertsDropdown"
							role="button" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false"> <i class="fas fa-bell fa-fw"></i> <!-- Counter - Alerts -->
								<span class="badge badge-danger badge-counter">3+</span>
						</a> <!-- Dropdown - Alerts -->
							<div
								class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in"
								aria-labelledby="alertsDropdown">
								<h6 class="dropdown-header">알림</h6>
								<a class="dropdown-item d-flex align-items-center" href="#">
									<div class="mr-3">
										<div class="icon-circle bg-primary">
											<i class="fas fa-file-alt text-white"></i>
										</div>
									</div>
									<div>
										<div class="small text-gray-500">2021년 7월 26일</div>
										<span class="font-weight-bold">새로운 영상이 업로드 완료되었습니다!!</span>
									</div>
								</a> <a class="dropdown-item d-flex align-items-center" href="#">
									<div class="mr-3">
										<div class="icon-circle bg-success">
											<i class="fas fa-donate text-white"></i>
										</div>
									</div>
									<div>
										<div class="small text-gray-500">2021년 7월 24일</div>
										단일 키트 15,000원이 결제완료 되었습니다! 얼른 배송해 드릴께요~
									</div>
								</a> <a class="dropdown-item d-flex align-items-center" href="#">
									<div class="mr-3">
										<div class="icon-circle bg-warning">
											<i class="fas fa-exclamation-triangle text-white"></i>
										</div>
									</div>
									<div>
										<div class="small text-gray-500">2021년 7월 21일</div>
										코로나19의 영향으로 키트 배송이 지연되고 있습니다. 자세한 사항은...
									</div>
								</a> <a class="dropdown-item text-center small text-gray-500"
									href="#">모든 알림보기</a>
							</div></li>

						<!-- Nav Item - Messages -->
						<li class="nav-item dropdown no-arrow mx-1"><a
							class="nav-link dropdown-toggle" href="#" id="messagesDropdown"
							role="button" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false"> <i class="fas fa-envelope fa-fw"></i>
								<!-- Counter - Messages --> <span
								class="badge badge-danger badge-counter">7</span>
						</a> <!-- Dropdown - Messages -->
							<div
								class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in"
								aria-labelledby="messagesDropdown">
								<h6 class="dropdown-header">메시지</h6>
								<a class="dropdown-item d-flex align-items-center" href="#">
									<div class="dropdown-list-image mr-3">
										<img class="rounded-circle" src="img/undraw_profile_1.svg"
											alt="...">
										<div class="status-indicator bg-success"></div>
									</div>
									<div class="font-weight-bold">
										<div class="text-truncate">언니 다음 영상도 기대 하고 있을 께요!</div>
										<div class="small text-gray-500">쭈아</div>
									</div>
								</a> <a class="dropdown-item d-flex align-items-center" href="#">
									<div class="dropdown-list-image mr-3">
										<img class="rounded-circle" src="img/undraw_profile_2.svg"
											alt="...">
										<div class="status-indicator"></div>
									</div>
									<div>
										<div class="text-truncate">이번 영상 완전 재미있었어요 제 영상도 보러와
											주세요!</div>
										<div class="small text-gray-500">날아오른 토마토</div>
									</div>
								</a> <a class="dropdown-item d-flex align-items-center" href="#">
									<div class="dropdown-list-image mr-3">
										<img class="rounded-circle" src="img/undraw_profile_3.svg"
											alt="...">
										<div class="status-indicator bg-warning"></div>
									</div>
									<div>
										<div class="text-truncate">안녕하세요 다음 댄스영상 콜라보레이션</div>
										<div class="small text-gray-500">모닝크로와상</div>
									</div>
								</a> <a class="dropdown-item d-flex align-items-center" href="#">
									<div class="dropdown-list-image mr-3">
										<img class="rounded-circle"
											src="https://source.unsplash.com/Mv9hjnEUHR4/60x60" alt="...">
										<div class="status-indicator bg-success"></div>
									</div>
									<div>
										<div class="text-truncate">코로나19로 인한 키트 배송지연과 관련하여 .</div>
										<div class="small text-gray-500">관리자</div>
									</div>
								</a> <a class="dropdown-item text-center small text-gray-500"
									href="#">메시지 더보기</a>
							</div></li>

						<div class="topbar-divider d-none d-sm-block"></div>

						<!-- Nav Item - User Information -->
						<%
							if (session.getAttribute("name") == null) {
							out.println("<li class='nav-item dropdown no-arrow'>");
							out.println("<a href='login.html' class='nav-link dropdown-toggle'>로그인</a>");
							out.println("</li>");
						} else {
							out.println("<li class='nav-item dropdown no-arrow'><a ");
							out.println("class='nav-link dropdown-toggle' href='#' id='userDropdown '");
							out.println("role='button' data-toggle='dropdown' aria-haspopup='true' ");
							out.println("aria-expanded='false'> <sapn");
							out.println("class='mr-2 d-none d-lg-inline text-gray-600 small'> ");
							out.print(session.getAttribute("name"));
							out.println("</span> <img ");
							out.println("class='img-profile rounded-circle' ");
							out.println("src='img/undraw_profile_1.svg'></a> ");
							out.println("<div ");
							out.println("class='dropdown-menu dropdown-menu-right shadow animated--grow-in' ");
							out.println("aria-labelledby='userDropdown'> ");
							out.println("<a class='dropdown-item' href='#'> <i ");
							out.println("class='fas fa-user fa-sm fa-fw mr-2 text-gray-400'></i> 프로필 ");
							out.println("</a> <a class='dropdown-item' href='#'> <i ");
							out.println("class='fas fa-cogs fa-sm fa-fw mr-2 text-gray-400'></i> 설정 ");
							out.println("</a> <a class='dropdown-item' href='#'> <i ");
							out.println("class='fas fa-list fa-sm fa-fw mr-2 text-gray-400'></i> 활동기록 ");
							out.println("</a> ");
							out.println("<div class='dropdown-divider'></div> ");
							out.println("<a class='dropdown-item' href='#' data-toggle='modal' ");
							out.println("data-target='#logoutModal'> <i ");
							out.println("class='fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400'></i> ");
							out.println("로그아웃  ");
							out.println("</a> ");
							out.println("</div></li>");
						}
						%>

					</ul>

				</nav>
				<!-- End of Topbar -->
				<!---->
				<!-- Begin Page Content -->
				<form method="post" action="bbs.jsp" enctype="multipart/form-data">
				<div class="container-fluid">
					<!-- Page Heading -->
					<h1 class="h3 mb-2 text-gray-800">영상 올리기</h1>
					<p class="mb-4">아래 원하는 썸네일과 동영상 파일을 넣으세요.</p>

					<!-- Content Row -->
					<div class="row">
						<div class="col-xl-6 col-lg-6">
							<!-- col-xl-8 col-lg-7 -->
							<!-- Area Chart -->
							<div class="card shadow mb-4">
								<div class="card-header py-3">
									<h6 class="m-0 font-weight-bold text-primary">썸네일 넣기</h6>
								</div>
								<!--
                                <input type="file" accept="image/*,.txt" multiple required capture='user' onchange='aaa'/> -->
								<div class="card-body">
										<input style="padding-top: 40%;" type="file"
											accept="image/*" id = "file" name ="thumnail"/>
										<canvas id="myAreaChart">
                                        </canvas>
								</div>
							</div>
						</div>
						<!-- Donut Chart -->
						<div class="col-xl-6 col-lg-6">
							<div class="card shadow mb-4">
								<!-- Card Header - Dropdown -->
								<div class="card-header py-3">
									<h6 class="m-0 font-weight-bold text-primary">영상 올리기</h6>
								</div>
								<!-- Card Body -->
								<div class="card-body">
										<input style="padding-top: 40%;" type="file"
											accept="video/*" id = "file" name = "video"/>
										<canvas id="myPieChart">
                                        </canvas>
								</div>
							</div>
						</div>

						<div class="col-xl-12 col-lg-8">
								<div class="inputTilte">
									<b class="m-0 font-weight-bold text-primary">제목 : </b> <input
										name="title" class="inputTitle" type='text' /><br>
								</div>
								<div class="inputTilte">
									<b class="m-0 font-weight-bold text-primary">내용 : </b> <input
										name="content" class="size_100 inputContent" type='text' /><br>
								</div>
								<div class="inputTilte">
									<b class="m-0 font-weight-bold text-primary">분야 : </b>
									<select name='category'>
										<option value="음악">음악</option>
										<option value="미술">미술</option>
										<option value="체육">체육</option>
										<option value="자연">자연</option>
									</select>
									<br>
								</div>
								<input type="submit" class="btn btn-facebook btn-block" value="제출하기">
							</form>
						</div>

					</div>
					<!-- /.container-fluid -->
					<!---->
				</div>
				<!-- End of Main Content -->

				<!-- Footer -->
				<footer class="sticky-footer bg-white">
					<div class="container my-auto">
						<div class="copyright text-center my-auto">
							<span>Copyright &copy; Your Website 2020</span>
						</div>
					</div>
				</footer>
				<!-- End of Footer -->

			</div>
			<!-- End of Content Wrapper -->

		</div>
		<!-- End of Page Wrapper -->

		<!-- Scroll to Top Button-->
		<a class="scroll-to-top rounded" href="#page-top"> <i
			class="fas fa-angle-up"></i>
		</a>

		<!-- Logout Modal-->
		<div class="modal fade" id="logoutModal" tabindex="-1" role="dialog"
			aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalLabel">로그아웃 하시겠습니까?</h5>
						<button class="close" type="button" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">×</span>
						</button>
					</div>
					<div class="modal-body">로그아웃을 원한다면 "로그아웃" 버튼을 클릭해 주세요.</div>
					<div class="modal-footer">
						<button class="btn btn-secondary" type="button"
							data-dismiss="modal">취소</button>
						<a class="btn btn-primary" href="login.html">로그아웃</a>
					</div>
				</div>
			</div>
		</div>

		<!-- Bootstrap core JavaScript-->
		<script src="vendor/jquery/jquery.min.js"></script>
		<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

		<!-- Core plugin JavaScript-->
		<script src="vendor/jquery-easing/jquery.easing.min.js"></script>

		<!-- Custom scripts for all pages-->
		<script src="js/sb-admin-2.min.js"></script>
</body>

</html>