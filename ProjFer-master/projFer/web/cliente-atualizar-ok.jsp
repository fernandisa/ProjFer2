<%@page import="modelo.Cliente"%>
<%@page import="dao.ClienteDAO"%>
<%@include file="cabecalho.jsp"%>
<%
if(request.getParameter("txtIdcompra") == null || request.getParameter("txtIsbn")==null || request.getParameter("txtIdcpf")==null)
{
    response.sendRedirect("cliente.jsp");
    return;
}

        String nome = request.getParameter("txtnome");
        Long cpf = Long.parseLong(request.getParameter("txtcpf")); // conversao
        String end = request.getParameter("txtendereco");
        String tel = request.getParameter("txttelefone");



//Buscar o registro pela chave primária
//Alterar os demais valores (nesse caso nome,end, tel)
//mandar alterar



ClienteDAO dao = new ClienteDAO();
//busquei o cliente pelo CPF (registro pela C.Primária)

Cliente obj = dao.buscarPorChavePrimaria(cpf);
//Se não encontrou o registro volta pra listar 

if(obj == null)
{
    response.sendRedirect("cliente.jsp");
    return;
}


//Atualizar as demais informações enviadas
obj.setNome(nome);
// chamo a atualizar

obj.setEndereco(end);

obj.setTelefone(tel);

dao.alterar(obj);



%>

         <h1 class="centro">Atualização de Clientes</h1>
            
         <div>
             Registro alterado com sucesso.<br />
             <a href="cliente.jsp">Voltar para Listagem</a>
         </div>
    </body>
</html>
