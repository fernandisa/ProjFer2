<%@page import="modelo.Cliente"%>
<%@page import="dao.ClienteDAO"%>
<%@include file="cabecalho.jsp"%>
<%
if(request.getParameter("txtnome") == null || request.getParameter("txtcpf")==null)
{
    response.sendRedirect("cliente.jsp");
    return;
}

        String nome = request.getParameter("txtnome");
        Long cpf = Long.parseLong(request.getParameter("txtcpf")); // conversao
        String end = request.getParameter("txtendereco");
        String tel = request.getParameter("txttelefone");



//Buscar o registro pela chave prim�ria
//Alterar os demais valores (nesse caso apenas Nome)
//mandar alterar



ClienteDAO dao = new ClienteDAO();
//busquei o professor pelo siape (registro pela C.Prim�ria)

Cliente obj = dao.buscarPorChavePrimaria(cpf);
//Se n�o encontrou o registro volta pra listar 

if(obj == null)
{
    response.sendRedirect("cliente.jsp");
    return;
}


//Atualizar as demais informa��es enviadas
obj.setNome(nome);
// chamo a atualizar
dao.alterar(obj);



%>

         <h1 class="centro">Atualiza��o de Clientes</h1>
            
         <div>
             Registro alterado com sucesso.<br />
             <a href="cliente.jsp">Voltar para Listagem</a>
         </div>
    </body>
</html>
