# 🤖 Automação de Testes Web - Ambev Tech

## 📝 Sobre o Projeto
Projeto de automação de testes desenvolvido com Robot Framework para validar as funcionalidades principais de uma aplicação web, incluindo autenticação de usuários, busca de produtos e gerenciamento de lista de compras.

## 🛠️ Tecnologias Utilizadas
- Robot Framework
- SeleniumLibrary
- Python

## 📁 Estrutura do Projeto
```
web-test-ambev-tech/
├── resources/
│   ├── keywords.robot    # Arquivo com keywords personalizadas
│   └── steps.robot       # Arquivo com os steps em Gherkin
└── test-case/
    └── web-test.robot    # Arquivo com os casos de teste
```

## ✅ Cenários de Teste

### CT01 - Validação de Login
```gherkin
[Tags]    login
GIVEN user is on the login page
WHEN user enters valid credentials
THEN user should be redirected to the homepage
```

### CT02 - Busca de Produtos
```gherkin
[Tags]    search_product
GIVEN user is on the homepage
WHEN user searches for a product
THEN search results should be displayed
```

### CT03 - Adicionar à Lista de Compras
```gherkin
[Tags]    add_to_list
GIVEN user is on the product page
WHEN user adds a product to the shopping list
THEN product should be added to the shopping list successfully
```

### CT04 - Acesso à Lista de Compras
```gherkin
[Tags]    open_shopping_list
GIVEN user is on the homepage
WHEN user navigates to the shopping list
THEN shopping list should be displayed successfully
```

## ⚙️ Pré-requisitos
1. Python 3.x instalado
2. Robot Framework instalado
3. SeleniumLibrary instalada
4. Navegador web (Chrome/Firefox)
5. WebDriver correspondente ao navegador

## 📥 Instalação
```bash
# Instalar Robot Framework
pip install robotframework

# Instalar SeleniumLibrary
pip install robotframework-seleniumlibrary

# Instalar WebDriver (exemplo para Chrome)
pip install webdriver-manager
```

## 🚀 Como Executar os Testes

### Executar todos os testes
```bash
robot test-case/web-test.robot
```

### Executar testes específicos por tags
```bash
# Teste de login
robot -i login test-case/web-test.robot

# Teste de busca
robot -i search_product test-case/web-test.robot

# Teste de lista de compras
robot -i add_to_list test-case/web-test.robot

# Teste de acesso à lista
robot -i open_shopping_list test-case/web-test.robot
```

## 📋 Configurações do Projeto
- **Test Setup**: Abre o navegador antes de cada teste
- **Test Teardown**: Fecha o navegador após cada teste (atualmente comentado)

## 📊 Relatórios
Após a execução, os seguintes relatórios são gerados automaticamente:
- `log.html`: Log detalhado da execução
- `report.html`: Relatório com resultados dos testes
- `output.xml`: Arquivo XML com dados da execução

## 👩‍💻 Desenvolvedora
- [Lorena Silva](https://github.com/Lorenaasilva)
