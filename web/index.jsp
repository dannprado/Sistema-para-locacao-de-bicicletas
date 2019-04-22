<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<html>
    <body>
        <h2>Bemvindo
            <%=request.getUserPrincipal().getName().toString()%>
        </h2>

        <sec:authorize access="hasRole('ADMIN')">

            Este conte�do s� ser� vis�vel para usu�rios que desempenhem 
            o papel "ADMIN" <br/><br/>

            <a href="admin/verCliente">Ver Cliente</a>
            <br>
            <a href="verLocadoras">Ver Locadoras</a>
        </sec:authorize>

        <sec:authorize access="hasRole('USER')">
            
           Este conte�do s� ser� vis�vel para usu�rios que desempenhem 
            o papel "USER" <br/><br/>

            <a href="user/user.jsp">�rea de Usu�rio</a>
        </sec:authorize>
            <br>
            <a href="logout">Logout</a>
    </body>
</html>