#language: pt
#encode: utf-8

Funcionalidade: Cadastrar no site ORANGEHRM
Eu como usuario do site ORANGEHRM 
Quero acessar os recursos do site 
Para realizar o cadastro

	@cadastro
	Cenário: Cadastar no site ORANGEHRM com usuario valido
		Dado que esteja na tela de cadastro
		E efetue o cadastro com dados validos
		Entao o cadastro efetuado com sucesso

	@alterar
	Cenário: Alterar cadastro
		Dado que esteja na tela de usuarios 
		E efetue o alteracao dos dados 
		Entao o alteracao efetuada com sucesso