package com.mycompany.mundo;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.IOException;
import java.io.ObjectOutputStream;
import java.io.PrintWriter;
import java.nio.file.Paths;
import java.util.ArrayList;
import javax.ws.rs.Path;

public class Archivos {

    /**
     * Metodo escribir archivo para serializacion
     * @param misVideos
     * @throws FileNotFoundException
     * @throws IOException 
     */
    public static void escribirArchivo(ArrayList<Video> misVideos) throws FileNotFoundException, IOException {

        // Creando el archivo
        File archivo = new File("videosAgregad.txt");

        try (FileOutputStream fileOutputStream = new FileOutputStream(archivo);
            ObjectOutputStream objectOutputStream = new ObjectOutputStream(fileOutputStream)) {
            // Serializar y escribir cada objeto Video en el archivo
            for (Video v : misVideos) {
                objectOutputStream.writeObject(v);
            }
        // Atrapa excepciones en caso de encontrar el archivo
        } catch (FileNotFoundException e) {
            System.out.println(e.getMessage());
        }
    }

    /**
     * Metodo de leerArchivo para persistencia
     * @param misVideos
     * @throws FileNotFoundException
     * @throws IOException 
     */
    public static void leerArchivo(ArrayList<Video> misVideos) throws FileNotFoundException, IOException {

        // Crea el archivo
        File archivo = new File("videosAgregad.txt");
        System.out.println("archivo" + archivo.length());
        
        // Si el archivo no esta vacio entra a leerlo
        if (archivo.length() > 0) {
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
            // Atrapa excepciones en caso de no encontrar el archivo
            } catch (FileNotFoundException e) {
                System.out.println("ERROR " + e.getMessage());
            // Atrapa excepciones en caso de tener problemas para leer el archivo
            } catch (IOException e) {
                System.out.println("ERROR " + e.getMessage());
            }
        }
    }
    
    /**
     * Sobrecarga o polimorfismo
     * @return
     * @throws FileNotFoundException
     * @throws IOException 
     */
    public static ArrayList<Video> leerArchivo() throws FileNotFoundException, IOException {

        // ArrayList que almacena el listado de videos
        ArrayList<Video> misVideos = new ArrayList<Video>();

        // Creamos el archivo en una ruta especifica
        File archivo = new File("videosAgregad.txt");
        System.out.println(archivo.length());
        if (archivo.length() > 10) {
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
            // Atrapa excepciones en caso de no encontrar el archivo
            } catch (FileNotFoundException e) {
                System.out.println("ERROR " + e.getMessage());
            // Atrapa excepciones en caso de tener problemas para leer el archivo
            } catch (IOException e) {
                System.out.println("ERROR " + e.getMessage());
            }
        }
        // Retorna el ArrayList misVideos
        return misVideos;
    }
}
