#language: pt

@login
Funcionalidade: Login
  Como usuário da Orange hrm live
  Quero de realizar login no site
  Para gerenciar meus usuários

  @login_sucesso
  Cenário: Validar Login - Sucesso
    Dado acessar ao site
    E obter um usuário para logar no site 
    Quando realizar o login com dados válidos
    Então validar que o login foi realizado com sucesso

  @logout_sucesso
  Cenário: Validar Logout - Sucesso
    Dado que tenha realizado o login com sucesso
    Quando realizar o logout
    Então validar que o logout foi realizado com sucesso
