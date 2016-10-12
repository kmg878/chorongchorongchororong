<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page contentType="text/html;charset=UTF-8"%>
<!doctype html>
<html>
<head>
<title>문의 게시판</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8">

<!-- 공통 -->
<script type="text/javascript" src="/readingbetter/assets/js/jquery/jquery-3.1.0.js"></script>
<script type="text/javascript" src="/readingbetter/assets/dist/js/bootstrap.js"></script>
<link href="/readingbetter/assets/dist/css/bootstrap.min.css" rel="stylesheet" type="text/css">
<!-- /공통 -->

<link href="/readingbetter/assets/css/board.css" rel="stylesheet" type="text/css">
</head>
<body>
<input type="hidden" class="category" value="question">
	<div class="container-fluid">
		<c:import url='/WEB-INF/views/include/header.jsp' />
		<div class="row asideWrap">
			<div id="navigation" class="col-lg-2">
				<c:import url='/WEB-INF/views/include/navi_service.jsp' />
			</div>
			<div id="content" class="col-lg-10">
				<div id="questionwrite">
					<div class="small-menu">
						<a href="/readingbetter/main">홈</a> > 
						<a href="/readingbetter/service/noticelist">고객센터</a> > 
						<a href="/readingbetter/service/questionlist">문의 게시판 </a> > 글보기
					</div>
					<p class="menu-title">문의 게시판</p>
					<form action="/readingbetter/service/questionwrite/write" method="post">
						<div id="board">
							<table id="board" class="table table-bordered">
								<tr>
									<th id="celltitle" class="active">제목</th>
									<td><input type="text" class="form-control" name="title"
										placeholder="필수 입력"></td>
								</tr>
								<tr>
									<th class="active" colspan=2>내용</th>
								</tr>
								<tr>
									<td id="content" colspan=2><textarea id="sub"
											class="form-control" name="content" placeholder="내용을 입력하세요."></textarea>
									</td>
								</tr>
							</table>
						</div>

						<div id="buttonalign">
							<button type="submit" class="btn btn-default">제출</button>
						</div>
					</form>
				</div>
			</div>
		</div>
		<c:import url='/WEB-INF/views/include/footer.jsp' />
	</div>
</body>
</html>