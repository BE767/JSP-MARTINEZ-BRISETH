<%-- 
    Document   : jsp2
    Created on : 14 mar 2023, 13:12:32
    Author     : alumno
--%>

<%@page import="java.util.List"%>
<%@page import="org.gerdoc.Datos"%>
<%@page import="org.gerdoc.Negocio"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
        <link rel ="stylesheet" href="Css/normalize.css">
        <link rel ="preload" href="Css/styles.css" as="style" >
        <link href="Style.css" rel="stylesheet">
        <link href="Css/estilosp.css" rel="stylesheet">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Krub:wght@300;400;700&display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Krub:wght@300;400;700&family=Mulish:wght@200&display=swap" rel="stylesheet">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <title>JSP Page</title>
    </head>
    <body class="container-fluid" ; style="background-color: black">
        
        <div class="title">
            <div style="color: black">y</div>
            <h1>WELCOME TO DEATH-FANTASY</h1>
        </div>
        <div class="burbujas">
            <div class="burbuja">
                
            </div>
            
        </div>
        
        <%
            int i = 0;
            List<Datos> lista = null;
            String id = null;
            String borrar = null;
            session = request.getSession( true );
            
            if( session != null )
            {
                if( session.getAttribute("lista") != null )
                {
                    lista = (List)session.getAttribute( "lista" );
                }
            }
            id = request.getParameter( "id" );
            borrar = request.getParameter( "borrar" );
            if( "Enviar".equals( borrar ) )
            {
                lista.remove( Integer.parseInt(id) );
            }
        %>
         <div class="nav_bg">
        <nav class=" NVC  contenedor">
            <a href="jsp1.jsp">Back</a>
            <a href="jsp3.jsp">Write contract</a> 
        </nav>
     </div>
          <div style="color: black">y</div>
         <div class="container-fluid cont">Contracts table</div>
         <div style="color: black">y</div>
        <table class="table table-dark table-borderless">
            
              <thead>
                <tr>
                  <th scope="col">#</th>
                  <th scope="col">Id</th>
                  <th scope="col">Cliente</th>
                  <th scope="col">Tiempo Vendido</th>
                  <th scope="col">Poder Adquirido</th>
                  <th scope="col">Contraseña</th>
                  <th scope="col">Fecha de Adquicision</th>
                  <th scope="col">Evidencia</th>
                </tr>
        </thead>
            <%
              if( lista != null && !lista.isEmpty() )
              {
                for( Datos datos : lista)
                {
            %>
            <tbody>
            <tr>
                <td scope="row"><%=i + 1%></td>
                <td><%=i%></td>
                <td><%= datos.getCliente()  %></td>
                <td><%= datos.getTiempoVendido() %></td>
                <td><%= datos.getPoderAdquirido() %></td>
                <td><%= datos.getContraseña() %></td>
                <td><%= datos.getFechadeAdquicision() %></td>
                <td><%= datos.getEvidencia()%></td>
                
                <td>
                    <a href="jsp2.jsp?id=<%=i%>&borrar=Enviar">Borrar</a> 
                    <a href="jsp3.jsp?id=<%=i++%>&editar=Enviar">Editar</a> 
                </td>
            </tr>
            </tbody>
            <%
                }
              }
            %>
        </table>
    </body>
</html>
