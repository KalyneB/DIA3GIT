Feature: aviso

  @bem-vindo
  Scenario: Visualizar tela de boas vindas
    When o usuario acessar a URL
    And carregar a tela, verificar se aparece a frase "Seja bem vindo"
    Then clicar no botao entrar

  @loja-existente
  Scenario: Identificacao da loja
    When carregar a tela, verificar se aparece a frase "Identifique a sua loja"
    Given um codigo de loja valido
    Then selecionar a loja
    And clicar no botao 'Essa e minha loja'
    
  @cliente-com-cpf
  Scenario: Identificacao de clientes
    When carregar a tela, verificar se aparece a frase "Identificação"
    Given um cpf valido
    Then devera habilitar o botao entrar
    And clicar no botao
