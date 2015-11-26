<%@page import="dao.LivroDAO"%>
<%@page import="java.math.BigDecimal"%>
<%@page import="modelo.Livro"%>


<%@include file="cabecalho.jsp"%>
<%
    
    //
 //   Date da = new Date();
    
    
    String msg="";
    
    if(request.getParameter("txtisbn") == null || request.getParameter("txtnome")== null)
    {
        response.sendRedirect("livro.jsp");
    }
    else
    {
    
        String nome = request.getParameter("txtnome");
        Long isbn = Long.parseLong(request.getParameter("txtisbn")); // conversao
        BigDecimal preco = new BigDecimal(request.getParameter("txtpreco")); //conversao
        String autor = request.getParameter("txtautor");
	String editora = request.getParameter("txteditora");
        Integer numexemplares = Integer.parseInt(request.getParameter("txtnumexemplares")); //conversao
  
        //Chamar a inclusão da DAO
        LivroDAO dao = new LivroDAO();
        Livro obj = new Livro();
        
        obj.setNome(nome);
        obj.setIsbn(isbn);
        obj.setAutor(autor);
        obj.setEditora(editora);
        obj.setNumexemplares(numexemplares);
        obj.setPreco(preco);
        
        
       

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
String isbn = request.getParameter("txtisbn");
%>
         <h1 class="centro">Cadastro de Livros</h1>
            
         <div>
             <%=msg%>.<br />
             Nome:<%=nome%><br />
             ISBN:<%=isbn%><br />
             <a href="livro.jsp">Voltar para Listagem</a>
         </div>
    </body>
</html>