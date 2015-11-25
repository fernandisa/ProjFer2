<%@include file="cabecalho.jsp"%>
        <div>
            <h1 class="centro">Cadastro de Livros</h1>
            
            <div>
                
                <form action="livro-cadastrar-ok.jsp">
                    <label>Nome:</label><input type="text" name="txtnome" /><br />
                    <label>ISBN</label><input type="text" name="txtisbn" /><br />
                    <label>Preco</label><input type="text" name="txtpreco" /><br />
                    <label>Autor</label><input type="text" name="txtautor" /><br />
		    <label>Editora</label><input type="text" name="txteditora" /><br />
		    <label>NºExemplares</label><input type="text" name="txtnumexemplares" /><br />
                    <input type="reset" value="Limpar" />
                    <input type="submit" value="Cadastrar" />
                </form>
            </div>
        </div>



    </body>
</html>