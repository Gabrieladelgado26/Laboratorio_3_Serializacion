
package com.mycompany.mundo;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

public class Archivos {
    
    public static void escribirArchivo(ArrayList<Video> misVideos) throws FileNotFoundException {

        File archivo = new File("C:\\Users\\INES CHAR\\Desktop\\Universidad\\Cuarto semestre\\Estructura de datos I\\Serializacion\\src\\main\\java\\data\\videosAgregados.txt");

        try (PrintWriter pluma = new PrintWriter(archivo)) {
            // Iterar a través de la lista de alumnos y escribir sus datos en el archivo
            for (Video v : misVideos) {
                // Formatear los datos del alumno en una línea y escribir en el archivo
                String cadenaCaracteres = v.getIdVideo() + "," + v.getTitulo() + "," + v.getAutor() + "," + v.getAnio() + ","
                                          + v.getCategoria() + "," + v.getUrl() + "," + v.getLetra();
                pluma.println(cadenaCaracteres);
            }
        } catch (FileNotFoundException e) {
            System.out.println(e.getMessage());
        }
    }
    
    public static void leerArchivo(ArrayList<Video> misVideos) throws FileNotFoundException, IOException {

        File archivo = new File("C:\\Users\\INES CHAR\\Desktop\\Universidad\\Cuarto semestre\\Estructura de datos I\\Serializacion\\src\\main\\java\\data\\videosAgregados.txt");
        System.out.println("archivo"+archivo.length());
        if(archivo.length() > 0){
        try (FileReader leerArchivo = new FileReader(archivo);
             BufferedReader lector = new BufferedReader(leerArchivo)) {

            String cadenaCaracteres;
               while ((cadenaCaracteres = lector.readLine()) != null) {
                String[] datos = cadenaCaracteres.split(",");
                
                String idVideo = datos[0].trim();
                String titulo = datos[1].trim();
                String autor = datos[2].trim();
                String anio = datos[3].trim();
                String categoria = datos[4].trim();
                String url = datos[5].trim();
                String letra = datos[6].trim();

                Video video = new Video(Integer.parseInt(idVideo), titulo, autor, anio, categoria, url, letra);
                misVideos.add(video);
            }
            
        } catch (FileNotFoundException e) {
            System.out.println("ERROR " + e.getMessage());
        } catch (IOException e) {
            System.out.println("ERROR " + e.getMessage());
        }
        }
    }
    
    // Sobrecarga o polimorfismo
    public static ArrayList<Video> leerArchivo() throws FileNotFoundException, IOException {

        ArrayList <Video> misVideos = new ArrayList <Video>();
        
        File archivo = new File("C:\\Users\\INES CHAR\\Desktop\\Universidad\\Cuarto semestre\\Estructura de datos I\\Serializacion\\src\\main\\java\\data\\videosAgregados.txt");
        System.out.println(archivo.length());
        if(archivo.length() > 10){
        try (FileReader leerArchivo = new FileReader(archivo);
             BufferedReader lector = new BufferedReader(leerArchivo)) {

            String cadenaCaracteres;
               while ((cadenaCaracteres = lector.readLine()) != null) {
                String[] datos = cadenaCaracteres.split(",");
                
                String idVideo = datos[0].trim();
                String titulo = datos[1].trim();
                String autor = datos[2].trim();
                String anio = datos[3].trim();
                String categoria = datos[4].trim();
                String url = datos[5].trim();
                String letra = datos[6].trim();

                Video video = new Video(Integer.parseInt(idVideo), titulo, autor, anio, categoria, url, letra);
                misVideos.add(video);
            }
            
        } catch (FileNotFoundException e) {
            System.out.println("ERROR " + e.getMessage());
        } catch (IOException e) {
            System.out.println("ERROR " + e.getMessage());
        }
        }
        
        return misVideos;
    }
}