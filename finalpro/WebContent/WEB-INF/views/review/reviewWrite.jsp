<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html dir="ltr" lang="ko">
<%@include file="../header.jsp"%>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<title>Login</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
<link rel="icon" type="image/png"
	href="resources/images/icons/favicon.ico" />
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="resources/vendor/bootstrap/css/bootstrap.min.css" />
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="resources/fonts/font-awesome-4.7.0/css/font-awesome.min.css" />
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="resources/fonts/Linearicons-Free-v1.0.0/icon-font.min.css" />
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="resources/vendor/animate/animate.css" />
<!--===============================================================================================-->
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="resources/vendor/animsition/css/animsition.min.css" />
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="resources/vendor/select2/select2.min.css" />
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="resources/vendor/daterangepicker/daterangepicker.css" />
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="resources/css/util.css" />
<link rel="stylesheet" type="text/css" href="resources/css/main.css" />
<script type="text/javascript"
	src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.2.js"
	charset="utf-8"></script>
<script type="text/javascript"
	src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
<style type="text/css">
html, div, body, h3 {
	margin: 0;
	padding: 0;
}

h3 {
	display: inline-block;
	padding: 0.6em;
}
</style>
<body class="stretched">
	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<form action="reviewWrite" method="post"
					enctype="multipart/form-data"
					style="margin-top: 5%; margin-bottom: 2%;">
					<input type="hidden" name="id" value="${sessionScope['id']}">
					<div class="row">
						<div class="col-md-7" style="">
							<div
								style="display: block; position: absolute; left: 5%; width: inherit; height: 10%;">
								<label for="template-contactform-name"
									style="width: max-content; display: contents;"><b
									class="text-warning" style="">제목 : </b></label><input type="text"
									class="well well-sm" name="title" id="" size="35"
									placeholder="제목을 적어주세요" value="" required="required">
							</div>
							<div
								style="display: block; position: absolute; left: 5%; width: inherit; height: 90%; top: 20%;">
								<label for="template-contactform-name"
									style="width: max-content; display: contents;"><b
									class="text-warning" style="">내용 : </b></label>
								<textarea name="detail" placeholder="내용을 작성해주세요"
									style="width: 85%; height: inherit; position: absolute; left: 10%;"
									class="well well-sm"></textarea>
							</div>
							<input type="hidden" id="hotelname" name="honame"
								value="${honame }" class="" />
						</div>
						<div class="col-md-5" style="text-align: center;">
							<a>
								<table border="1"
									style="display: inline-block; margin-bottom: 0px;">
									<tr>
										<td id="picture" style="width: 230px; height: 230px;"><img
											id="sajin"
											src="https://www.bloter.net/wp-content/uploads/2016/08/%EC%8A%A4%EB%A7%88%ED%8A%B8%ED%8F%B0-%EC%82%AC%EC%A7%84.jpg"
											"
											style="width: inherit; height: inherit;"></td>
									</tr>
								</table> <label for="mfile" class="btn button nomargin"
								id="template-contactform-submit" style="height: fit-content;">사진
									불러오기</label> <input type="file" name="mfile" id="mfile"
								style="display: none;"> <input type="hidden" name="img"
								id="img">
							</a>
						</div>
					</div>
					<div style="text-align: center; padding-top: 5%;">
						<button class="btn button button-small" type="submit">리뷰작성</button>
					</div>
				</form>
			</div>
		</div>
	</div>

	<script type="text/javascript">
		function readURL(input) {
			if (input.files && input.files[0]) {
				var reader = new FileReader();
				reader.onload = function(e) {
					$('#sajin').attr('src', e.target.result);
				}
				reader.readAsDataURL(input.files[0]);
			}
		}

		$("#mfile").change(function() {
			readURL(this);
			$("#img").attr('value', this.value);
		});
	</script>
	<!-- Footer

		<!-- Go To Top
    ============================================= -->
	<div id="gotoTop" class="icon-angle-up"></div>

	<!-- Footer Scripts
    ============================================= -->
	<script type="text/javascript" src="resources/js/functions.js"></script>
</body>
</html>
<%@include file="../footer.jsp"%>