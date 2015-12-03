
<%@page import="modelo.Cliente"%>
<%@page import="dao.ClienteDAO"%>
<%@include file="cabecalho.jsp"%>
<%
    String msg = "";
    if(request.getParameter("cpf")==null)
    {
        response.sendRedirect("cliente.jsp");
    }
    else
    {
        
        
        Long cpf = Long.parseLong(request.getParameter("cpf")); // conversao
        
        ClienteDAO dao = new ClienteDAO();
        //buscar o registro pela chave prim�ria
        Cliente obj = dao.buscarPorChavePrimaria(cpf);
        
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
        
    }
%>
         <h1 class="centro">Exclus�o de Clientes</h1>
            
         <div>
             <%=msg%><br />
             <a href="cliente.jsp">Voltar para Listagem</a>
         </div>
    </body>
</html>