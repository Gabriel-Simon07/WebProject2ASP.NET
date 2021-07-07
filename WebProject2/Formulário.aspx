<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Formulário.aspx.cs" Inherits="WebProject2.Formulário" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
			<asp:Panel ID="PanelCadastro" runat="server">
			<asp:Label ID="LabelNome" runat="server" Text="Nome : "></asp:Label>
			<asp:TextBox ID="txtNome" runat="server"></asp:TextBox>
				<br />
			<asp:Label ID="LabelSenha" runat="server" Text="Senha : "></asp:Label>
				<input id="PassSenha" type="password" runat="server"/>
				<br />
			<asp:Label ID="LabelTelefone" runat="server" Text="Telefone : "></asp:Label>
			<asp:TextBox ID="txtTelefone" runat="server"></asp:TextBox>
				<br />
			<asp:Button ID="btnSalvar" runat="server" Text="Salvar" OnClick="btnSalvar_Click" />
			</asp:Panel>
		</div>
		<hr />
		<div>
			<asp:Panel ID="PanelLista" runat="server">
				<asp:Button ID="btnInserir" runat="server" Text="Inserir" OnClick="btnInserir_Click" />
				<asp:Button ID="btnLogin" runat="server" OnClick="btnLogin_Click" Text="Login" style="margin-left: 49px" />
				<asp:GridView ID="gridDados" runat="server">
				</asp:GridView>
			</asp:Panel>
		</div>
		<div>
			<asp:Panel ID="PanelLogin" runat="server">
			<asp:Label ID="LabelNomeLogin" runat="server" Text="Nome : "></asp:Label>
			<asp:TextBox ID="txtNomeLogin" runat="server"></asp:TextBox>
				<br />
			<asp:Label ID="LabelSenhaLogin" runat="server" Text="Senha : "></asp:Label>
			<input id="PassSenhaLogin" type="password" runat="server"/>

				<br />
				<asp:Button ID="btnLoginValida" runat="server" Text="Logar" OnClick="btnLoginValida_Click" />
				<br />
			</asp:Panel>
		</div>
    </form>
</body>
</html>
