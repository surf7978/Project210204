<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="../main/main.jsp" />
 <script type="text/javascript">
	$(function(){
		$.ajax({		
			type:'post',
			url:'<%=request.getContextPath()%>/NoticeContentServlet',
			dataType : "json",
			success : function(result) {
				console.log(result);
				console.log('ajax GET 통신 성공');
				for (let i = 0; i < result.length; i++) {
	                let tr = document.createElement('tr');
	                console.log(result[i]);
	                let tbody = document.getElementById("show").append(tr);
	                console.log(result[i]);
	                for(field in result[i]){	
	                	if(field != "nContent"){
				console.log("콘솔확인:"+result[i].memberId);
				console.log("콘솔확인:"+memberId5.value);
				if(result[i].memberId == memberId5.value){
	                		let td = document.createElement('td');
	                		td.setAttribute("name", field);
	                		td.setAttribute("id", field);
		                	td.innerHTML = result[i][field];
	                        tr.appendChild(td);		                        
	                	}	                	                	
	                }
                }
				                                  }
			}
		})
	});
	$(function(){
		$("#show").on('click', $('tr'), function(e){
			let td = e.target.parentNode.childNodes[4].innerHTML;
			console.log(e)
		 	location.href = "noticeView.do?nDate=" + td;
		})		
	})
</script>
<style>
	td, th{
		text-align:center;
	}
</style>
<div id="wrapper">

	<!-- Begin Page Content -->
	<div class="container-fluid">

		<!-- Page Heading -->
		<h1 class="h3 mb-2 text-gray-800">Note</h1>
		<p class="mb-4">
			쪽지
		</p>
		<input type="hidden" id="memberId5" name="memberId5" value="${memberId }">
		<!-- DataTales Example -->
		<div class="card shadow mb-4">
			<div class="card-header py-3">
				<h6 class="m-0 font-weight-bold text-primary">DataTables
					Example</h6>
			</div>
			<div class="card-body">
				<div class="table-responsive">
					<table class="table table-bordered" id="dataTable" width="100%"
						cellspacing="0">
						<thead>
							<tr>
								<th width="70">NO</th>
								<th>제목</th>
								<th width="200">보낸사람</th>
								<th width="200">받는사람</th>
								<th width="400">작성날짜</th>
							</tr>
						</thead>
						<tbody id="show">
						</tbody>
					</table>
					<c:if test="${memberAuth eq 'ADMIN' }">
					<div align="center" id="mybtn">
						<button class="btn btn-primary btn-user btn-block" type="button" onclick="location.href='noticeInsertForm.do'">글작성</button>
					</div>
					</c:if>
				</div>
			</div>
		</div>

	</div>
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