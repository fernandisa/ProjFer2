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
        String isbn = request.getParameter("txtisbn");
        Double preco = request.getParameter("txtpreco");
        String autor = request.getParameter("txtautor");
	String editora = request.getParameter("txteditora");
        Integer numexemplares = request.getParameter("txtnumexemplares");

        
        
        //Chamar a inclusão da DAO
        LivroDAO dao = new LivroDAO();
        Livro obj = new Livro();
        
        obj.setNome(nome);
        
        obj.setPreco(preco);
	obj.setAutor(autor);
        obj.setEditora(editora);
	obj.setNumexemplares(numexemplares);
       

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
             Registro cadastrado com sucesso.<br />
             Nome:<%=nome%><br />
             ISBN:<%=isbn%><br />
             <a href="livro.jsp">Voltar para Listagem</a>
         </div>
    </body>
</html>