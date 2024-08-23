package MODELO.huesped;

import conexion.DBconexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DAO_loggin_huesped {

    private DBconexion conexion;

    public DAO_loggin_huesped() {
        this.conexion = new DBconexion();
    }

    public Huesped validategethuesped(String email, String password) {

        Huesped huesped = null;
        String sqlhuesped = "SELECT email, password FROM huespedtb WHERE email=? AND password=?";

        try (Connection cx = conexion.Conectar();
                PreparedStatement ps = cx.prepareStatement(sqlhuesped)) {

            ps.setString(1, email);
            ps.setString(2, password);

            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {
                    int id_huesped = rs.getInt("num_id");
                    String nombre_huesped = rs.getString("nombre");
                    String telefono_huesped = rs.getString("tel_clie");
                    String pais_huesped = rs.getString("nacionalidad");
                    String email_huesped = rs.getString("email");
                    String password_huesped = rs.getString("password");

                    huesped = new Huesped(id_huesped, nombre_huesped, telefono_huesped, pais_huesped, email_huesped, password_huesped);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return huesped;
    }
}