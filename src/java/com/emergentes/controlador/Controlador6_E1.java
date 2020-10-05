package com.emergentes.controlador;

import com.emergentes.modelo.Persona;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "Controlador6_E1", urlPatterns = {"/Controlador6_E1"})
public class Controlador6_E1 extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String nombre = request.getParameter("nombre");
        String sexo = request.getParameter("sexo");
        int telefono = Integer.parseInt(request.getParameter("telefono"));
        String correo = request.getParameter("correo");
        
        Persona obj1 = new Persona();
        
        obj1.setNombre(nombre);
        obj1.setSexo(sexo);
        obj1.setTelefono(telefono);
        obj1.setCorreo(correo);
        
        request.setAttribute("datos", obj1);
        
        request.getRequestDispatcher("salida6_E1.jsp").forward(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
