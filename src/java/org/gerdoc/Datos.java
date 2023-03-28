package org.gerdoc;

import java.io.Serializable;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
/**
 *
 * @author alumno
 */
public class Datos implements Serializable {

    private String Cliente;
    private int TiempoVendido;
    private String PoderAdquirido;
    private String Contraseña;
    private String FechadeAdquicision;
    private String Evidencia;

    public String getCliente() {
        return Cliente;
    }

    public void setCliente(String Cliente) {
        this.Cliente = Cliente;
    }

    public int getTiempoVendido() {
        return TiempoVendido;
    }

    public void setTiempoVendido(int TiempoVendido) {
        this.TiempoVendido = TiempoVendido;
    }

    public String getPoderAdquirido() {
        return PoderAdquirido;
    }

    public void setPoderAdquirido(String PoderAdquirido) {
        this.PoderAdquirido = PoderAdquirido;
    }

    public String getContraseña() {
        return Contraseña;
    }

    public void setContraseña(String Contraseña) {
        this.Contraseña = Contraseña;
    }

    public String getFechadeAdquicision() {
        return FechadeAdquicision;
    }

    public void setFechadeAdquicision(String FechadeAdquicision) {
        this.FechadeAdquicision = FechadeAdquicision;
    }

    public String getEvidencia() {
        return Evidencia;
    }

    public void setEvidencia(String Evidencia) {
        this.Evidencia = Evidencia;
    }
}
