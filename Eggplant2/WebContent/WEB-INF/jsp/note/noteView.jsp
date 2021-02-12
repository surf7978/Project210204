<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<jsp:include page="../main/main.jsp" />
<%-- ${list } --%>
<div id="wrapper">

	<!-- Begin Page Content -->
	<div class="container-fluid">

		<!-- Page Heading -->
		<h1 class="h3 mb-2 text-gray-800">NoteView</h1>
		<p class="mb-4">
			쪽지 한건 보기
		</p>

		<!-- DataTales Example -->
		<div class="card shadow mb-4">
			<div class="card-header py-3">
				<h6 class="m-0 font-weight-bold text-primary">받은 쪽지 내역</h6>
			</div>
			<div class="card-body">
				<div class="table-responsive">
					<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
					
					<tr>
								<th align="center">수신:${vo.tId }으로부터 온 쪽지
								
					</tr>
					<tr>
								<th>날짜:${vo.nDate } </th>
					 </tr>
					<tr>
								<th rowspan="7">
								
								제목: ${vo.nTitle }	<br/>
									<br/><br/>
								${vo.nContent }
								
								</th>
					</tr>
					
					
					
					
					<!-- 내용넣는곳 -->
					
					</table>
				</div><br/>
				<div>
					<button type="button" onclick="location.href='sendNoteForm.do?nTitle=${vo.nTitle}'">답장하기</button>
					<button type="button" onclick="location.href='noteList.do'">쪽지함으로가기</button>
				</div>
			</div>
		</div>

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