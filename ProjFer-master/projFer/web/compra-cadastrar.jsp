<%@include file="cabecalho.jsp"%>
        <div>
            <h1 class="centro">Cadastro de Compras</h1>
            
            <div>
                
                <form action="cliente-cadastrar-ok.jsp" method="post">
                    
                    <label>Cupom Fiscal:</label><input type="text" name="txtIdcompra" /><br />
                    <label>Preco da Venda</label><input type="text" name="txtPrecovenda" /><br />
                    <label>Data Hora</label><input type="date" name ="txtDatahora" /><br />
                    <label>Quantidade</label><input type="text" name="txtQntd" /><br />
                    <label>CPF do comprador</label><input type="text" name="txtQntd" /><br />
                    <label>ISBN do livro</label><input type="text" name="txtIsbn" /><br />
                    <input type="reset" value="Limpar" />
                    <input type="submit" value="Cadastrar" />
                </form>
            </div>
        </div>



    </body>
</html>
