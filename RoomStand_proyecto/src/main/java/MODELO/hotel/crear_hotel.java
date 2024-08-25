
package MODELO.hotel;

import conexion.DBconexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;


public class crear_hotel {
    
    private DBconexion conexion;
    
    public crear_hotel(){
    
        this.conexion=new DBconexion();
        
    }
    
    public boolean crear_hotel(String nombre, String direccion, String pais, String ciudad, String tipo, String telefono, String servicios, int id){
        String sqlhotel="INSERT INTO `hoteltb` (`id_hotel`, `nombre`, `telefono`, `direc`, `ciudad`, `pais`, `tipo`) VALUES (?, ?, ?, ?, ?, ?, ?);";
        Connection cx=null;
        
        try{
            cx = conexion.Conectar(); // Conectar a la base de datos
            if (cx == null) {
                throw new SQLException("No se pudo establecer conexión con la base de datos."); // Validación para evitar la excepción NullPointerException
            }
             cx.setAutoCommit(false);
             try (PreparedStatement pshotel = cx.prepareStatement(sqlhotel, PreparedStatement.RETURN_GENERATED_KEYS)){
                 
             pshotel.setInt(1, id);
             pshotel.setString(2, nombre);
             pshotel.setString(3, telefono);
             pshotel.setString(4, direccion);
             pshotel.setString(5, ciudad);
             pshotel.setString(6, pais);
             pshotel.setString(7, tipo);
             
             pshotel.executeUpdate();
             }
             
             cx.commit();  // Confirmar la transacción
            return true;
        } catch (SQLException e) {
            e.printStackTrace();
            try {
                if (cx != null) cx.rollback();  // Revertir la transacción en caso de error
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
            return false;
        } finally {
            if (cx != null) {
                try {
                    cx.close(); // Cerrar la conexión
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
             
        }
    }
    
}
