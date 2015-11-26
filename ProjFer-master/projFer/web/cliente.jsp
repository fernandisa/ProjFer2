<%@page import="modelo.Cliente"%>
<%@page import="java.util.List"%>
<%@page import="dao.ClienteDAO"%>
<%@include file="cabecalho.jsp"%>
<%
ClienteDAO dao = new ClienteDAO();
List<Cliente> lista;
//Verificar se veio algo do filtro, 
//se vier eu filtro pro nome
//caso contrário eu trago todos os clientes
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
            <h1 class="centro">CLiente</h1>
            
            <div>
                +<a href="cliente-cadastrar.jsp">Novo CLiente</a><br />
                <form action="cliente.jsp" method="post">
                    <input type="text" name="txtFiltro" />
                    <input type="submit" value="Pesquisar"/><br />
                </form>
                   
                       <table>
                            <tr>
                                <th>CPF</th>
                                <th>Nome</th>
                                <th>Endereco</th>
                                <th>Telefone</th>
                           
                          
                            </tr>
                            <%
                            for(Cliente item:lista)
                            {
                            %>
                            <tr>
                                <td><%=item.getCpf()%></td>
                                <td><%=item.getNome()%></td>
                                <td><%=item.getEndereco()%></td>
                                <td><%=item.getTelefone()%></td>

                                <td>
                                    <a href="cliente-atualizar.jsp?cpf=<%=item.getCpf()%>">Editar</a>
                                    <a href="cliente-excluir-ok.jsp?cpf=<%=item.getCpf()%>">Excluir</a>
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
