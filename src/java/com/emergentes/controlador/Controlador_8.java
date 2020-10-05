package com.emergentes.controlador;

import com.emergentes.modelo.Nota;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "Controlador_8", urlPatterns = {"/Controlador_8"})
public class Controlador_8 extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int op = Integer.parseInt(request.getParameter("op"));
        int id, pos;
        HttpSession ses = request.getSession();
        ArrayList<Nota> lista = (ArrayList<Nota>) ses.getAttribute("listact");

        //nuevo
        if (op == 1) {
            Nota act = new Nota();
            request.setAttribute("act", act);
            request.getRequestDispatcher("editar_8.jsp").forward(request, response);
        }
        //editar
        if (op == 2) {
            id = Integer.parseInt(request.getParameter("id"));
            pos = buscarPos(request, id);
            Nota act1 = lista.get(pos);
            request.setAttribute("act", act1);
            request.getRequestDispatcher("editar_8.jsp").forward(request, response);
        }
        //eliminar
        if (op == 3) {
            id = Integer.parseInt(request.getParameter("id"));
            pos = buscarPos(request, id);
            lista.remove(pos);
            ses.setAttribute("listact", lista);
            response.sendRedirect("index_8.jsp");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        String hora = request.getParameter("hora");
        int pos;

        String actividad = request.getParameter("actividad");
        String estado = request.getParameter("estado");
        String nuevo = request.getParameter("nuevo");

        Nota act = new Nota();
        act.setId(id);
        act.setHora(hora);
        act.setActividad(actividad);
        act.setEstado(estado);

        HttpSession ses = request.getSession();
        ArrayList<Nota> lista = (ArrayList<Nota>) ses.getAttribute("listact");

        if (nuevo.equals("true")) {
            lista.add(act);
        } else {
            //editar

            //buscar el elemento en la coleccion
            pos = buscarPos(request, id);
            //reemplazar
            lista.set(pos, act);
        }
        response.sendRedirect("index_8.jsp");
    }

    private int buscarPos(HttpServletRequest request, int id) {
        HttpSession ses = request.getSession();
        ArrayList<Nota> lista = (ArrayList<Nota>) ses.getAttribute("listact");

        int i = 0;
        if (lista.size() > 0) {
            while (i < lista.size()) {
                if (lista.get(i).getId() == id) {
                    break;
                } else {
                    i++;
                }
            }
        }
        return i;
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
