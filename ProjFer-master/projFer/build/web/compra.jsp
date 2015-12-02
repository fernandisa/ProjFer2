<%@page import="modelo.Compra"%>
<%@page import="java.util.List"%>
<%@page import="dao.CompraDAO"%>
<%@include file="cabecalho.jsp"%>
<%
CompraDAO dao = new CompraDAO();
List<Compra> lista;
//Verificar se veio algo do filtro, 
//se vier eu filtro pro nome
//caso contr�rio eu trago todos os clientes
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
            <h1 class="centro">Compra</h1>
            
            <div>
                +<a href="compra-cadastrar.jsp">Nova Compra</a><br />
                <form action="compra.jsp" method="post">
                    <input type="text" name="txtFiltro" />
                    <input type="submit" value="Pesquisar"/><br />
                </form>
                   
                       <table>
                            <tr>
                                <th>Cupom Fiscal</th>
                                <th>Preco da Venda</th>
                                <th>DataHora</th>
                                <th>Quantidade</th>
                                <th>CPF do comprador</th>
                                <th>ISBN do livro</th>
                       </tr>
                            <%
                            for(Compra item:lista)
                            {
                            %>
                            <tr>
                                <td><%=item.getIdcompra()%></td>
                                <td><%=item.getPrecovenda()%></td>
                                <td><%=item.getDatahora()%></td>
                                <td><%=item.getQntd()%></td>
                                <td><%=item.getCpf()%></td>
                                <td><%=item.getIsbn()%></td>

                                <td>
                                    <a href="compra-atualizar.jsp?cpf=<%=item.getIdcompra()%>">Editar</a>
                                    <a href="compra-excluir-ok.jsp?cpf=<%=item.getIdcompra()%>">Excluir</a>
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
