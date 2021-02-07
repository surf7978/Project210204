<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="../main/main.jsp" />
<div class="container">
	<form id="frm" name="frm" method="post">
		<div class="card o-hidden border-0 shadow-lg my-5">
			<div class="card-body p-0">
				<!-- Nested Row within Card Body -->
				<div class="row">
					<!-- <div class="col-lg-5 d-none d-lg-block bg-register-image"></div> -->
					<div class="col-lg-12">
						<div class="p-5">
							<div class="text-center">
								<h1 class="h4 text-gray-900 mb-4">회원가입</h1>
							</div>
							<form class="user">
								<div class="form-group row">
									<div class="col-sm-6 mb-3 mb-sm-0">
										<input type="text" class="form-control form-control-user"
											id="mId" name="mId" placeholder="아이디 입력">
									</div>
									<div>
										<a onclick=" idCheck()"
											class="btn btn-facebook btn-user btn-block"> 중복체크 </a>
									</div>
								</div>
								<div class="form-group row">
									<div class="col-sm-6">
										<input type="password" class="form-control form-control-user"
											id="mPassword" name="mPassword" placeholder="패스워드 입력">
									</div>
									<div class="col-sm-6">
										<input type="password" class="form-control form-control-user"
											id="mPassword2" name="mPassword2" placeholder="패스워드 확인">
									</div>
								</div>
								<hr>
								<div class="form-group row">
									<div class="col-sm-6 mb-3 mb-sm-0">
										<input type="text" class="form-control form-control-user"
											id="mName" name="mName" placeholder="이름 입력">
									</div>
									<div class="col-sm-6">
										<input type="text" class="form-control form-control-user"
											id="mBirth" name="mBirth" placeholder="생년월일 입력">
									</div>
								</div>
								<div class="form-group row">
									<div class="col-sm-12 mb-3 mb-sm-0">
										<input type="text" class="form-control form-control-user"
											id="mNumber" name="nNumber" placeholder="전화번호 입력">
									</div>
								</div>
								<div class="form-group row">
									<div class="col-sm-12 mb-3 mb-sm-0">
										<input type="text" class="form-control form-control-user"
											id="mAccount" name="mAccount" placeholder="계좌 입력">
									</div>
								</div>
								<hr>
								<a onclick="sign()" class="btn btn-primary btn-user btn-block">
									가입하기 </a>
								<hr>
								<a href="loginForm.do" class="btn btn-google btn-user btn-block">
									로그인 </a>

							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</form>
</div>

</div>
<!-- End of Main Content -->

<!-- Footer -->
<footer class="sticky-footer bg-white">
	<div class="container my-auto">
		<div class="copyright text-center my-auto">
			<span>Copyright &copy; Your Website 2021</span>
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



<!-- Bootstrap core JavaScript-->
<script src="vendor/jquery/jquery.min.js"></script>
<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

<!-- Core plugin JavaScript-->
<script src="vendor/jquery-easing/jquery.easing.min.js"></script>

<!-- Custom scripts for all pages-->
<script src="js/sb-admin-2.min.js"></script>

<!-- Page level plugins -->
<script src="vendor/chart.js/Chart.min.js"></script>

<!-- Page level custom scripts -->
<script src="js/demo/chart-area-demo.js"></script>
<script src="js/demo/chart-pie-demo.js"></script>
<script>
	function idCheck() {
		var url = "idCheck.do?mId=" + frm.mId.value;
		if (!frm.mId.value) {
			alert("아이디를 입력하세요.");
			frm.mId.focus();
		} else {
			window.open(url, "아이디중복체크", "width=400, height=350");
			console.log(url);
		}
	}
	function sign() {
		var yn = confirm("가입하시겠습니까?");
		if (yn) {
			frm.submit();
			frm.action = "signUp.do";
		}
	}
</script>
</body>

</html>