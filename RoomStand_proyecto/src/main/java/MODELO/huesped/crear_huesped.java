package MODELO.huesped;

import conexion.DBconexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class crear_huesped {
    private DBconexion conexion;

    // Constructor que inicializa la conexión a la base de datos
    public crear_huesped() {
        this.conexion = new DBconexion();
    }

    // Método para crear un nuevo usuario en la base de datos
    public boolean crearhuesped(String nombre, String telefono, String pais, String email, int id, String password) {
        String sqlhuesped = "INSERT INTO `huespedtb` (`num_id`, `nombre`, `tel_clie`, `nacionalidad`, `email`, `password`) VALUES (?, ?, ?, ?, ?, ?)";

        Connection cx = null;
        try {
            cx = conexion.Conectar(); // Conectar a la base de datos
            if (cx == null) {
                throw new SQLException("No se pudo establecer conexión con la base de datos."); // Validación para evitar la excepción NullPointerException
            }

            cx.setAutoCommit(false);  // Desactivar auto-commit para transacciones

            try (PreparedStatement pshuesped = cx.prepareStatement(sqlhuesped, PreparedStatement.RETURN_GENERATED_KEYS)) {
                // Establecer los parámetros para insertar en tb_usuario
                
                
                pshuesped.setInt(1, id); 
                pshuesped.setString(2, nombre); 
                pshuesped.setString(3, telefono); 
                pshuesped.setString(4, pais); 
                pshuesped.setString(5, email); 
                pshuesped.setString(6, password); 

                // Ejecutar la consulta
                pshuesped.executeUpdate();
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
