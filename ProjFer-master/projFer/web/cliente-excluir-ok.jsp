<%@include file="cabecalho.jsp"%>
<%
    String cpf = request.getParameter("cpf");
%>
         <h1 class="centro">Exclus�o de Clientes</h1>
            
         <div>
             O Cliente <%=cpf%> foi exclu�do com sucesso.<br />
             <a href="cliente.jsp">Voltar para Listagem</a>
         </div>
    </body>
</html>
