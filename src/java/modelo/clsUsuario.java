/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

/**
 *
 * @author aleja
 */
public class clsUsuario {
  
    // Definición de Atributos
    private String nombre;
    private int edad;

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
    
    // Definición de los constructores
    public clsUsuario(){
        
    }
    
    public clsUsuario(String nombre, int edad){
        this.nombre = nombre;
        this.edad = edad;
    }
    
    /* Método para definir Procesos
     * (Conexión a BD, validaciones, etc.)
    */
    
}
