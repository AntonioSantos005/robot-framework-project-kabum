*** Settings ***
Documentation     Cenário: Adicionar produto ao carrinho com sucesso
...               Este teste cobre a compra de um notebook com frete e garantia estendida.
Resource          ../keywords/HeaderKeywords.robot
Resource          ../keywords/ResultadosKeywords.robot
Resource          ../keywords/ProdutoKeywords.robot
Resource          ../keywords/PreCarrinhoKeywords.robot
Resource          ../keywords/CarrinhoKeywords.robot


*** Test Cases ***
Adicionar produto ao carrinho com sucesso
    Dado que o usuario acessa a loja Kabum
    E pesquisa por    notebooks
    Quando seleciona o primeiro produto da lista
    E informa o CEP para consultar o frete    72852520
    Entao sao exibidas as opcoes de frete disponiveis
    E o usuario fecha a tela de frete
    Quando opta por comprar o produto
    E seleciona a garantia estendida com a quantidade de meses    12
    E vai para o carrinho
    Entao o produto deve estar presente no carrinho com a garantia selecionada
