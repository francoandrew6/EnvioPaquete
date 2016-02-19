package org.franco.envio.prueba;

import org.franco.envio.bean.Usuario;
import org.franco.envio.db.Conexion;

public class Prueba {
	public static void main(String args[]){
		for(Object obj:Conexion.getInstancia().listar("From Usuario")){
			Usuario usr=(Usuario)obj;
			System.out.println(usr.getNombre()+"  Rol: "+usr.getIdRol().getNombre());
		}
	}
	
}
