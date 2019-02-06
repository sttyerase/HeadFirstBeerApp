<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.util.*" %>
<html>
<head>
  <link rel="stylesheet" type="text/css" href="Site.css">
</head>
  <body>
    <h1 align="center">Search Result: Beer Brand Recommendations (JSP)</h1>
    <div id="theResult">
<%
String cPath = config.getServletContext().getContextPath();
String tipOfTheDay = "Keep on truckin&quot;";
List<String> styles = (List<String>)request.getAttribute("styles");
Iterator<String> it = styles.iterator();
while(it.hasNext()) {
out.print("<br>try: " + it.next());
}
%>
    </div>
    <div id="theForm">
      <form action="<%= cPath %>" method="post"><input class="button" type="submit" value="return to home"></form>
    </div>
    <div id="theTip">
      <p>Tip of the day:<c:out value="Keep on truckin' "/></p>
    </div>
  </body>
</html>
