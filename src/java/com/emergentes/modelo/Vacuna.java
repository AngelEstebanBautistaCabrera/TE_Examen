package com.emergentes.modelo;

public class Vacuna {
    private int Id;
    private String Nombre;
    private double Peso;
    private double Talla;
    private String Vacuna;

    public Vacuna() {
        Id = 0;
        Nombre = "";
        Peso = 0;
        Talla = 0;
        Vacuna = "";
    }

    public Vacuna(int Id, String Nombre, double Peso, double Talla, String Vacuna) {
        this.Id = Id;
        this.Nombre = Nombre;
        this.Peso = Peso;
        this.Talla = Talla;
        this.Vacuna = Vacuna;
    }

    public int getId() {
        return Id;
    }

    public void setId(int Id) {
        this.Id = Id;
    }

    public String getNombre() {
        return Nombre;
    }

    public void setNombre(String Nombre) {
        this.Nombre = Nombre;
    }

    public double getPeso() {
        return Peso;
    }

    public void setPeso(double Peso) {
        this.Peso = Peso;
    }

    public double getTalla() {
        return Talla;
    }

    public void setTalla(double Talla) {
        this.Talla = Talla;
    }

    public String getVacuna() {
        return Vacuna;
    }

    public void setVacuna(String Vacuna) {
        this.Vacuna = Vacuna;
    }
}
