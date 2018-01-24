<%@include file="plantilla/header.jsp" %>


<c:if test="${not empty sessionScope.admin}">
    <%@include file="plantilla/menu.jsp" %>
    <div class="row">
        <div class="col s6 offset-s3 z-depth-3">
            <h4 class="center-align">Editar Personas</h4>
            <form action="control.do" method="post">

                <input type="text" name="rut" readonly="true" value="${requestScope.persona.rut}"/>
                <input type="text" name="nombre" readonly="true"  value="${requestScope.persona.nombre}"/>
                <input type="text" name="mail" readonly="false"  value="${requestScope.persona.mail}"/>
                <input type="text" name="perfil" readonly="true"  value="${requestScope.persona.perfil}"/>

                <select name="activo">
                    <option ${requestScope.persona.activo?"selected":""}>Si</option>
                    <option ${requestScope.persona.activo?"":"selected"}>No</option>
                </select>
                <br>

                <button class="btn" name="boton" value="editar" type="submit">Editar</button>
                <br><br>
                <p class="center-align"><a href="index.jsp">volver</a>

            </form>
        </div>

    </div>

</c:if>

<c:if test="${empty sessionScope.admin}">
    No tiene permisos para estar aqui
    <br><a href="index.jsp">Iniciar Sesion</a>
</c:if>
<%@include file="plantilla/footer.jsp" %>
