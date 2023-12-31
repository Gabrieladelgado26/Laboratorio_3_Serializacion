package com.mycompany.mundo;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.PrintWriter;
import java.util.ArrayList;

public class Archivos {

    /**
     * Metodo de escribirArchivo para persistencia (Cuando se agregue un video se guardara en el archivo videosRegistrados)
     * @param misVideos
     * @throws FileNotFoundException Excepción cuando el archivo no existe
     */
    public static void escribirArchivo(ArrayList<Video> misVideos) throws FileNotFoundException {
//
//        // Creando el archivo
//        File archivo = new File("videosRegistrados.txt");
//
//        // Pluma para escribir en el archivo
//        try (PrintWriter pluma = new PrintWriter(archivo)) {
//            // Iterar a través del listado de videos y escribir sus datos en el archivo
//            for (Video v : misVideos) {
//                // Formatear los datos del video en una cadena de caracteres y escribir en el archivo
//                String cadenaCaracteres = v.getIdVideo() + "," + v.getTitulo() + "," + v.getAutor() + "," + v.getAnio() + ","
//                                          + v.getCategoria() + "," + v.getUrl() + "," + v.getLetra();
//                pluma.println(cadenaCaracteres);
//            }
//        // Atrapa excepciones en caso de encontrar el archivo
//        } catch (FileNotFoundException e) {
//            System.out.println(e.getMessage());
//        }

        // Crear el archivo de salida
        try (ObjectOutputStream oos = new ObjectOutputStream(new FileOutputStream("videosRegistrados.data"))) {
            // Escribir la lista de objetos Video en el archivo
            oos.writeObject(misVideos);
        } catch (IOException e) {
            System.out.println("Error al escribir el archivo: " + e.getMessage());
        }
    }

    /**
     * Metodo de leerArchivo para persistencia (Cuando inicie el progrmama leera el archivo videosRegistrados y los mostrara en el listado de videos)
     * @param misVideos
     * @throws FileNotFoundException Excepción cuando el archivo no existe
     * @throws IOException Excepción cuando hay problemas para leer el archivo 
     */
    public static void leerArchivo(ArrayList<Video> misVideos) throws FileNotFoundException, IOException {

        // Crea el archivo
//        File archivo = new File("videosRegistrados.txt");
//        System.out.println("archivo" + archivo.length());
//        
//        // Si el archivo no esta vacio entra a leerlo
//        if (archivo.length() > 0) {
//            try (FileReader leerArchivo = new FileReader(archivo); 
//                BufferedReader lector = new BufferedReader(leerArchivo)) {
//
//                String cadenaCaracteres;
//                while ((cadenaCaracteres = lector.readLine()) != null) {
//                    String[] datos = cadenaCaracteres.split(",");
//
//                    String idVideo = datos[0].trim();
//                    String titulo = datos[1].trim();
//                    String autor = datos[2].trim();
//                    String anio = datos[3].trim();
//                    String categoria = datos[4].trim();
//                    String url = datos[5].trim();
//                    String letra = datos[6].trim();
//
//                    Video video = new Video(Integer.parseInt(idVideo), titulo, autor, anio, categoria, url, letra);
//                    misVideos.add(video);
//                }
//            // Atrapa excepciones en caso de no encontrar el archivo
//            } catch (FileNotFoundException e) {
//                System.out.println("ERROR " + e.getMessage());
//            // Atrapa excepciones en caso de tener problemas para leer el archivo
//            } catch (IOException e) {
//                System.out.println("ERROR " + e.getMessage());
//            }
//        }

            try (ObjectInputStream ois = new ObjectInputStream(new FileInputStream("videosRegistrados.data"))) {
                // Leer la lista de objetos Video desde el archivo binario
                misVideos = (ArrayList<Video>) ois.readObject();
            } catch (FileNotFoundException e) {
                System.out.println(e.getMessage());
            } catch (IOException | ClassNotFoundException e) {
                System.out.println("Error al leer el archivo: " + e.getMessage());
            }
    }

    /**
     * Sobrecarga o polimorfismo (Metodo leerArchivo de tipo ArrayList<Video>. Cuando inicie el programa leera el archivo videosRegistrados y los mostrara en el listado de videos)
     * @return Array List misVideos (ArrayList donde estan guardados los videos agregados)
     * @throws FileNotFoundException Excepción cuando el archivo no existe
     * @throws IOException Excepción cuando hay problemas para leer el archivo
     */
    public static ArrayList<Video> leerArchivo() throws FileNotFoundException, IOException {

        // ArrayList que almacena el listado de videos
        ArrayList<Video> misVideos = new ArrayList<Video>();
//
//        // Creamos el archivo en una ruta especifica
//        File archivo = new File("videosRegistrados.txt");
//        System.out.println(archivo.length());
//        if (archivo.length() > 10) {
//            try (FileReader leerArchivo = new FileReader(archivo); 
//                BufferedReader lector = new BufferedReader(leerArchivo)) {
//
//                String cadenaCaracteres;
//                while ((cadenaCaracteres = lector.readLine()) != null) {
//                    String[] datos = cadenaCaracteres.split(",");
//
//                    String idVideo = datos[0].trim();
//                    String titulo = datos[1].trim();
//                    String autor = datos[2].trim();
//                    String anio = datos[3].trim();
//                    String categoria = datos[4].trim();
//                    String url = datos[5].trim();
//                    String letra = datos[6].trim();
//
//                    Video video = new Video(Integer.parseInt(idVideo), titulo, autor, anio, categoria, url, letra);
//                    misVideos.add(video);
//                }
//            // Atrapa excepciones en caso de no encontrar el archivo
//            } catch (FileNotFoundException e) {
//                System.out.println("ERROR " + e.getMessage());
//            // Atrapa excepciones en caso de tener problemas para leer el archivo
//            } catch (IOException e) {
//                System.out.println("ERROR " + e.getMessage());
//            }
//        }
//        // Retorna el ArrayList misVideos
//        return misVideos;
            
            try (ObjectInputStream ois = new ObjectInputStream(new FileInputStream("videosRegistrados.data"))) {
            // Leer la lista de objetos Video desde el archivo binario
            misVideos = (ArrayList<Video>) ois.readObject();
            } catch (FileNotFoundException e) {
                System.out.println(e.getMessage());
            } catch (IOException | ClassNotFoundException e) {
                System.out.println("Error al leer el archivo: " + e.getMessage());
            }
        return misVideos;
    }
}