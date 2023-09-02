
package Servlets;

import com.mycompany.mundo.Video;
import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "SvVideo", urlPatterns = {"/SvVideo"})
public class SvVideo extends HttpServlet {

    // ArrayList que permite guardar la colección de video
    ArrayList <Video> misVideos = new ArrayList <Video>();
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Aqui vienen los datos por POST
        String idVideo = request.getParameter("idVideo");
        String titulo = request.getParameter("titulo");
        String autor = request.getParameter("autor");
        String anio = request.getParameter("anio");
        String categoria = request.getParameter("categoria");
        String url = request.getParameter("url");
        String letra = request.getParameter("letra");

        // Crear un objeto
        Video miVideo = new Video(Integer.parseInt(idVideo), titulo, autor, anio, categoria, url, letra);
        
        // Ingresar los datos al objeto
        misVideos.add(miVideo);
        
        // Agregar el arrayList al objeto de solicitud como atributo
        request.setAttribute("misVideos", misVideos);
        
        // Redireccionar a la pagina web destino
        request.getRequestDispatcher("listarVideo.jsp").forward(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }
}