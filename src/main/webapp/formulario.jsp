<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="webjars/bootstrap/5.1.3/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<form action="crudalex" method="post">
		<c:choose>
			<c:when test="${ user == null }">
				<label>Nome:</label><input type="text" name="nome" required/>
				<label>Email:</label><input type="text" nome="email"/>
				<label>País:</label><input type="text" nome="pais"/>
			
				<button type="submit" name="app" value="insert">Salvar</button>
			</c:when>
			<c:otherwise>
				<input type="hidden" name="id" value="${user.id}"/>
				<label>Nome:</label><input type="text" nome="name" value="${user.nome}" required/>
				<label>Email:</label><input type="text" nome="email" value="${user.email}"/>
				<label>País:</label><input type="text" nome="pais" value="${user.pais}"/>
			
				<button type="submit" nome="app" value="update">Atualizar</button>
			</c:otherwise>
		</c:choose>
	</form>
</body>
</html>
</body>
</html>