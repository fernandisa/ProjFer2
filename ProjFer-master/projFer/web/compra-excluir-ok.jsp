<%@page import="modelo.Compra"%>
<%@page import="dao.CompraDAO"%>
<%@include file="cabecalho.jsp"%>
<%
    
    if(request.getParameter("Idcompra")==null )
    {
        response.sendRedirect("compra.jsp");
	return;
    }
    Long idcompra = Long.parseLong(request.getParameter("Idcompra"));
    CompraDAO dao = new CompraDAO();
        //buscar o registro pela chave primária
    Compra obj = dao.buscarPorChavePrimaria(idcompra);
    String msg = "";
        //buscar o registro pela chave primária
        
        
        // Excluir o cliente buscado
    if(obj!=null)
    {
        dao.excluir(obj);
        msg = "Registro excluído com sucesso";
    }
        
    else
    {
        msg = "Registro não encontrado. Verifique.";
    }
        
    
%>
         <h1 class="centro">Exclusão de Compras</h1>
            
         <div>
             <%=msg%><br />
             <a href="compra.jsp">Voltar para Listagem</a>
         </div>
    </body>
</html>
