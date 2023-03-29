<%-- 
    Document   : jsp3
    Created on : 16 mar 2023, 13:04:14
    Author     : alumno
--%>

<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="org.gerdoc.Datos"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
    <body style="background-color: black; color: white">
        <%
            String Cliente = null;
            int TiempoVendido = 0;
            String PoderAdquirido = null;
            String Contraseña = null;
            String FechadeAdquicision = null;
            String Evidencia = null;
            String guardar = null;
            String id = null;
            String editar = null;
            String accion = "guardar";
            String actualizar = "guardar";
            Datos datos = null;
            Integer idx = null;
            List<Datos> lista = null;

            session = request.getSession(true);
            if (session
                    != null) {
                if (session.getAttribute("lista") == null) {
                    session.setAttribute("lista", new ArrayList<Datos>());
                }
                lista = (List) session.getAttribute("lista");
            }
            Cliente = request.getParameter("Cliente");
            String TV = String.valueOf(TiempoVendido);
            TV = request.getParameter("TV");
            PoderAdquirido = request.getParameter("PoderAdquirido");
            Contraseña = request.getParameter("Contraseña");
            FechadeAdquicision = request.getParameter("FechadeAdquicision");
            Evidencia = request.getParameter("Evidencia");
            guardar = request.getParameter("guardar");
            id = request.getParameter("id");
            editar = request.getParameter("editar");
            actualizar = request.getParameter("actualizar");

            if ("Submit".equals(editar)) {
                idx = Integer.parseInt(id);
                if (idx < lista.size()) {
                    datos = lista.get(idx);
                }
                accion = "actualizar";
            }

            if ("Submit".equals(guardar)
                    || "Submit".equals(actualizar)) {
                if ("Submit".equals(guardar)) {
                    datos = new Datos();
                } else {
                    datos = lista.get(Integer.parseInt(id));
                }
                datos.setCliente(Cliente);
                datos.setContraseña(Contraseña);
                datos.setEvidencia(Evidencia);
                datos.setFechadeAdquicision(FechadeAdquicision);
                datos.setPoderAdquirido(PoderAdquirido);
                datos.setTiempoVendido(TiempoVendido);
                if ("Submit".equals(guardar)) {
                    lista.add(datos);
                }
        %>
        <h1>EXITO!</h1>
        <script>
            console.log("Exito");
        </script>
        <a href="jsp2.jsp">Ir a jsp2 </a>
        <%
            }
            if (datos
                    == null) {
                datos = new Datos();
                datos.setCliente("");
                datos.setContraseña("");
                datos.setEvidencia("");
                datos.setFechadeAdquicision("");
                datos.setPoderAdquirido("");
                datos.setTiempoVendido(0);
            }

            if (!"Submit".equals(guardar)
                    && !"Submit".equals(actualizar)) {
        %>  
        <div class="container-fluid">
            <div style="color: black">y</div>
            <form id="form1">
                <div style="color: black">y</div>
                <div style="color: black">y</div>
                <div class="title">RULES</div>
                <div style="color: black">y</div>
                <div class="container-fluid" > 
                    <table class="table table-dark table-borderless">
                        <tr>
                            <td>Cliente</td>
                            <td><input id="Cliente" name="Cliente" value="<%=datos.getCliente()%>" type="text"/></td>
                        </tr>
                        <tr>
                            <td>Tiempo Vendido</td>
                            <td><input id="TiempoVendido" name="TiempoVendido" value="<%=datos.getTiempoVendido()%>" type="number"/>
                                <%
                                    if ("Submit".equals(editar)) {
                                %>
                                <input type="hidden" name="id" id="id" value="<%=id%>" />
                                <%
                                    }
                                %>
                            </td>
                        </tr>
                        <tr>
                            <td>Evidencia</td>
                            <td><input id="Evidencia" name="Evidencia" value="<%=datos.getEvidencia()%>" type="text"/></td>
                        </tr>
                        <tr>
                            <td>Fecha de Adquicision</td>
                            <td><input id="FechadeAdquicision" name="FechadeAdquicision" value="<%=datos.getFechadeAdquicision()%>" type="text"/></td>
                        </tr>
                        <tr>
                            <td>Poder Adquirido</td>
                            <td><input id="PoderAdquirido" name="PoderAdquirido" value="<%=datos.getPoderAdquirido()%>" type="text"/></td>
                        </tr>
                        <tr>
                            <td>Contraseña</td>
                            <td><input id="Contraseña" name="Contraseña" value="<%=datos.getContraseña()%>" type="text"/></td>
                        </tr>
                        <tr >
                            <td colspan="2">
                                <input type="submit" id="Guardar" name="<%=accion%>" />
                            </td>
                        </tr>
                    </table>
                </div>     
            </form>
        </div>
        <%
            }
        %>
    </body>
</html>
