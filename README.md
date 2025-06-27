# Projeto de Automacao de Testes - Robot Framework (Kabum)

Este projeto automatiza o fluxo de compra no site [Kabum!](https://www.kabum.com.br), simulando a busca por um produto, consulta de frete, selecao de garantia e validacao no carrinho.

## 💡 Descricao

Automacao desenvolvida utilizando Robot Framework com SeleniumLibrary, seguindo a metodologia BDD com keywords nomeadas de forma descritiva. O teste cobre o seguinte fluxo:

1. Acesse o site www.kabum.com.br.
2. Realize uma busca pelo termo "notebook".
3. Selecione o primeiro produto da lista.
4. Digite um CEP e valide os valores dos fretes dispon?veis.
5. Feche a tela de op??es de frete.
6. Clique em "Comprar".
7. Selecione a garantia de +12 meses.
8. Clique em "Ir para o carrinho".
9. Valide que o produto est? corretamente adicionado ao carrinho.

## 📁 Estrutura do Projeto

```
robot-framework-project-kabum/
├── keywords/
│   ├── CarrinhoKeywords.robot
│   ├── HeaderKeywords.robot
│   ├── PreCarrinhoKeywords.robot
│   ├── ProdutoKeywords.robot
│   └── ResultadosKeywords.robot
├── resources/
│   ├── CarrinhoPage.resource
│   ├── HeaderPage.resource
│   ├── PreCarrinhoPage.resource
│   ├── ProdutoPage.resource
│   └── ResultadosPage.resource
├── tests/
│   └── AdicionarNoCarrinhoTest.robot
└── README.md
```

## 🚀 Como Executar

### 1. Clonar o repositorio

```bash
git clone https://github.com/AntonioSantos005/robot-framework-project-kabum.git
cd robot-framework-project-kabum
```

### 2. Instalar o Robot Framework e dependencias

Certifique-se de ter o Python instalado. Em seguida, instale os pacotes necessarios:

```bash
pip install robotframework
pip install robotframework-seleniumlibrary
```
### 3. Alterar caminho para o python.exe

Na pasta .vscode abrir o arquivo settings.json e substituir o caminho para o python.exe

### 4. Executar o teste

Execute o seguinte comando na raiz do projeto:

```bash
robot tests/AdicionarNoCarrinhoTest.robot
```

## 🧪 Resultado Esperado

O navegador sera aberto, a simulacao de compra sera realizada conforme o fluxo descrito e o teste sera finalizado com sucesso validando o nome do produto e garantia no carrinho.

## 📌 Observacoes

- Utilize o navegador **Google Chrome** para melhor compatibilidade.
- A localizacao dos elementos foi feita por `id`, `xpath` e `css`, priorizando performance e manutencao.
- O campo de busca utiliza comandos JavaScript para contornar a mecanica de eventos do site.

## ?? Autor

Ant?nio de Sousa � [LinkedIn](https://www.linkedin.com/in/antoniosousas/)

