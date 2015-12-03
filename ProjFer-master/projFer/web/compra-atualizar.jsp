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
     //Buscar o registro(cliente) a partir da sua
        //chave primária, nesse caso o CPF
        String idcompra = request.getParameter("Idcompra"); // conversao
        CompraDAO dao = new CompraDAO();
        Compra obj = dao.buscarPorChavePrimaria(Long.parseLong(idcompra));
        //verificar se o registro existe, se não existir, volta pra lista
        if(obj==null)
        {
            response.sendRedirect("compra.jsp");
            return;
            
        }
        


    

%>
        <div>
            <h1 class="centro">Atualização de Compras</h1>
            
            <div>
                
                <form action="compra-atualizar-ok.jsp" method="post">
                    <label>Cupom Fiscal:</label><input type="text" name="txtIdcompra" value="<%=obj.getIdcompra()%>" readonly="readonly"/><br />
                   <%-- o readonly n permite ao usuario tocar nesse campo --%>
                    <label>Preco da venda:</label><input type="text" name="txtPrecovenda" value="<%=obj.getPrecovenda()%>" /><br />
                    <label>Data Hora:</label><input type="date" name ="txtDatahora" value='<%=obj.getDatahora()%>' /><br />
                
     
                    <label>Quantidade de livros:</label><input type="text" name="txtQntd" value="<%=obj.getQntd()%>" /><br />
                    <label> CPF do cliente</label><input type="text" name="txtCpf" value="<%=obj.getCpf()%>" /> <br />
                    <label> ISBN do livro</label><input type="text" name="txtIsbn" value="<%=obj.getIsbn()%>" /> <br />
                    <input type="submit" value="Atualizar" />
                </form>
            </div>
        </div>


        
    </body>
</html>