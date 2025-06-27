*** Settings ***
Library    SeleniumLibrary
Resource   ../resources/CarrinhoPage.resource
Resource   ../resources/ProdutoPage.resource


*** Keywords ***
Entao o produto deve estar presente no carrinho com a garantia selecionada
    Wait Until Element Is Visible    ${NOME_DO_PRODUTO_CARRINHO}

    #validando se o nome do produto do caarinho eh o mesmo do produto armazenado anteriormente na ProdutoPage 
    # compara o texto recuperado do elemento NOME_DO_PRODUTO_CARRINHO com o texto armazenado em NOME_PRODUTO_PRODUTOPAGE
    Element Should Contain    ${NOME_DO_PRODUTO_CARRINHO}    ${NOME_PRODUTO_PRODUTOPAGE}
    #Keyword criada na CarrinhoPage para validar se a quantidade da garantia correta esta marcada
    Validar garantia selecionada
