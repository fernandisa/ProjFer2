<%@page import="dao.LivroDAO"%>
<%@page import="modelo.Livro"%>
<%@page import="java.util.List"%>
<%@page import="modelo.Compra"%>
<%@page import="dao.CompraDAO"%>
<%@page import="dao.ClienteDAO"%>
<%@page import="modelo.Cliente"%>
<%@include file="cabecalho.jsp"%>
<%
    
    if(request.getParameter("Idcompra") == null)
    {
      response.sendRedirect("compra.jsp"); 
      //para a execução aqui
      return;
    }
     //Buscar o registro(compra) a partir da sua
        //chave primária, nesse caso o idcompra
        String idcompra = request.getParameter("Idcompra"); // conversao
        CompraDAO dao = new CompraDAO();
        Compra obj = dao.buscarPorChavePrimaria(Long.parseLong(idcompra));
        //verificar se o registro existe, se não existir, volta pra lista
        if(obj==null)
        {
            response.sendRedirect("compra.jsp");
            return;
            
        }
        //Listagem de livros
    LivroDAO lDAO = new LivroDAO();
    List<Livro> lLista = lDAO.listar();
//listagem de clientes
    
    ClienteDAO cDAO = new ClienteDAO();
   
    List<Cliente> cLista = cDAO.listar();
    
%>
        <div>
            <h1 class="centro">Atualização de Compras</h1>
            
            <div>
                
                <form action="compra-atualizar-ok.jsp" method="post">
                    <label>Cupom Fiscal:</label><input type="text" name="txtIdcompra" value="<%=obj.getIdcompra()%>" readonly/><br />
                   <%-- o readonly n permite ao usuario tocar nesse campo --%>
                    <label>Preco da venda:</label><input type="text" name="txtPrecovenda" value="<%=obj.getPrecovenda()%>" /><br />
                    <label>Data Hora</label><input type="date" name ="txtData" /><br />
                 
     
                    <label>Quantidade de livros:</label><input type="text" name="txtQntd" value="<%=obj.getQntd()%>" /><br />
                               <label>CPF do cliente</label>
                    <select name="selCpf">
                        <option value ="" >Selecione </option>
                        <%
                           //percorrer minha lista de clientes
                        String selected = "";
                        for (Cliente c: cLista)
                        {
                            
                            if(c.getCpf() == obj.getCpf().getCpf())
                            {
                                selected = "selected";
                            }
                        %>
                        <option value="<%=c.getCpf()%>" <%=selected%>><%=c%></option>  
                        <%
                        selected = "";
                        }
                        
                        %>
                    </select>
                    <br />
                    
                    <label>ISBN do livro</label>
                    <select name="selIsbn">
                        <option value="">Selecione </option>
                        <%
                        selected ="";
                        //percorrer minha lista de livros
                        for (Livro l: lLista)
                        {
                            if(l.getIsbn() == obj.getLivro().getIsbn())
                            {
                                selected = "selected";
                            }

                        %>
                        <option value="<%=l.getIsbn()%>"<%=selected%>><%=l%></option>
                        <%
                        selected = "";
                        }
                        
                        %>
                    </select>
                    <br />
                    
                    
                    <input type="submit" value="Atualizar" />
                </form>
            </div>
        </div>



    </body>
</html>