<%@include file="cabecalho.jsp"%>
        <div>
            <h1 class="centro">Atualização de Livros</h1>
            
            <div>
                
                <form action="livro-atualizar-ok.jsp">
                    
                    <label>Nome:</label><input type="text" /><br />
                    <label>ISBN</label><input type="text" /><br />
                    <label>Preco</label><input type="text" /><br />
                    <label>Autor</label><input type="text" /><br />
                    <label>Editora</label><input type="text" /><br />
                    <label>NºExemplares</label><input type="text" /><br />
                    <input type="submit" value="Atualizar" />
                </form>
            </div>
        </div>



    </body>
</html>