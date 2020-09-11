#language: pt
#utf-8

Funcionalidade: 
Criar casdastro no site da Movida

 @cadastro
 Cenario: Cadastrar dados no site da Movida
    Dado que eu esteja na pagina de cadastro do site
    Quando realizo a criação da conta
    Então devo logar no site com os dados criados