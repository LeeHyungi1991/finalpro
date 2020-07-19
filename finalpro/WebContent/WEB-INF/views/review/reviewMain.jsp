<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html dir="ltr" lang="ko">
<%@include file="../header.jsp"%>


<body class="stretched">

	<!-- Document Wrapper
    ============================================= -->
	<div id="wrapper" class="clearfix">



		<!-- Page Title
        ============================================= -->
		<section id="page-title" class="page-title-parallax page-title-dark"
			style="background-image: url('resources/images/logo.png'); padding: 120px 0;"
			data-stellar-background-ratio="0.3">

			<div class="container clearfix">
				<h1>리뷰게시판</h1>
				<span>Starter들의 여행 후기게시판입니다.</span>
				<ol class="breadcrumb">
					<li><a href="main">Home</a></li>
					<li class="active">후기게시판</li>
				</ol>
			</div>

		</section>
		<!-- #page-title end -->

		<!-- Content
        ============================================= -->
		<section id="content">

			<div class="content-wrap bgcolor-grey-light">

				<div class="container clearfix">

					<div class="postcontent nobottommargin">

						<div id="posts" class="events small-thumbs">

							<c:forEach var="e" items="${list}">
								<form action="goReviewDetail" method="post">
									<input type="hidden" value="${e.img }" name="img"> <input
										type="hidden" value="${e.title }" name="title"> <input
										type="hidden" value="${e.detail }" name="detail"> <input
										type="hidden" value="${e.hit }" name="hit"> <input
										type="hidden" value="${e.rdate }" name="rdate"> <input
										type="hidden" value="${e.num }" name="num"> <input
										type="hidden" value="${e.id }" name="id"> <input
										type="hidden" value="${e.honame }" name="honame"> <input
										type="hidden" value="${e.num}" name="num">
									<div class="entry clearfix">
										<div class="entry-image">
											<a href="#"> <img src="resources/images/${e.img}" alt="">
											</a>
										</div>
										<div class="entry-c">

											<div class="entry-title">
												<h2>
													<a href="deleteReview?num=${e.num }">${e.title}</a>
												</h2>
											</div>
											<ul class="entry-meta clearfix">
												<li><a href="#"><i class="icon-time"></i>${e.rdate}</a>/
													<b>조회수 : ${e.hit }</b></li>
												<li>호텔명 : ${e.honame }</li>
											</ul>
											<div class="entry-content">
												<p>${e.detail}</p>
												<button type="submit" class="btn button button-small">더
													읽어보기</button>
												<c:if test="${e.id eq sessionScope['id']}">
													<a href="deleteReview?num=${e.num }"
														class="btn button button-small">삭제</a>
												</c:if>
											</div>
										</div>
									</div>
								</form>
							</c:forEach>
						</div>

						<!-- Pagination
                        ============================================= -->
						<ul class="pager nomargin">

							<li class="previous"><c:if test="${paging.startPage != 1 }">
									<a
										href="goReviewMain?nowPage=${paging.nowPage-1}&cntPerPage=${paging.cntPerPage}">&larr;
										Older</a>
								</c:if> <c:if test="${paging.startPage==1}">
									<a href="#">&larr; Older</a>
								</c:if></li>
							<c:forEach begin="${paging.startPage }" end="${paging.endPage }"
								var="p">
								<c:choose>
									<c:when test="${p == paging.nowPage }">
										<b>${p }</b>
										<!-- 현재 페이지 일 경우 링크 해제 -->
									</c:when>
									<c:when test="${p != paging.nowPage }">
										<!-- 다른 페이지 링크 -->
										<a
											href="goReviewMain?nowPage=${p }&cntPerPage=${paging.cntPerPage}">${p }</a>
									</c:when>
								</c:choose>
							</c:forEach>

							<li class="next"><c:if
									test="${paging.endPage != paging.lastPage}">
									<a
										href="goReviewMain?nowPage=${paging.nowPage+1 }&cntPerPage=${paging.cntPerPage}">Newer
										&rarr;</a>
								</c:if> <c:if test="${paging.endPage == paging.lastPage}">
									<a href="#">Newer &rarr;</a>
								</c:if></li>

						</ul>
						<!-- .pager end -->
						<ul style="text-align: center; list-style: none;">
							<li><form action="goReviewMain" method="post">
									<%-- <input type="hidden" name="page" value="${param.page }"> --%>
									<select name="searchType">
										<option value="1">아이디</option>
										<option value="2">제목</option>
										<option value="3">내용</option>
									</select>&nbsp;<input type="text" name="searchValue"> <input
										type="submit" value="Search">
								</form></li>
						</ul>
					</div>

					<div class="sidebar nobottommargin col_last clearfix">
						<div class="sidebar-widgets-wrap">

							<div class="widget clearfix">

								<h4>조회수 TOP5 리뷰</h4>
								<div id="post-list-footer">
									<c:forEach varStatus="i" var="e" items="${review5List}">
										<div class="spost clearfix">
											<div class="entry-image">
												<a href="deleteReview?num=${e.num }" class="nobg"><img
													src="resources/images/${e.img}" alt=""></a>
											</div>
											<div class="entry-c">
												<div class="entry-title">
													<h4>
														<a href="deleteReview?num=${e.num }">${e.title}</a>
													</h4>
													<p class="nobottommargin"></p>
												</div>
												<ul class="entry-meta">
													<li>조회수 : ${e.hit}</li>
												</ul>
											</div>
										</div>
									</c:forEach>
								</div>

							</div>
						</div>
					</div>

				</div>

			</div>

		</section>
		<!-- #content end -->



	</div>
	<!-- #wrapper end -->

	<!-- Go To Top
    ============================================= -->
	<div id="gotoTop" class="icon-angle-up"></div>

	<!-- Footer Scripts
    ============================================= -->
	<script type="text/javascript" src="resources/js/functions.js"></script>

</body>
</html>
<%@include file="../footer.jsp"%>