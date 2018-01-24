 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="plantilla/header.jsp" %>

<%@page import="cl.model.Persona"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<div class="row">
    
    <div class="col s6 offset-s3 z-depth-3">
        <!--codigo JSTL    -->
        <c:if test="${empty sessionScope.person}">
            Acceso Denegado<br>
            <a href="login.jsp">Iniciar Sesion</a>
            
        </c:if>
            <c:if test="${not empty sessionScope.person}" >
                <h3>Bienvenido ${sessionScope.person.nombre}</h3>
                Tienes ${sessionScope.person.edad} años.
                <br>
                <a href="cerrar.jsp">Salir</a>
            </c:if>
        
        
        
        
        <%
         /*  Persona person = (Persona) 
            request.getSession().getAttribute("person");
           if(person == null){
              out.println("error");
              out.println("<a href='demo4.jsp'>iniciar Sesion</a>");
           }else{
            out.println("<h3>Bienvenido "+person.getNombre()+"</h3>");
             out.println("tienes "+person.getEdad()+" años<br>");
             out.println("<a href='cerrar.jsp'>salir</a>");
           }
         */
        %>
        
        </div>
        
    </div>

        
        
    <%@include file="plantilla/footer.jsp" %>
