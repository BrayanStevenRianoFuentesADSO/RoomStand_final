
package CONTROLADOR;

import MODELO.propietario.crear_propietario;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/SV_crear_propietario")
public class SV_crear_propietario extends HttpServlet {

            
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String nombre = request.getParameter("nombre");
        String telefono = request.getParameter("telefono");
        String email = request.getParameter("email");
        String id = request.getParameter("id");
        String password = request.getParameter("password");
        
        System.out.println("Nombre: " + nombre);
        System.out.println("Teléfono: " + telefono);
        System.out.println("Email: " + email);
        System.out.println("ID: " + id);
        System.out.println("Contraseña: " + password);
        
        
        crear_propietario propiet_crear = new crear_propietario();
        
        boolean p_creado = propiet_crear.crearpropietario(nombre, telefono, email, Integer.parseInt(id), password);

    if(p_creado){
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

    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
