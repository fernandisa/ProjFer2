<%@page import="java.util.List"%>
<%@page import="modelo.Livro"%>
<%@page import="modelo.Cliente"%>
<%@include file="cabecalho.jsp"%>
<%@page import="dao.CompraDAO"%>
<%@page import="dao.ClienteDAO"%>
<%@page import="dao.LivroDAO"%>
<%

    ClienteDAO cdao = new ClienteDAO ();
    LivroDAO ldao = new LivroDAO ();
    List<Cliente> cLista = cdao.listar ();
    
    List<Livro> lLista = ldao.listar ();
    
    
    
%>
        <div>
            <h1 class="centro">Cadastro de Compras</h1>
            
            <div>
                
                <form action="compra-cadastrar-ok.jsp" method="post">
                    
                    <label>Cupom Fiscal:</label><input type="text" name="txtIdcompra" /><br />
                    <label>Preco da Venda</label><input type="text" name="txtPrecovenda" /><br />
                    <label>Data Hora</label><input type="date" name ="txtData" /><br />
                    <label>Quantidade</label><input type="text" name="txtQntd" /><br />
                    
                    
                    <label>CPF do cliente</label>
                    <select name="selCpf">
                        <option value ="" >Selecione </option>
                        <%
                        for (Cliente citem: cLista)
                        {
                        %>
                        <option value="" ></option>
                        <%
                        }
                        %>
                    </select>
                    <br />
                    
                    <label>ISBN do livro</label>
                    <select name="selIsbn">
                        <option value="">Selecione </option>
                        <option value ="" >Selecione </option>
                        <%
                        for (Livro litem: lLista)
                        {
                        %>
                        <option value="" ></option>
                        <%
                        }
                        %>
                    </select>
                    <br />
                    
                    <input type="reset" value="Limpar" />
                    <input type="submit" value="Cadastrar" />
                </form>
            </div>
        </div>



    </body>
</html>
