<%@include file="plantilla/header.jsp" %>


<c:if test="${not empty sessionScope.admin}">
    <%@include file="plantilla/menu.jsp" %>
    <div class="row">
        <div class="col s6 offset-s3 z-depth-3">
            <h4 class="center-align">Gestion de Personas</h4>
            <form action="control.do" method="post">
            <table class="bordered">
                <thead>
                    <tr>
                        <th>Rut</th>
                        <th>Nombre</th>
                        <th>Email</th>
                        <th>Perfil</th>
                        <th>Activo</th>
                        <th></th>
                       
                    </tr>
                    
                </thead>
                <tbody>
                    <c:forEach items="${applicationScope.data}" var="p">
                        <tr>
                            <td>${p.rut}</td>
                            <td>${p.nombre}</td>
                            <td>${p.mail}</td>
                             <td>${p.perfil}</td>
                             <td>${p.activo?"si":"no"}</td>  
                             <td><button name="boton" value="${p.rut}"
                                         class="btn-floating blue" >
                                     <i class="material-icons">Editar</i>
                                 </button></td>
                                   
                         </tr>
                        
                    </c:forEach>
                               
                </tbody>
                
            </table>
                </form>
        </div>
        
    </div>
    
</c:if>

<c:if test="${empty sessionScope.admin}">
    No tiene permisos para estar aqui
    <br><a href="index.jsp">Iniciar Sesion</a>
</c:if>
<%@include file="plantilla/footer.jsp" %>