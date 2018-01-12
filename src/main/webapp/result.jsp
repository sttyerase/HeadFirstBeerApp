<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.util.*" %>
<html>
  <body>
    <h1 align="center">Beer Recommendations JSP</h1>
    <p>
<%
String tipOfTheDay = "Keep on truckin&quot;";
List<String> styles = (List<String>)request.getAttribute("styles");
Iterator<String> it = styles.iterator();
while(it.hasNext()) {
out.print("<br>try: " + it.next());
}
%>
    </p>
    <form action="/" method="post"><input type="submit" value="return to home"></form>
    <div>
      Tip of the day:<c:out value="Keep on truckin' "/>
    </div>
  </body>
</html>
