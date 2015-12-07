<%@page import="java.math.BigDecimal"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="modelo.Livro"%>
<%@page import="modelo.Compra"%>
<%@page import="dao.CompraDAO"%>
<%@page import="modelo.Cliente"%>
<%@page import="dao.ClienteDAO"%>
<%@include file="cabecalho.jsp"%>
<%
if(request.getParameter("txtIdcompra") == null || request.getParameter("txtCpf")==null ||request.getParameter("txtIsbn")==null )
{
    response.sendRedirect("compra.jsp");
    return;
}

            Long idcompra = Long.parseLong(request.getParameter("txtIdcompra"));
            Long cpf = Long.parseLong(request.getParameter("txtCpf")); // conversao
            String isbn = request.getParameter("txtIsbn");
            BigDecimal preco = new BigDecimal(request.getParameter("txtPrecovenda"));
            
            String data = request.getParameter("txtData");
            Integer qntd = Integer.parseInt(request.getParameter("txtQntd")); // conversao

//Buscar o registro pela chave primária
//Alterar os demais valores (nesse caso nome,end, tel)
//mandar alterar



            CompraDAO dao = new CompraDAO();
//busquei o cliente pelo CPF (registro pela C.Primária)

            Compra obj = dao.buscarPorChavePrimaria(idcompra);
            //Se não encontrou o registro volta pra listar 

            if(obj == null)
            {
                response.sendRedirect("compra.jsp");
                return;
            }



            //Atualizar as demais informações enviadas
            Cliente cliente = new Cliente ();
            cliente.setCpf(cpf);
            Livro livro = new Livro ();
            livro.setIsbn(Long.parseLong(isbn));
            // chamo a atualizar

            SimpleDateFormat sf = new SimpleDateFormat("dd/MM/yyyy");
            Date d = sf.parse(data);
        
            obj.setData(d);
            obj.setPrecovenda(preco);
            obj.setIdcompra(idcompra);

            dao.alterar(obj);



%>

         <h1 class="centro">Atualização de Compras</h1>
            
         <div>
             Registro alterado com sucesso.<br />
             <a href="compra.jsp">Voltar para Listagem</a>
         </div>
    </body>
</html>