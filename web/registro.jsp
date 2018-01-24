<%@include file="plantilla/header.jsp" %>
<%@include file="plantilla/menu.jsp" %>
 
 
 <div class="row">
     <div class="col s6 offset-s3 z-depth-3">
          <h2> Registro</h2>
        <form action="control.do" method="post">
            <label>RUT</label>
            <input type="text" name="rut"  value="rut"/>
            
            <label>Nombre</label>
            <input type="text" name="nombre"  value="nombre"/>
            
            <label>Email</label>
            <input type="text" name="mail"  value="mail"/>
            
            <br>
             <label>Clave</label>
            <input type="password" name="clave1" value=""/>
            <br>
            
            <label>Confirmar clave</label>
            <input type="password" name="clave2" value="" />
            <br>
            
            <button class="btn pulse right" name="boton" value="registro" type="submit">Registrar</button>
            <br><br>
            <p class="center-align"><a href="index.jsp">volver</a>
                
           
        </form>
       <br>
       ${requestScope.msg}
         
         
     </div>
     
     
 </div>
      
   <%@include file="plantilla/footer.jsp" %>
