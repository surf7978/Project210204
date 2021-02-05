<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<style>
	h3{
		color:white;
	}
</style>
<jsp:include page="main.jsp" />

<!-- Page content -->
<div class="w3-content" style="max-width:2000px;margin-top:46px">

	<div align="center">
		<h3>로그인 성공</h3>
		<h3>${mId }님은 ${mAuth } 권한을 갖습니다.</h3>
	</div>
	
</div>
</body>
</html>