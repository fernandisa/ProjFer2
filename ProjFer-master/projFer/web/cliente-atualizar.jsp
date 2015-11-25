<%@include file="cabecalho.jsp"%>
        <div>
            <h1 class="centro">Atualização de Alunos</h1>
            
            <div>
                
                <form action="alunos-atualizar-ok.jsp">
                    <label>Nome:</label><input type="text" name="txtnome" /><br />
                    <label>CPF</label><input type="text" name="txtcpf" /><br />
                    <label>Endereco</label><input type="text"name ="txtendereco" /><br />
                    <label>Telefone</label><input type="text"name="txttelefone" /><br />
                    <input type="reset" value="Limpar" />
                    <input type="submit" value="Atualizar" />
                </form>
            </div>
        </div>



    </body>
</html>