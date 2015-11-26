<%@page import="modelo.Livro"%>
<%@page import="java.util.List"%>
<%@page import="dao.LivroDAO"%>
<%@include file="cabecalho.jsp"%>
<%
LivroDAO dao = new LivroDAO();


List<Livro> lista;
//Verificar se veio algo do filtro, 
//se vier eu filtro pro nome
//caso contrário eu trago todos os livros
if(request.getParameter("txtFiltro")!= null && request.getParameter("txtFiltro")!= "")
{
    String txtFiltro = request.getParameter("txtFiltro");
     lista = dao.listar(txtFiltro);
  
}
else
{
    lista = dao.listar();
}
%>

        <div>
            <h1 class="centro">Livros</h1>
            
            <div>
                +<a href="livro-cadastrar.jsp">Novo Livro</a><br />
                <form action="livro.jsp" method="post">
                    <input type="text" name="txtFiltro" />
                    <input type="submit" value="Pesquisar"/><br />
                </form>
                
                
           
                    <table>
                        <tr>
                            <th>ISBN</th>
                            <th>Nome</th>
                            <th>Preco</th>
                            <th>Autor</th>
                            <th>Editora</th>
                            <th>NºExemplares</th>
                        </tr>
                        <%
                        for(Livro item:lista)
                        {
                        %>
                            
                       
                        
                         <tr>
                            <td><%=item.getIsbn()%></td>
                            <td><%=item.getNome()%></td>
                            <td><%=item.getPreco()%></td>
                            <td><%=item.getAutor()%></td>
                            <td><%=item.getEditora()%></td>
                            <td><%=item.getNumexemplares()%></td>
                            <td><a href="livro-atualizar.jsp?isbn=<%=item.getIsbn()%>">Editar</a>
                                <a href="livro-excluir-ok.jsp?isbn=<%=item.getIsbn()%>">Excluir</a>
                            </td>
                            
                        </tr>
                        <%
                        }
                        %>
                    </table>
                    
               
            </div>
        </div>
    </body>
</html>