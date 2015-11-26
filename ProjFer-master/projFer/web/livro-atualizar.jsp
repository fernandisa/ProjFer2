<%@page import="dao.LivroDAO"%>
<%@page import="modelo.Livro"%>
<%@include file="cabecalho.jsp"%>
<%
    if(request.getParameter("isbn") == null)
    {
      response.sendRedirect("livro.jsp"); 
      //para a execução aqui
      return;
    }
     //Buscar o registro(professor) a partir da sua
        //chave primária, nesse caso o SIAPE
        Long isbn = Long.parseLong(request.getParameter("isbn")); // conversao
        LivroDAO dao = new LivroDAO();
        Livro obj = dao.buscarPorChavePrimaria(isbn);
        //verificar se o registro existe, se não existir, volta pra lista
        if(obj==null)
        {
            response.sendRedirect("livro.jsp");
            return;
            
        }
        


    

%>
        <div>
            <h1 class="centro">Atualização de Livros</h1>
            
            <div>
                
                <form action="livro-atualizar-ok.jsp" method="post">
                    <label>ISBN:</label><input type="text" name="txtisbn" value="<%=obj.getIsbn()%>" readonly="readonly"/><br />
                   <%-- o readonly n permite ao usuario tocar nesse campo --%>
                    <label>Nome:</label><input type="text" name="txtnome" value="<%=obj.getNome()%>" /><br />
                    <label>Preco:</label><input type="text" name="txtpreco" value="<%=obj.getPreco()%>" /><br />
                    <label>Autor:</label><input type="text" name="txtautor" value="<%=obj.getAutor()%>" /><br />
                    <label>Editora:</label><input type="text" name="txteditora" value="<%=obj.getEditora()%>" /><br />
                    <label>NºExemplares:</label><input type="text" name="txtnumexemplares" value="<%=obj.getNumexemplares()%>" /><br />
                    
                    <input type="submit" value="Atualizar" />
                </form>
            </div>
        </div>


        
    </body>
</html>
