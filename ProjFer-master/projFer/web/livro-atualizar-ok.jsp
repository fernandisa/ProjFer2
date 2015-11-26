<%@page import="java.math.BigDecimal"%>
<%@page import="modelo.Livro"%>
<%@page import="dao.LivroDAO"%>
<%@include file="cabecalho.jsp"%>
<%
if(request.getParameter("txtnome") == null || request.getParameter("txtisbn")==null)
{
    response.sendRedirect("livro.jsp");
    return;
}

        String nome = request.getParameter("txtnome");
        Long isbn = Long.parseLong(request.getParameter("txtisbn")); // conversao
        BigDecimal preco = new BigDecimal(request.getParameter("txtpreco")); //conversao
        String autor = request.getParameter("txtautor");
	String editora = request.getParameter("txteditora");
        Integer numexemplares = Integer.parseInt(request.getParameter("txtnumexemplares")); //conversao




//Buscar o registro pela chave prim�ria
//Alterar os demais valores (nesse caso apenas Nome)
//mandar alterar
        
        
        
LivroDAO dao = new LivroDAO();


//busquei o livro pelo isbn (registro pela C.Prim�ria)

Livro obj = dao.buscarPorChavePrimaria(isbn);

//Se n�o encontrou o registro volta pra listar 
if(obj == null)
{
    response.sendRedirect("livro.jsp");
    return;
}


//Atualizar as demais informa��es enviadas
obj.setNome(nome);
// chamo a atualizar
dao.alterar(obj);



%>

         <h1 class="centro">Atualiza��o de Livros</h1>
            
         <div>
             Registro alterado com sucesso.<br />
             <a href="livro.jsp">Voltar para Listagem</a>
         </div>
    </body>
</html>
