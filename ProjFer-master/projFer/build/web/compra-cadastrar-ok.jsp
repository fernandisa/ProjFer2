<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="modelo.Cliente"%>
<%@page import="modelo.Livro"%>
<%@page import="modelo.Compra"%>
<%@page import="dao.CompraDAO"%>
<%@include file="cabecalho.jsp"%>
<%
   
    
    // converter de DATE pra string -- Listar/Atualizar
  //  Date datas = new Date ();
    
  //  String dataformatada = sf.format(datas);
    //System.out.println();
    String msg="";
    
    if(request.getParameter("txtCpf") == null || request.getParameter("txtIsbn")== null || request.getParameter("txtIdcompra")== null);
    {
        response.sendRedirect("compra.jsp");
    }
    else
    {
            String idcompra = request.getParameter("txtIdcompra");
            Long cpf = Long.parseLong(request.getParameter("txtCpf")); // conversao
            String isbn = request.getParameter("txtIsbn");
            String precovenda = request.getParameter("txtPrecovenda");
            
            String data = request.getParameter("txtDatahora");
            Integer qntd = Integer.parseInt(request.getParameter("txtQntd")); // conversao
        //Chamar a inclusão da DAO
            CompraDAO dao = new CompraDAO();
            Compra obj = new Compra();
        
            Livro objLivro = new Livro();
            Cliente objCliente = new Cliente ();
            
            objCliente.setCpf(cpf);
            objLivro.setIsbn(Long.parseLong(isbn));
            
           
            
            
 
            SimpleDateFormat sf = new SimpleDateFormat("dd/MM/yyyy");
            Date d = sf.parse(data);
     
            
            obj.setDatahora(datahora);
        
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
String idcompra = request.getParameter("txtIdcompra");
Long cpf = Long.parseLong(request.getParameter("txtCpf")); // conversao
String isbn = request.getParameter("txtIsbn");
%>
         <h1 class="centro">Compra</h1>
            
         <div>
             
             <%=msg%>.<br />
             Cupom Fiscal:<%=idcompra%><br />
             CPF:<%=cpf%><br />
             ISBN:<%=isbn%><br/>
             <a href="compra.jsp">Voltar para Listagem</a>
         </div>
    </body>
</html>