<%@ page language="java" contentType="text/html; charset=UTF-8"

isELIgnored="false"
%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<%
request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>
	
	<head>
		<script type="text/javascript">
			function CheckAddMember(){
				var regExpId = /^[a-zA-Z0-9]+$/;
				var regExpName=/^[가-힣]+$/;
				var regExpPasswd=/^[0-9]+$/;
				var regExpEmail = /[-A-Za-z0-9!#$%&'*+\/=?^_`{|}~]+(?:\.[-A-Za-z0-9!#$%&'*+\/=?^_`{|}~]+)*@(?:[A-Za-z0-9](?:[-A-Za-z0-9]*[A-Za-z0-9])?\.)+[A-Za-z0-9](?:[-A-Za-z0-9]*[A-Za-z0-9])?/i;
				
				var form = document.member;
				var id = form.id.value;
				var name = form.name.value;
				var pwd = form.pwd.value;
				var email = form.email.value;
				
				if(!regExpId.test(id)){
						alert("아이디는 문자로 시작해주세요!");
						form.id.select();
						return false;
					}
					if(!regExpPasswd.test(pwd)){
						alert("비밀번호는 숫자만 입력해주세요!");
						form.pwd.select();
						return false;
					}
					if(!regExpName.test(name)){
						alert("이름은 한글만 입력해주세요!");
						form.name.select();
						return false;
					}
					if(!regExpEmail.test(email)){
						alert("이메일을 입력을 확인해주세요!");
						form.email.select();
						return false;
					}
					return true;
				form.submit();
			}
		</script>
		<meta charset="UTF-8">
		<title>회원 가입창</title>
		<style>
			.text_center{
				text-align:center
			}
		</style>
	</head>
	<body>
		<form method="post" action="${contextPath}/member/addMember.do" name="member" onSubmit="return CheckAddMember()">
		<h1 class="text_center">회원 가입창</h1>
		<table align="center">
			<tr>
				<td widtg="200"><p align="right">아이디</p></td>
				<td widtg="400"><input type="text" name="id"></td>
			</tr>
			<tr>
				<td widtg="200"><p align="right">비밀번호</p></td>
				<td widtg="400"><input type="password" name="pwd"></td>
			</tr>
			<tr>
				<td widtg="200"><p align="right">이름</p></td>
				<td widtg="400"><input type="text" name="name"></td>
			</tr>
			<tr>
				<td widtg="200"><p align="right">이메일</p></td>
				<td widtg="400"><input type="text" name="email"></td>
			</tr>		
			<tr>
				<td widtg="200"><p>&nbsp;</p></td>
				<td widtg="400"><input type="submit" value="가입하기">
				<input type="reset" value="다시입력"></td>
			</tr>
		</table>
		</form>	
	</body>
</html>