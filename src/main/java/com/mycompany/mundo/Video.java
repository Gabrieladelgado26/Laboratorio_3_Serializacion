package com.mycompany.mundo;

import java.io.Serializable;

public class Video implements Serializable {
    
    // Atributos de la clase Video
    private int idVideo;
    private String titulo;
    private String autor;
    private String anio;
    private String Categoria;
    private String url;
    private String letra;

    // Constructor vacio
    public Video() {
    }

    // Constructor con los atributos de la clase Video
    public Video(int idVideo, String titulo, String autor, String anio, String Categoria, String url, String letra) {
        this.idVideo = idVideo;
        this.titulo = titulo;
        this.autor = autor;
        this.anio = anio;
        this.Categoria = Categoria;
        this.url = url;
        this.letra = letra;
    }
    
    /**
     * Getter and Setter
     */
    
    // get del atributo idVideo
    public int getIdVideo() {
        return idVideo;
    }

    // set del atributo idVideo
    public void setIdVideo(int idVideo) {
        this.idVideo = idVideo;
    }

    // get del atributo titulo
    public String getTitulo() {
        return titulo;
    }

    // set del atributo titulo
    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    // get del atributo autor
    public String getAutor() {
        return autor;
    }

    // set del atributo autor
    public void setAutor(String autor) {
        this.autor = autor;
    }

    // get del atributo anio
    public String getAnio() {
        return anio;
    }

    // set del atributo anio
    public void setAnio(String anio) {
        this.anio = anio;
    }

    // get del atributo categoria
    public String getCategoria() {
        return Categoria;
    }

    // set del atributo categoria
    public void setCategoria(String Categoria) {
        this.Categoria = Categoria;
    }

    // get del atributo url
    public String getUrl() {
        return url;
    }

    // set del atributo url
    public void setUrl(String url) {
        this.url = url;
    }

    // get del atributo letra
    public String getLetra() {
        return letra;
    }

    // set del atributo letra
    public void setLetra(String letra) {
        this.letra = letra;
    }   
}