<%@page import="modelo.Livro"%>
<%@page import="java.util.List"%>
<%@page import="dao.LivroDAO"%>
<%@include file="cabecalho.jsp"%>
<%
LivroDAO dao = new LivroDAO();
List<Livro> lista;
//Verificar se veio algo do filtro, 
//se vier eu filtro pro nome
//caso contr�rio eu trago todos os livros
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
                <form>
                    <input type="text" />
                    <input type="submit" value="Pesquisar"/><br />
                    <table>
                        <tr>
                            <th>ISBN</th>
                            <th>Nome</th>
                            <th>Preco</th>
                            <th>Autor</th>
                            <th>Editora</th>
                            <th>N�Exemplares</th>
                            
                            <%
                        for(Livro item:lista)
                        {
                        %>
                            
                        </tr>
                        <tr>
                            <td>978-85-98078-17-5</td>
                            <td>A menina que roubava livros</td>
                            <td>36,90</td>
                            <td>Markus Zusak</td>
                            <td>Intr�nseca</td>
                            <td>10</td>
                            <td><a href="livro-editar.jsp?isbn=123">Editar</a>
                                <a href="livro-excluir-ok.jsp?isbn=978-85-98078-17-5">Excluir</a>
                            </td>
                            
                        </tr>
                        <tr>
                            <td>978-85-99296-61-5</td>
                            <td>Praticamente Inofensiva (O Mochileiro das Gal�xias)</td>
                            <td>10,90</td>
                            <td>Douglas Adams</td>
                            <td>Arqueiro</td>
                            <td>5</td>
			    <td><a href="livro-editar.jsp">Editar</a>
                                <a href="livro-excluir-ok.jsp?isbn=978-85-99296-61-5">Excluir</a>
                            </td>
                            
                        </tr>
                        <tr>
                            <td>85-7542-047-X</td>
                            <td>N�o leve a vida t�o � s�rio</td>
                            <td>14,90</td>
                            <td>Hugh Prather</td>
                            <td>Sextante</td>
                            <td>2</td>
                            <td><a href="livro-editar.jsp">Editar</a>
                                <a href="livro-excluir-ok.jsp?isbn=85-7542-047-X">Excluir</a>
                            </td>
                            
                        </tr>
                        <tr>
                            <td>978-85-422-0008-9</td>
                            <td>O Colecionador de L�grimas: Holocausto Nunca Mais</td>
                            <td>20,00</td>
                            <td>Augusto Cury</td>
                            <td>Planeta do Brasil</td>
                            <td>3</td>
                            <td><a href="livro-editar.jsp">Editar</a>
                                <a href="livro-excluir.jsp?isbn=978-85-422-0008-9">Excluir</a>
                            </td>
                            
                        </tr>

			<tr>
                            <td>978-85-8163-221-6</td>
                            <td>Bruxos e Bruxas</td>
                            <td>31,40</td>
                            <td>James Patterson</td>
                            <td>Novo Conceito</td>
                            <td>4</td>
                            <td><a href="livro-editar.jsp">Editar</a>
                                <a href="livro-excluir-ok.jsp?isbn=85-7542-047-X">Excluir</a>
                            </td>
                            
                        </tr>
                        
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

                    </table>
                    
                </form>
            </div>
        </div>
    </body>
</html>