<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<jsp:include page="../main/main.jsp" />
<style>
	.panel {
  padding: 0 28px;
  background-color: white;
  max-height: 0;
  overflow: hidden;
  transition: max-height 0.2s ease-out;line-height:40px;
}
.accordion2 {
  background-color: #fff;
  color: #444;
  cursor: pointer;
  padding: 15px;
  width: 100%;
  text-align: left;
  outline: none;
  font-size: 15px;
  transition: 0.4s;
  border: 0;
  outline:0;
}
.accordion2:active{
  border: 0;
  outline:0;
  }
 .accordion2:visited {
  border: 0;
  outline:0;
}
</style>
<div id="wrapper">

	<!-- Begin Page Content -->
	<div class="container-fluid">

		<!-- Page Heading -->
		<h1 class="h3 mb-2 text-gray-800">Frequently Question</h1>
		<p class="mb-4">
			자주 묻는 질문
		</p>

		<!-- DataTales Example -->
		<div class="card shadow mb-4">
			<div class="card-header py-3">
				<h6 class="m-0 font-weight-bold text-primary">원하는 질문 선택</h6>
			</div>
			<div class="card-body">
				<div class="table-responsive">
					<table class="table table-bordered" id="dataTable" width="100%"
						cellspacing="0">
						<thead>
							<tr>
								<th>
								<div class="nav-item">
                					<button class="accordion2">
				                		<span>Q1. 비밀번호를 잊어버렸어요.</span>
            						</button>
            						<div class="panel">
                    						<p>A1. 새로가입 ㄱㄱ</p>
            						</div>
        						</div>
        						</th>
        					</tr>
        					<tr>
        						<th>
								<div class="nav-item">
                					<button class="accordion2">
				                		<span>Q2. 판매자에게 사기를 당했어요.</span>
            						</button>
            						<div class="panel">
                    						<p>A2. 신고 ㄱㄱ</p>
            						</div>
        						</div>
        						</th>
        					</tr>
        					<tr>
        						<th>
								<div class="nav-item">
                					<button class="accordion2">
				                		<span>Q3. 회원탈퇴를 하고싶어요.</span>
            						</button>
            						<div class="panel">
                    						<p>A3. 안해줌^^</p>
            						</div>
        						</div>
        						</th>
							</tr>
						</thead>
						<tbody id="show">
						</tbody>
					</table>
				</div>
			</div>
		</div>

	</div>
<script>
var acc = document.getElementsByClassName("accordion2");
var i;

for (i = 0; i < acc.length; i++) {
  acc[i].addEventListener("click", function() {
    this.classList.toggle("active");
    var panel = this.nextElementSibling;
    if (panel.style.maxHeight) {
      panel.style.maxHeight = null;
    } else {
      panel.style.maxHeight = panel.scrollHeight + "px";
    } 
  });
}
</script>
	<!-- /.container-fluid -->
</div>
</div>

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
    <a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
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

</body>

</html>