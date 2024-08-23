package CONTROLADOR;

import MODELO.huesped.crear_huesped;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/SV_crear_huesped")
public class SV_crear_huesped extends HttpServlet {

@Override
protected void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
    String nombre = request.getParameter("nombre");
    String telefono = request.getParameter("telefono");
    String pais = request.getParameter("pais");
    String email = request.getParameter("email");
    String id = request.getParameter("id");
    String password = request.getParameter("password");

    crear_huesped huesped_crear = new crear_huesped();

    boolean h_creado = huesped_crear.crearhuesped(nombre, telefono, pais, email, Integer.parseInt(id), password);

    if(h_creado){
        response.setContentType("text/html");
        response.getWriter().write("<html><body>");
        response.getWriter().write("<script type='text/javascript'>");
        response.getWriter().write("alert('Cuenta creada exitosamente.');");
        response.getWriter().write("window.location.href = 'index.jsp';");
        response.getWriter().write("</script>");
        response.getWriter().write("</body></html>");
    } else {
        response.setContentType("text/html");
        response.getWriter().write("<html><body>");
        response.getWriter().write("<script type='text/javascript'>");
        response.getWriter().write("alert('Error al crear cuenta');");
        response.getWriter().write("window.location.href = 'index.jsp';");
        response.getWriter().write("</script>");
        response.getWriter().write("</body></html>");
    }
}

}
