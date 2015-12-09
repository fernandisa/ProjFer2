<%@page import="java.text.SimpleDateFormat"%>
<%@page import="modelo.Compra"%>
<%@page import="java.util.List"%>
<%@page import="dao.CompraDAO"%>
<%@include file="cabecalho.jsp"%>
<%
CompraDAO dao = new CompraDAO();
List<Compra> lista;
//Verificar se veio algo do filtro, 
//se vier eu filtro pro nome
//caso contrário eu trago todos os clientes
if(request.getParameter("txtFiltro")!= null && request.getParameter("txtFiltro")!= "")
{
    String txtFiltro = request.getParameter("txtFiltro");
    lista = dao.listar(Long.parseLong(txtFiltro)); // como a chave primaria é long, tive q converter pois geralmente era string
  
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
                                <th>Data</th>
                                <th>Quantidade</th>
                                <th>CPF do comprador</th>
                                <th>ISBN do livro</th>
                           </tr>
                           <%
                           SimpleDateFormat sf = new SimpleDateFormat("dd-MM-yyyy");
                           for(Compra item:lista)
                           {
                               
                           %>
                           <tr>
                                <td><%=item.getIdcompra()%></td>
                                <td><%=item.getPrecovenda()%></td>
                                <td><%=sf.format(item.getData())%></td>
                                <td><%=item.getQntd()%></td>
                                <td><%=item.getCpf()%></td>
                                <td><%=item.getLivro()%></td>

                                <td>
                                    <a href="compra-atualizar.jsp?idcompra=<%=item.getIdcompra()%>">Editar</a>
                                    <a href="compra-excluir-ok.jsp?idcompra=<%=item.getIdcompra()%>">Excluir</a>
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

