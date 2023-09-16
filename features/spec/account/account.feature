#language: pt

Funcionalidade: Account
  Como usuário da Orange hrm live
  Quero me cadastrar no site
  Para gerenciar meus colaboradores

  @buscar_admin
  Cenário: Realizar Busca de Perfil Admin
    Dado que tenha realizado o login com sucesso
    Quando efetuar a pesquisa de usuários com perfil Admin
    Então validar que o consulta é realizado com sucesso

  @excluir_admin
  Cenário: Realizar exclusão de Perfil Admin
    Dado que tenha realizado o login com sucesso
    Quando selecionar o perfil Admin para a exclusão
    Então validar que a exclusão é realizado com sucesso
