package Servlets;

import com.mycompany.mundo.Archivos;
import com.mycompany.mundo.Video;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "SvVideo", urlPatterns = {"/SvVideo"})
public class SvVideo extends HttpServlet {

    // ArrayList que permite guardar la colección de video
    ArrayList <Video> misVideos = new ArrayList <Video>();

    // Con este metodo llamamos al metodo leerArchivo de la clase Archivos
    public SvVideo() throws IOException {
        System.out.println(Archivos.leerArchivo());
        misVideos = Archivos.leerArchivo();
    }
 
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }
    
    /**
     * Metodo doGet que permite recibir el parametro de categoria parra filtar por categoria
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException 
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
//        if(request.getParameter("categoria")!= null){
            // Metodo para filtrar según el genero
            String categoria = request.getParameter("categoria");
            request.setAttribute("categoria", categoria);
            // Redireccionar a la pagina web destino
            request.getRequestDispatcher("Generos.jsp").forward(request, response);
//        }
//        else{
//            String idVideo = request.getParameter("idVideo");
//            System.out.println(idVideo);
////            this.eliminarVideo(idVideo);
////            request.setAttribute("idVideo", idVideo);
////            // Redireccionar a la pagina web destino
////            request.getRequestDispatcher("listarVideo.jsp").forward(request, response);
//        }
    }

    /**
     * Metodo doPost para agregar datos al ArrayList
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException 
     */
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
        Video miVideo = new Video(Integer.parseInt(idVideo), titulo, autor, anio, categoria, url, letra.replace("(\n|\r)", ""));
        
        // Ingresar los datos al objeto
        misVideos.add(miVideo);
        
        Archivos.escribirArchivo(misVideos);
        
        // Agregar el arrayList al objeto de solicitud como atributo
        request.setAttribute("misVideos", misVideos);
        
        // Redireccionar a la pagina web destino
        request.getRequestDispatcher("listarVideo.jsp").forward(request, response);
    }

    /**
     * 
     * @return 
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }
    
//    public void eliminarVideo(String idVideo) throws FileNotFoundException{
//        int c=0;
//        for (Video v : misVideos) {
//            if(v.getIdVideo() == Integer.parseInt(idVideo)){
//                break;
//            }
//            c++;
//        }
//        this.misVideos.remove(c);
//        Archivos.escribirArchivo(this.misVideos);
//    }
}