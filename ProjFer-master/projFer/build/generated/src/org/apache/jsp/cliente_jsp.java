package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import modelo.Cliente;
import java.util.List;
import dao.ClienteDAO;

public final class cliente_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/cabecalho.jsp");
  }

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta charset=\"UTF-8\">\n");
      out.write("        <title>Gerenciamento de Compras de Livros</title>\n");
      out.write("        <link rel=\"stylesheet\" href=\"estilo.css\" />\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <h1>Sistema de Controle da Livraria</h1>\n");
      out.write("        <div class=\"centro\">Usuário: xxxxx - <a href=\"#\">Sair</a>\n");
      out.write("            <hr />\n");
      out.write("            <div><a href=\"cliente.jsp\">Cliente</a> - <a href=\"compra.jsp\">Compra</a> - <a href=\"livro.jsp\">Livro</a></div>\n");
      out.write("        </div>\n");
      out.write('\n');

ClienteDAO dao = new ClienteDAO();
List<Cliente> lista;
//Verificar se veio algo do filtro, 
//se vier eu filtro pro nome
//caso contrário eu trago todos os clientes
if(request.getParameter("txtFiltro")!= null && request.getParameter("txtFiltro")!= "")
{
    String txtFiltro = request.getParameter("txtFiltro");
     lista = dao.listar(txtFiltro);
  
}
else
{
    lista = dao.listar();
}

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("        <div>\n");
      out.write("            <h1 class=\"centro\">CLiente</h1>\n");
      out.write("            \n");
      out.write("            <div>\n");
      out.write("                +<a href=\"cliente-cadastrar.jsp\">Novo CLiente</a><br />\n");
      out.write("                <form action=\"cliente.jsp\" method=\"post\">\n");
      out.write("                    <input type=\"text\" name=\"txtFiltro\" />\n");
      out.write("                    <input type=\"submit\" value=\"Pesquisar\"/><br />\n");
      out.write("                </form>\n");
      out.write("                   \n");
      out.write("                       <table>\n");
      out.write("                            <tr>\n");
      out.write("                                <th>CPF</th>\n");
      out.write("                                <th>Nome</th>\n");
      out.write("                                <th>Endereco</th>\n");
      out.write("                                <th>Telefone</th>\n");
      out.write("                           \n");
      out.write("                          \n");
      out.write("                            </tr>\n");
      out.write("                            ");

                            for(Cliente item:lista)
                            {
                            
      out.write("\n");
      out.write("                            <tr>\n");
      out.write("                                <td>");
      out.print(item.getCpf());
      out.write("</td>\n");
      out.write("                                <td>");
      out.print(item.getNome());
      out.write("</td>\n");
      out.write("                                <td>");
      out.print(item.getEndereco());
      out.write("</td>\n");
      out.write("                                <td>");
      out.print(item.getTelefone());
      out.write("</td>\n");
      out.write("\n");
      out.write("                                <td>\n");
      out.write("                                    <a href=\"cliente-atualizar.jsp?cpf=");
      out.print(item.getCpf());
      out.write("\">Editar</a>\n");
      out.write("                                    <a href=\"cliente-excluir-ok.jsp?cpf=");
      out.print(item.getCpf());
      out.write("\">Excluir</a>\n");
      out.write("                                </td>\n");
      out.write("                           \n");
      out.write("                            </tr>\n");
      out.write("                            ");

                            }
                            
      out.write("\n");
      out.write("                    </table>\n");
      out.write("                  \n");
      out.write("                    \n");
      out.write("                \n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
