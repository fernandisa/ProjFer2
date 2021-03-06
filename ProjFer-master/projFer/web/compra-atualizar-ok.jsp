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


            Long idcompra = Long.parseLong(request.getParameter("txtIdcompra"));
            Long cpf = Long.parseLong(request.getParameter("selCpf")); // conversao
            String isbn = request.getParameter("selIsbn");
            BigDecimal preco = new BigDecimal(request.getParameter("txtPrecovenda"));
            String data = request.getParameter("txtData");
            Integer qntd = Integer.parseInt(request.getParameter("txtQntd")); // conversao

//Buscar o registro pela chave prim�ria
//Alterar os demais valores (nesse caso nome,end, tel)
//mandar alterar



            CompraDAO dao = new CompraDAO();
//busquei o cliente pelo CPF (registro pela C.Prim�ria)

            Compra obj = dao.buscarPorChavePrimaria(idcompra);
            //Se n�o encontrou o registro volta pra listar 

            //Atualizar as demais informa��es enviadas
            Cliente cliente = new Cliente ();
            cliente.setCpf(cpf);
            
            Livro livro = new Livro ();
            livro.setIsbn(Long.parseLong(isbn));
            // chamo a atualizar

            
            
            
            SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd");
            Date d = sf.parse(data);
            obj.setData(d);
            
            obj.setPrecovenda(preco);
            obj.setQntd(qntd);

            dao.alterar(obj);



%>

         <h1 class="centro">Atualiza��o de Compras</h1>
            
         <div>
             Registro alterado com sucesso.<br />
             <a href="compra.jsp">Voltar para Listagem</a>
         </div>
    </body>
</html>