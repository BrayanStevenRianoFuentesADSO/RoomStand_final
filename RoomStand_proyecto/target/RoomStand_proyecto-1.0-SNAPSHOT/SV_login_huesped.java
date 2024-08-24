
package CONTROLADOR;

import MODELO.huesped.DAO_loggin_huesped;
import MODELO.huesped.Huesped;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;


@WebServlet("/SV_login_huesped")
public class SV_login_huesped extends HttpServlet {

    
    private static final long serialVersionUID = 1L;

  
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         
        DAO_loggin_huesped daohuesped = new DAO_loggin_huesped();
                
        String email = request.getParameter("email");  
        String password = request.getParameter("password");
       
        Huesped huesped=daohuesped.validategethuesped(email, password);
        
        if(huesped !=null){
            
        HttpSession sesion = request.getSession();
       
        sesion.setAttribute("email", email);
        sesion.setAttribute("password", password);
        sesion.setAttribute("nombre", huesped.getHUnombre());
        sesion.setAttribute("tel_clie", huesped.getHUtelefono());
        sesion.setAttribute("nacionalidad", huesped.getHUpais());
        sesion.setAttribute("num_id", huesped.getHUid());
        response.sendRedirect("registro_huesped.jsp");
        }
        
        else{
            response.sendRedirect("index.jsp?error=invalid_credentials");
        }
    }

     @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String action =request.getParameter("action");
        
        if("logout".equals(action)){
        
        HttpSession session = request.getSession();
            session.invalidate();
            response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1.
            response.setHeader("Pragma", "no-cache"); // HTTP 1.0.
            response.setDateHeader("Expires", 0); // Proxies.
            response.sendRedirect("info_habitacion.jsp");
            
            
            
        }
     
        
    }
    

}
