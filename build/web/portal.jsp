<%-- 
    Document   : portal
    Created on : Mar 22, 2018, 4:29:58 PM
    Author     : sa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    if (session == null || ( session.getAttribute("user"))==null) {
        RequestDispatcher rd = request.getRequestDispatcher("erro.jsp");
        request.setAttribute("msg", "Usuário não logado");
        request.setAttribute("page", "index.html");
        rd.forward(request, response);
        return;
    }  %>

<jsp:useBean id="user" class="com.ufpr.tads.web2.beans.LoginBean" scope="session" />

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Portal</title>
    </head>
    <body>
        <h1>Portal</h1>
        Nome: <jsp:getProperty name="user" property="nome" /><br/> 
        <a href="LogoutServlet">Clique para sair</a>
        <footer>
            <p>
                Em caso de problemas contactar o administrador: 
                <jsp:useBean id="configuracao" class="com.ufpr.tads.web2.beans.ConfigBean" scope="application"/>
                <jsp:getProperty name="configuracao" property="email" />            
            </p>
        </footer>
    </body>
</html>
