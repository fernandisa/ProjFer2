<%@page import="modelo.Compra"%>
<%@page import="dao.CompraDAO"%>
<%@include file="cabecalho.jsp"%>
<%
    
    if(request.getParameter("idcompra")==null )
    {
        response.sendRedirect("compra.jsp");
	return;
    }
    Long idcompra = Long.parseLong(request.getParameter("idcompra"));
    CompraDAO dao = new CompraDAO();
        //buscar o registro pela chave prim�ria
    Compra obj = dao.buscarPorChavePrimaria(idcompra);
    String msg = "";
        //buscar o registro pela chave prim�ria
        
        
        // Excluir o cliente buscado
    if(obj!=null)
    {
        dao.excluir(obj);
        msg = "Registro exclu�do com sucesso";
    }
        
    else
    {
        msg = "Registro n�o encontrado. Verifique.";
    }
        
    
%>
         <h1 class="centro">Exclus�o de Compras</h1>
            
         <div>
             <%=msg%><br />
             <a href="compra.jsp">Voltar para Listagem</a>
         </div>
    </body>
</html>
