
package modelo;

/**
 *  Clase: clsUsuario
 *  Atributos:
 *            Nombre (String)
 *            edad (int)
 * 
 * @author Jonathan Alejandro Sánchez Alcántara
 */
public class clsUsuario {
  
    // Definición de Atributos
    private String nombre;
    private int edad;
    private String email;

    /*
        Definicipin de los Métodos
        Propiedades get/set
    */
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
    
    public String getNombre() {
        return nombre;
    }
    
    public void setEdad(int edad) {
        this.edad = edad;
    }

    public int getEdad() {
        return edad;
    }
    
    public void setEmail(String email) {
        this.email = email;
    }

    public String getEmail() {
        return email;
    }
    
    // Definición de los constructores
    public clsUsuario(){
        
    }
    
    public clsUsuario(String nombre, int edad, String email){
        this.nombre = nombre;
        this.edad = edad;
        this.email = email;
    }
    
    /* Método para definir Procesos
     * (Conexión a BD, validaciones, etc.)
    */
    
}
