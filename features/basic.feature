Feature: Login com Sucesso!!
  Como usuário
  Quero realizar o Login
  Para que possa acessar o sistema

  Scenario: Login com Sucesso
    Given que estou na tela de Login
    When  preencho o campo de e-mail com "testador@testador.com"
    And preencho o campo de senha "123456"
    And clico no botão de Login
    Then o login é realizado com sucesso

  Scenario: Login sem sucesso com email inválido
    Given que estou na tela de Login
    When  preencho o campo de e-mail com "testador.com "
    And preencho o campo de senha "123456"
    And clico no botão de Login
    Then a mensagem E-mail inválido  aparece

 Scenario: Login sem sucesso com campo senha vazio
    Given que estou na tela de Login
    When  preencho o campo de e-mail com "testador@testador.com"
    And preencho o campo de senha " "
    And clico no botão de Login
    Then a mensagem Senha inválida  aparece

