using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebProject2
{
	public class Usuario
	{
		public string nome { get; set; }
		public string telefone { get; set; }
		public string senha { get; set; }

		public static List<Usuario> Lista = new List<Usuario>();

		public List<Usuario> Todos()
		{
			return Usuario.Lista;
		}

		public void Salvar()
		{
			Usuario.Lista.Add(this);
		}

		

	}
}