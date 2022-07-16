Documentation
...Suíte com testes de login

*** Settings ***
Resource                  ../compartilhado/localizadores/cadastro/keywords.robot
Resource                  ../compartilhado/localizadores/cadastro/variables.robot
Resource                  ../compartilhado/recursos/recursos_comuns.robot
Test Setup                Abrir navegador
Test Teardown             Fechar navegador

*** Test Case ***

Test Case 01: Efetuar cadastro com sucesso
    DADO que esteja na home do site
    E inserir um email valido
    QUANDO for redirecionado a tela de cadastro e inserir dados validos
    ENTÃO serei cadastrado com sucesso

Test Case 02: Efetuar cadastro sem sucesso - confirmar formulario sem inserir dados
    DADO que esteja na home do site
    E inserir um email valido
    QUANDO apenas confirmar o formulario sem inserir dados
    ENTAO irei receber um alerta de erro
