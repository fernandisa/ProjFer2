<%@page import="modelo.Compra"%>
<%@page import="dao.CompraDAO"%>
<%@page import="dao.ClienteDAO"%>
<%@page import="modelo.Cliente"%>
<%@include file="cabecalho.jsp"%>
<%
    if(request.getParameter("idcompra") == null)
    {
      response.sendRedirect("compra.jsp"); 
      //para a execução aqui
      return;
    }
     //Buscar o registro(cliente) a partir da sua
        //chave primária, nesse caso o CPF
        String idcompra = request.getParameter("idcompra"); // conversao
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
            <h1 class="centro">Atualização de Clientes</h1>
            
            <div>
                
                <form action="cliente-atualizar-ok.jsp" method="post">
                    <label>CPF:</label><input type="text" name="txtcpf" value="<%=obj.getCpf()%>" readonly="readonly"/><br />
                   <%-- o readonly n permite ao usuario tocar nesse campo --%>
                    <label>Nome:</label><input type="text" name="txtnome" value="<%=obj.getNome()%>" /><br />
                    <label>Endereco:</label><input type="text" name="txtendereco" value="<%=obj.getEndereco()%>" /><br />
                    <label>Telefone:</label><input type="text" name="txttelefone" value="<%=obj.getTelefone()%>" /><br />
                    
                    <input type="submit" value="Atualizar" />
                </form>
            </div>
        </div>


        
    </body>
</html>