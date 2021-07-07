using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebProject2
{
	public partial class Formulário : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			PanelCadastro.Visible = false;
			PanelLista.Visible = true;
			PanelLogin.Visible = false;
		}

		protected void btnSalvar_Click(object sender, EventArgs e)
		{
			var usuario = new Usuario();
			usuario.telefone = txtTelefone.Text;
			usuario.nome = txtNome.Text;
			usuario.senha = PassSenha.Value;
			usuario.Salvar();

			txtNome.Text = "";
			txtTelefone.Text = "";
			
			gridDados.DataSource = Usuario.Lista;
			gridDados.DataBind();

		}

		protected void btnInserir_Click(object sender, EventArgs e)
		{
			PanelCadastro.Visible = true;
			PanelLista.Visible = false;
			PanelLogin.Visible = false;
		}

		protected void btnLogin_Click(object sender, EventArgs e)
		{
			PanelCadastro.Visible = false;
			PanelLista.Visible = false;
			PanelLogin.Visible = true;
		}

		protected void btnLoginValida_Click(object sender, EventArgs e)
		{
			while( txtNomeLogin.Text=="" || PassSenhaLogin.Value=="")
			{
				Response.Write("Preencha todos os campos!");								
			}
			
		}
	}
}