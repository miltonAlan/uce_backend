-- Consola administracion
http://localhost:4848/common/index.jsf
admuser/admuser

Nombre del pool: 'uce_pool'
Resource type: javax.sql.DataSource

----------------------------
postgres
Superusuario password: admuser/admuser
puerto: 5432
Database name: 'uce'




-- Aniadir psql a las variables de entorno
https://remot-technologies.com/como-anadir-postgresql-a-las-variables-de-entorno-de-windows-10/

-- Script para ejecutar .sql files desde cmd
https://txcowboycoder.wordpress.com/2010/11/11/auto-execute-psql-commands-via-batch-file/

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Managed;

import Entidades.SidRegistrosPadre;
import Sesiones.SidRegistrosPadreFacadeLocal;
import java.util.List;
import javax.annotation.PostConstruct;
import javax.ejb.EJB;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;

/**
 *
 * @author mpaucar
 */
@ManagedBean(name = "JSFManagedSidRegistrosPadre")
@SessionScoped
public class JSFManagedSidRegistrosPadre {

    @EJB
    private SidRegistrosPadreFacadeLocal manejadorSidRegistrosPadre;
    private SidRegistrosPadre sidRegistrosPadre;
    private List<SidRegistrosPadre> listaAF;

    public List<SidRegistrosPadre> getListaAF() {
        return listaAF;
    }

    public void setListaAF(List<SidRegistrosPadre> listaAF) {
        this.listaAF = listaAF;
    }

    public JSFManagedSidRegistrosPadre() {
    }

    public SidRegistrosPadre getSidRegistrosPadre() {
        return sidRegistrosPadre;
    }

    public void setSidRegistrosPadre(SidRegistrosPadre sidRegistrosPadre) {
        this.sidRegistrosPadre = sidRegistrosPadre;
    }

    public void grabarAF() {
        manejadorSidRegistrosPadre.create(sidRegistrosPadre);
    }

    @PostConstruct
    private void postConstructor() {
        sidRegistrosPadre = new SidRegistrosPadre();
        listarAF();
    }

    public void listarAF() {
        this.setListaAF(manejadorSidRegistrosPadre.findAll());
    }
}
