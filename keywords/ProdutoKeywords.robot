*** Settings ***
Library    SeleniumLibrary
Resource   ../resources/ProdutoPage.resource

*** Keywords ***
E informa o CEP para consultar o frete
#Nao ha a necessidade de validar a tela pois se o campo cep existir, significa que esta numa tela de produto
    [Arguments]    ${cep}
    Click Element    ${CAMPO_CEP}
    Input Text    ${CAMPO_CEP}    ${cep}
    Click Element    ${BOTAO_CALCULAR_FRETE}

Entao sao exibidas as opcoes de frete disponiveis
#como o primeiro item e o frete podem variar, estou fazendo a validacao pela existencia dos textos dos campos informativos e nao pelos valores 
# caso o teste fosse com item fixo seria valido validar os valores
    Wait Until Element Is Visible    ${LISTA_OPCOES_FRETE}
    Element Should Contain    ${LISTA_OPCOES_FRETE}    Entrega Econômica
    Element Should Contain    ${LISTA_OPCOES_FRETE}    R$
    Element Should Contain    ${LISTA_OPCOES_FRETE}    Chegará até:

E o usuario fecha a tela de frete
    Click Element    ${BOTAO_FECHAR_MODAL}

Quando opta por comprar o produto
    Click Element    ${BOTAO_COMPRAR}
