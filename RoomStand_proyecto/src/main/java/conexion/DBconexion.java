
package conexion;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class DBconexion {
    
    String bd = "roomstand";  // Nombre de la base de datos
    String url = "jdbc:mysql://localhost:3306/";  // URL de conexión a MySQL, especificando el puerto 3306
    String user = "root";  // Usuario de la base de datos
    String password = "";  // Contraseña del usuario de la base de datos
    String driver = "com.mysql.cj.jdbc.Driver";  // Controlador JDBC para MySQL
    Connection cx;  // Objeto para gestionar la conexión a la base de datos

    public Connection Conectar() {  // Método para establecer la conexión con la base de datos
        try {
            Class.forName(driver);  // Carga el controlador JDBC para MySQL
            cx = DriverManager.getConnection(url + bd, user, password);  // Establece la conexión con la base de datos usando la URL, usuario y contraseña
            System.out.println("Conexion exitosa " + bd);  // Mensaje de éxito si la conexión es establecida
        } catch (ClassNotFoundException | SQLException ex) {  // Captura errores si el controlador no se encuentra o la conexión falla
            System.out.println("Conexion fallida " + bd);  // Mensaje de error si la conexión falla
            Logger.getLogger(DBconexion.class.getName()).log(Level.SEVERE, null, ex);  // Registra el error en los logs
        }
        return cx;  // Devuelve la conexión a la base de datos
    }

    public void desconectar() {  // Método para cerrar la conexión con la base de datos
        if (cx != null) {  // Verifica si la conexión no es nula
            try {
                cx.close();  // Cierra la conexión a la base de datos
                System.out.println("Conexion cerrada " + bd);  // Mensaje de confirmación de que la conexión fue cerrada
            } catch (SQLException ex) {  // Captura errores si la conexión no puede ser cerrada
                Logger.getLogger(DBconexion.class.getName()).log(Level.SEVERE, null, ex);  // Registra el error en los logs
            }
        }
    }

    public static void main(String[] args) {  // Método principal para ejecutar la clase
        DBconexion conexion = new DBconexion();  // Crea una instancia de Conexiondb
        conexion.Conectar();  // Llama al método Conectar para establecer la conexión con la base de datos
    }
}
