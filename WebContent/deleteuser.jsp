<%@page import="user.UserDAO"%>
<jsp:useBean id="u" class="user.User"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>

<%
UserDAO.delete(u);

response.sendRedirect("viewusers.jsp");
%>