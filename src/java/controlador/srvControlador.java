/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.clsUsuario;

/**
 *
 * @author aleja
 */
public class srvControlador extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        // Definición de los datos recibidos
        String nombre = request.getParameter("txtNombre");
        String edad = request.getParameter("txtEdad");
        String email = request.getParameter("txtEmail");
        
        // Definición de variables de ayuda
        int edadNumero;
        int validacion = 0;
        
        /* 
         *  Validar los datos recibidos
        */
        
        //Validar el nombre
        if(nombre == null || nombre.equals("")) { validacion = 1; sendErrorCode(request, response, validacion); return; } 
        //Validar la edad
        if(edad == null || edad.equals("")) { validacion = 2; sendErrorCode(request, response, validacion); return; }
        
        //Validar que la edad esté entre 0 y 99
        try {
            edadNumero = Integer.parseInt(edad);
            if( !((edadNumero >= 0) && (edadNumero <= 99)) ) { validacion = 3; sendErrorCode(request, response, validacion); return; }
        } catch (NumberFormatException e) {
            validacion = 4; sendErrorCode(request, response, validacion); return;
        }
        
        //Validar el email
        if(email == null || email.equals("")) { validacion = 5; sendErrorCode(request, response, validacion); return; }
        
        //Los datos del usuario son correcots
        if(validacion == 0){
            //Datos recibidos correctos, procesarlos con el Modelo
            clsUsuario persona = new clsUsuario(nombre, edadNumero, email);

            /* 
             *   Enviar el control de ejecución a la vista
             *   Se enviara el objeto persona para manipular sus datos
            */
            sendCorrectData(request, response, persona);
        }
    }
    
    private void sendErrorCode(HttpServletRequest request, HttpServletResponse response, int errorKeyCode) throws ServletException, IOException{
        request.getSession().setAttribute("errorCode", String.valueOf(errorKeyCode));
        request.getRequestDispatcher("jvControlErrores.jsp").forward(request, response);
    }
    
    private void sendCorrectData(HttpServletRequest request, HttpServletResponse response, clsUsuario persona) throws ServletException, IOException{
        request.getSession().setAttribute("datosPersona", persona);
        request.getRequestDispatcher("jvDatosCorrectos.jsp").forward(request, response);
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        try {
            processRequest(request, response);

        } catch (IOException | ServletException ex) {
            Logger.getLogger(srvControlador.class.getName()).
                    log(Level.SEVERE, null, ex);
        }
        
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        try {
            processRequest(request, response);

        } catch (IOException | ServletException ex) {
            Logger.getLogger(srvControlador.class.getName()).
                    log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
