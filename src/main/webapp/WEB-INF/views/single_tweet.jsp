<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />

<%@ include file = "jspf/head_config.jspf" %>

<title>Warsztat6 home</title>
</head>
<body>
<%@ include file = "jspf/header.jspf" %>
<%@ include file = "jspf/main_menu.jspf" %>
<%@ include file = "jspf/add_comment.jspf" %>
${msg}
<h3>Tweet details:</h3>
Id: ${tweet.id}<br />
Author: ${tweet.user.userName}<br />
Text: ${tweet.text}<br />
Created: ${tweet.created}

<c:forEach items="${comments}" var="comment">
<p>${comment.text}</p>
<p>${comment.created}</p>
<p>${comment.user.userName}</p>
</c:forEach>
<%@ include file = "jspf/footer.jspf" %>
</body>
</html>