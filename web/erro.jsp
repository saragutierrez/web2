<%-- 
    Document   : erro
    Created on : Mar 22, 2018, 4:25:17 PM
    Author     : sa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String msg = (String)request.getAttribute("msg"); 
    String pagina = (String)request.getAttribute("page");
    %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Erro</title>
    </head>
    <body>
        <p>
            <% 
            if( msg!= null && page != null){
                out.println("<h1>  "+msg+" </h1>");           
                out.println("<a href=\""+pagina+"\">Ir para index</a>");
            }else{
                out.println("Erro");
                out.println("<a href=\"index.html\">Ir para index</a>");
            }
            %>
        </p>
        <footer>
            <p>
                Em caso de problemas contactar o administrador: 
                <jsp:useBean id="configuracao" class="com.ufpr.tads.web2.beans.ConfigBean" scope="application"/>
                <jsp:getProperty name="configuracao" property="email" />            
            </p>
        </footer>
    </body>
</html>
