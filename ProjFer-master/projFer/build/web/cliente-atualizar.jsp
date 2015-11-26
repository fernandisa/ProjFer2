<%@page import="dao.ClienteDAO"%>
<%@page import="modelo.Cliente"%>
<%@include file="cabecalho.jsp"%>
<%
    if(request.getParameter("cpf") == null)
    {
      response.sendRedirect("cliente.jsp"); 
      //para a execução aqui
      return;
    }
     //Buscar o registro(cliente) a partir da sua
        //chave primária, nesse caso o CPF
        Long cpf = Long.parseLong(request.getParameter("cpf")); // conversao
        ClienteDAO dao = new ClienteDAO();
        Cliente obj = dao.buscarPorChavePrimaria(cpf);
        //verificar se o registro existe, se não existir, volta pra lista
        if(obj==null)
        {
            response.sendRedirect("cliente.jsp");
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
                    <label>Endereco:</label><input type="text" name="txtnome" value="<%=obj.getEndereco()%>" /><br />
                    <label>Telefone:</label><input type="text" name="txtnome" value="<%=obj.getTelefone()%>" /><br />
                    
                    <input type="submit" value="Atualizar" />
                </form>
            </div>
        </div>


        
    </body>
</html>
