<%@page import="modelo.Livro"%>
<%@page import="dao.LivroDAO"%>
<%@include file="cabecalho.jsp"%>
<%
    String msg = "";
    if(request.getParameter("isbn")==null)
    {
        response.sendRedirect("livro.jsp");
    }
    else
    {
        
        Long isbn = Long.parseLong(request.getParameter("txtisbn")); // conversao
        
        LivroDAO dao = new LivroDAO();
        //buscar o registro pela chave prim�ria
        Livro obj = dao.buscarPorChavePrimaria(isbn);
        // Excluir o livro buscado
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
         <h1 class="centro">Exclus�o de Livros</h1>
            
         <div>
             <%=msg%><br />
             <a href="livro.jsp">Voltar para Listagem</a>
         </div>
    </body>
</html>
