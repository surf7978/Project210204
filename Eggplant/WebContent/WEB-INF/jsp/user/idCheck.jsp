  
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>idCheck</title>

<script>
	function formClose(){
		window.close();
	}
</script>
</head>
<body>

	<div align="center">
		<h3>${msg}</h3>
		<input type="button" onclick="formClose()" value="확인">
	</div>

</body>
</html>