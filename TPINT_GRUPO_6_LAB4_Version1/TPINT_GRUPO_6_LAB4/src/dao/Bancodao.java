package dao;

import java.util.ArrayList;

import Entidades.Cliente;
import Entidades.Usuario;

public interface Bancodao  {
	public boolean insertCliente (Cliente clien,Usuario usu);
	public boolean ModificarCliente (Cliente clie, Usuario usu);
	public boolean eliminarCliente(int idCliente);
	public ArrayList<Cliente> ListarCliente ();
	public Cliente ObtenerDatosXid(int id);
}
