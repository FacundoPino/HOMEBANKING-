package dao;

import java.util.ArrayList;

import Entidades.Cliente;
import Entidades.Cuenta;

public interface CuentaDao {
	public boolean insertCuenta(Cuenta cuenta);
	public boolean EliminarCuenta(int id);
	public ArrayList<Cuenta> ListarCuenta(int DNI);
	public int GenerarNumeroCuenta() ;
	public int GenerarCBU();
	public boolean modificarCuenta(Cuenta cuenta);
	public Cuenta obtenerCuentaPorId(int id);
}

