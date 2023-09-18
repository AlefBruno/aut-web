#language: pt

@account
Funcionalidade: Account
  Como usuário da Orange hrm live
  Quero me cadastrar no site
  Para gerenciar meus colaboradores

  @cadastrar_admin
  Cenário: Realizar cadastro de Perfil Admin
    Dado que tenha realizado o login com sucesso
    Quando informar os dados do perfil Admin para cadastro
    Então validar que o cadastro é realizado com sucesso

  @buscar_admin
  Cenário: Realizar Busca de Perfil Admin
    Dado que tenha usuário cadastro com perfil Admin
    Quando efetuar a pesquisa de usuários com perfil Admin
    Então validar que o consulta é realizado com sucesso

  @excluir_admin
  Cenário: Realizar exclusão de Perfil Admin
    Dado que tenha usuário cadastro com perfil Admin
    Quando selecionar o perfil Admin para a exclusão
    Então validar que a exclusão é realizado com sucesso
