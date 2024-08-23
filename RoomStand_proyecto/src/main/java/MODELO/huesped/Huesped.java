
package MODELO.huesped;



public class Huesped {
    
    
    private String nombre;
    private String telefono;
    private String pais;
    private String email;
    private int id;
    private String password;
    
    public Huesped(int id, String nombre, String telefono, String pais, String email, String password){
        
        this.id=id;
        this.telefono=telefono;
        this.pais=pais;
        this.email=email;
        this.id=id;
        this.password=password;
    
    }
    
    
    //nombre
    public String getHUnombre(){
    return nombre;
    }
    
    public void setHUnombre(String nombre){
    this.nombre=nombre;
    }
    
    
    //telefono
    public String getHUtelefono(){
    return telefono;
    }
    
    public void setHUtelefono(String telefono){
    this.telefono=telefono;
    }
    
    
    //pais
    public String getHUpais(){
    return pais;
    }
    
    public void setHUpais(String pais){
    this.pais=pais;
    }
    
    
    //email
    public String getHUemail(){
    return email;
    }
    
    public void setHUemail(String email){
    this.email=email;
    }
    
    
    //id
    public int getHUid(){
    return id;
    }
    
    public void setHUid(int id){
    this.id=id;
    }
    
    
    //password
    public String getHUpassword(){
    return password;
    }
    
    public void setHUpassword(String password){
    this.password=password;
    }
}
