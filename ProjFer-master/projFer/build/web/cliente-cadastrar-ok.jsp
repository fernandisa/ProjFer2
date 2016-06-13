<%@page import="modelo.Cliente"%>
<%@page import="dao.ClienteDAO"%>
<%@include file="cabecalho.jsp"%>
<%
    
    //
 //   Date da = new Date();
    
    
    String msg="";
    
    if(request.getParameter("txtcpf") == null || request.getParameter("txtnome")== null)
    {
        response.sendRedirect("cliente.jsp");
    }
    else
    {
    
        String nome = request.getParameter("txtnome");
            Long cpf = Long.parseLong(request.getParameter("txtcpf")); // conversao
        String end = request.getParameter("txtendereco");
        String tel = request.getParameter("txttelefone");
        
        
        //Chamar a inclusão da DAO
        ClienteDAO dao = new ClienteDAO();
        Cliente obj = new Cliente();
        
        obj.setNome(nome);
        obj.setEndereco(end);
        obj.setCpf(cpf);
        obj.setTelefone(tel);
        
        try
        {
            dao.incluir(obj);
            msg = "Registro cadastrado com sucesso";
        }
        catch(Exception ex)
        {
            msg = "Erro ao cadastrar registro";
        }
        
    }
    
    
    
    
//txtnome é o NAME que eu coloquei no input na tela 
//anterior
String nome = request.getParameter("txtnome");
String cpf = request.getParameter("txtcpf");
%>
         <h1 class="centro">Cadastro de Clientes</h1>
            
         <div>
             <%=msg%>.<br />
             Nome:<%=nome%><br />
             CPF:<%=cpf%><br />
             <a href="cliente.jsp">Voltar para Listagem</a>
         </div>
    </body>
</html>