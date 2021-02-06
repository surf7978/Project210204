<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="../main/main.jsp" />
	 <div class="container">

        <div class="card o-hidden border-0 shadow-lg my-5">
            <div class="card-body p-0">
                <!-- Nested Row within Card Body -->
                <div class="row">
                    <!-- <div class="col-lg-5 d-none d-lg-block bg-register-image"></div> -->
                    <div class="col-lg-12">
                        <div class="p-5">
                            <div class="text-center">
                                <h1 class="h4 text-gray-900 mb-4">프로필</h1>
                            </div>
                            <form class="user">
                                <div class="form-group row">
                                    <div class="col-sm-3 mb-3 mb-sm-0">
                                        <input type="text" class="form-control form-control-user" name="exampleFirstName"
                                            style="text-align:center; font-size:15px; color: #9400d3; background-color:white;" value="아  이  디" readonly>
                                    </div>
                                    <div class="col-sm-6 mb-3 mb-sm-0">
                                        <input type="text" class="form-control form-control-user" name="exampleFirstName"
                                            placeholder="아이디 입력">
                                    </div>
                                </div>
                                <hr>
                                <div class="form-group row">
                                	<div class="col-sm-3 mb-3 mb-sm-0">
                                        <input type="text" class="form-control form-control-user" name="exampleFirstName"
                                            style="text-align:center; font-size:15px; color: #9400d3; background-color:white;" value="이   름" readonly>
                                    </div>
                                    <div class="col-sm-6 mb-3 mb-sm-0">
                                        <input type="text" class="form-control form-control-user"
                                            id="exampleInputPassword" placeholder="이름 입력">
                                    </div>
                                </div>
                                <div class="form-group row">
                                	<div class="col-sm-3 mb-3 mb-sm-0">
                                        <input type="text" class="form-control form-control-user" name="exampleFirstName"
                                            style="text-align:center; font-size:15px; color: #9400d3; background-color:white;" value="생 년 월 일" readonly>
                                    </div>
                                    <div class="col-sm-6">
                                        <input type="text" class="form-control form-control-user"
                                            id="exampleRepeatPassword" placeholder="생년월일 입력">
                                    </div>
                                </div>
                                <div class="form-group row">
                                	<div class="col-sm-3 mb-3 mb-sm-0">
                                        <input type="text" class="form-control form-control-user" name="exampleFirstName"
                                            style="text-align:center; font-size:15px; color: #9400d3; background-color:white;" value="주   소" readonly>
                                    </div>
                                    <div class="col-sm-9 mb-3 mb-sm-0">
                                        <input type="text" class="form-control form-control-user"
                                            id="exampleInputPassword" placeholder="주소 입력">
                                    </div>
                                </div>
                                <hr>
                                <a href="login.html" class="btn btn-primary btn-user btn-block">
                                    수정하기
                                </a>
                                
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>

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