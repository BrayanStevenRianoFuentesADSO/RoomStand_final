
    package MODELO.propietario;

    import conexion.DBconexion;
    import java.sql.Connection;
    import java.sql.PreparedStatement;
    import java.sql.SQLException;


    public class crear_propietario {
        private DBconexion conexion;

        public crear_propietario(){
        this.conexion = new DBconexion();
        }

        public boolean crearpropietario(String nombre, String telefono, String email, int id, String password) {
            String sqlpropietario = "INSERT INTO `propietariotb` (`id_propiet`, `nombre`, `email`, `password`, `tel_propiet`) VALUES (?, ?, ?, ?, ?)";

            Connection cx = null;
            try {
                cx = conexion.Conectar(); // Conectar a la base de datos
                if (cx == null) {
                    throw new SQLException("No se pudo establecer conexión con la base de datos."); // Validación para evitar la excepción NullPointerException
                }

                cx.setAutoCommit(false);  // Desactivar auto-commit para transacciones

                try (PreparedStatement pspropiet = cx.prepareStatement(sqlpropietario, PreparedStatement.RETURN_GENERATED_KEYS)) {
                    // Establecer los parámetros para insertar en tb_usuario
                    pspropiet.setInt(1, id); 
                    pspropiet.setString(2, nombre); 
                    pspropiet.setString(3, email); 
                    pspropiet.setString(4, password); 
                    pspropiet.setString(5, telefono);

                    // Ejecutar la consulta
                    pspropiet.executeUpdate();
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
