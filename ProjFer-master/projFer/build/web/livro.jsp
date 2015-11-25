<%@include file="cabecalho.jsp"%>
        <div>
            <h1 class="centro">Livros</h1>
            
            <div>
                +<a href="livro-cadastrar.jsp">Novo Livro</a><br />
                <form>
                    <input type="text" />
                    <input type="submit" value="Pesquisar"/><br />
                    <table>
                        <tr>
                            <th>ISBN</th>
                            <th>Nome</th>
                            <th>Preco</th>
                            <th>Autor</th>
                            <th>Editora</th>
                            <th>NºExemplares</th>
                            
                            
                            
                        </tr>
                        <tr>
                            <td>978-85-98078-17-5</td>
                            <td>A menina que roubava livros</td>
                            <td>36,90</td>
                            <td>Markus Zusak</td>
                            <td>Intrínseca</td>
                            <td>10</td>
                            <td><a href="livro-editar.jsp?isbn=123">Editar</a>
                                <a href="livro-excluir-ok.jsp?isbn=978-85-98078-17-5">Excluir</a>
                            </td>
                            
                        </tr>
                        <tr>
                            <td>978-85-99296-61-5</td>
                            <td>Praticamente Inofensiva (O Mochileiro das Galáxias)</td>
                            <td>10,90</td>
                            <td>Douglas Adams</td>
                            <td>Arqueiro</td>
                            <td>5</td>
			    <td><a href="professres-editar.jsp">Editar</a>
                                <a href="professores-excluir-ok.jsp?isbn=978-85-99296-61-5">Excluir</a>
                            </td>
                            
                        </tr>
                        <tr>
                            <td>85-7542-047-X</td>
                            <td>Não leve a vida tão à sério</td>
                            <td>14,90</td>
                            <td>Hugh Prather</td>
                            <td>Sextante</td>
                            <td>2</td>
                            <td><a href="professres-editar.jsp">Editar</a>
                                <a href="professores-excluir-ok.jsp?isbn=85-7542-047-X">Excluir</a>
                            </td>
                            
                        </tr>
                        <tr>
                            <td>978-85-422-0008-9</td>
                            <td>O Colecionador de Lágrimas: Holocausto Nunca Mais</td>
                            <td>20,00</td>
                            <td>Augusto Cury</td>
                            <td>Planeta do Brasil</td>
                            <td>3</td>
                            <td><a href="professres-editar.jsp">Editar</a>
                                <a href="professores-excluir.jsp">Excluir</a>
                            </td>
                            
                        </tr>

			<tr>
                            <td>978-85-8163-221-6</td>
                            <td>Bruxos e Bruxas</td>
                            <td>31,40</td>
                            <td>James Patterson</td>
                            <td>Novo Conceito</td>
                            <td>4</td>
                            <td><a href="professres-editar.jsp">Editar</a>
                                <a href="professores-excluir-ok.jsp?isbn=85-7542-047-X">Excluir</a>
                            </td>
                            
                        </tr>

                    </table>
                    
                </form>
            </div>
        </div>
    </body>
</html>