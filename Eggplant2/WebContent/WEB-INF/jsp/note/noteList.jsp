<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<jsp:include page="../main/main.jsp" />
<%-- ${list } --%>
<div id="wrapper">

	<!-- Begin Page Content -->
	<div class="container-fluid">

		<!-- Page Heading -->
		<h1 class="h3 mb-2 text-gray-800">NoteList</h1>
		<p class="mb-4">
			쪽지 내역
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
								
								<th>날짜</th>
								<th>제목</th>
								<th>보낸 사람</th>
							</tr>
							<c:choose>
								<c:when test="${empty list }"> 
									<tr> 
										<td colspan="9"> 받은 메세지가 없습니다. </td>
									</tr> 
								</c:when>
							<c:when test="${not empty list }">
								<c:forEach var="vo" items="${list }">
									<tr id="${vo.nTitle }" onclick="location.href='noteView.do?nTitle=${vo.nTitle}'">
										
										<td align="center">${vo.nDate } </td>
										<td align="center">${vo.nTitle }</td>
										<td align="center">${vo.tId} </td>
									</tr>
								</c:forEach>
							</c:when>
							</c:choose>
					</table>
				</div><br/>
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