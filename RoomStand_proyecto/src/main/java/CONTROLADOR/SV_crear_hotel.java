
package CONTROLADOR;

import MODELO.hotel.crear_hotel;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


@WebServlet(urlPatterns = {"/SV_crear_hotel"})
public class SV_crear_hotel extends HttpServlet {

 
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String nombre = request.getParameter("nombre");
        String telefono = request.getParameter("telefono");
        String pais = request.getParameter("pais");
        String id=request.getParameter("id");
        String ciudad=request.getParameter("ciudad");
        String direccion=request.getParameter("ciudad");
        String tipo=request.getParameter("id");
        
        crear_hotel hotel_crear =new crear_hotel();
        
        boolean hotel_creado=hotel_crear.crear_hotel(nombre,  direccion, pais, ciudad, tipo, telefono, direccion, Integer.parseInt(id));
        
        if(hotel_creado){
        response.setContentType("text/html");
        response.getWriter().write("<html><body>");
        response.getWriter().write("<script type='text/javascript'>");
        response.getWriter().write("alert('Hotel creado con exito');");
        response.getWriter().write("window.location.href = 'index.jsp';");
        response.getWriter().write("</script>");
        response.getWriter().write("</body></html>");
        }
        
        else{
        response.setContentType("text/html");
        response.getWriter().write("<html><body>");
        response.getWriter().write("<script type='text/javascript'>");
        response.getWriter().write("alert('Error al crear el hotel');");
        response.getWriter().write("window.location.href = 'index.jsp';");
        response.getWriter().write("</script>");
        response.getWriter().write("</body></html>");
        }
    }

   
    

}
