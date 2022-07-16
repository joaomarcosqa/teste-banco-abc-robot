Documentation
... Suíte com palavras chave de login do sistema

*** Keywords ***
DADO que esteja na home do site
    Go To                            ${inicio}
    Wait Until Element Is Visible    ${valida_home}

E inserir um email valido
    ${email_fake}                    FakerLibrary.Email
    Input Text                       ${campo_email_criar_conta}                                                                   ${email_fake}
    Click Element                    ${btn_criar_conta}
    Wait Until Element Is Visible    ${valida_tela_cadastro}                                                                      20

QUANDO for redirecionado a tela de cadastro e inserir dados validos
    ${nome_fake}                     FakerLibrary.Name
    ${endereco_fake}                 FakerLibrary.Address
    ${telefone_fake}                 FakerLibrary.Phone Number
    ${cidade_fake}                   FakerLibrary.City
    ${password_fake}                 FakerLibrary.Password
    Click Element                    ${genero_feminino}
    Input Text                       ${campo_first_name}                                                                          ${nome_fake}
    Input Text                       ${campo_last_name}                                                                           ${nome_fake}
    Input Text                       ${campo_adress}                                                                              ${endereco_fake}
    Input Text                       ${campo_city}                                                                                ${cidade_fake}
    Input Text                       ${campo_postal_code}                                                                         01234
    Input Text                       ${campo_mobile_phone}                                                                        ${telefone_fake}
    Scroll Item                      ${selecionar_estado}
    Click and Scroll Item            ${selecionar_estado}
    Wait Until Element Is Visible    ${iowa}
    Click and Scroll Item            ${iowa}
    Input Text                       ${campo_password}                                                                            ${password_fake}

ENTÃO serei cadastrado com sucesso
    Click and Scroll Item            ${btn_registrar}
    Wait Until Element Is Visible    ${valida_minha_conta}
    Wait Until Page Contains         Welcome to your account. Here you can manage all of your personal information and orders.
    Wait Until Page Contains         Order history and details
    Wait Until Page Contains         My wishlists
    Wait Until Page Contains         My credit slips
    Wait Until Page Contains         My personal information

QUANDO apenas confirmar o formulario sem inserir dados
    Wait Until Element Is Visible    ${valida_tela_cadastro}
    Clear Element Text               ${campo_email}
    Click and Scroll Item            ${btn_registrar}

ENTAO irei receber um alerta de erro
    Scroll Item                      ${alerta_dados_invalidos}
    Wait Until Element Is Visible    ${alerta_dados_invalidos}
    Wait Until Element Is Visible    ${erro_last_name}
    Wait Until Element Is Visible    ${erro_first_name}
    Wait Until Element Is Visible    ${erro_email}
    Wait Until Element Is Visible    ${erro_passwprd}