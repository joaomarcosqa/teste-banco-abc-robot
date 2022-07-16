Documentation
... Suíte com variáveis de login do sistema

*** Variable ***
${inicio}                     http://automationpractice.com/index.php?controller=authentication&back=my-account
${valida_home}                (//h1[@class="page-heading"])[text()="Authentication"]
${campo_email_criar_conta}    (//input[@data-validate="isEmail"])[1]
${btn_criar_conta}            //button[@name="SubmitCreate"]
${valida_tela_cadastro}       (//h3[@class="page-subheading"])[text()="Your personal information"]
${genero_feminino}            //input[@id="id_gender2"]
${btn_registrar}              //button[@name="submitAccount"]
${alerta_dados_invalidos}     //div[@class="alert alert-danger"]
${erro_last_name}             //li//b[text()="lastname"]
${erro_first_name}            //li//b[text()="firstname"]
${erro_email}                 //li//b[text()="email"]
${erro_passwprd}              //li//b[text()="passwd"]
${campo_email}                //input[@data-validate="isEmail"]
${campo_first_name}           //input[@id="customer_firstname"]
${campo_last_name}            //input[@id="customer_lastname"]
${campo_password}             //input[@name="passwd"]
${campo_adress}               //input[@name="address1"]
${campo_city}                 //input[@name="city"]
${campo_postal_code}          //input[@name="postcode"]
${campo_mobile_phone}         //input[@name="phone_mobile"]
${selecionar_estado}          (//div[@class="selector"])[4]
${iowa}                       (//option[@value])[text()="Iowa"]
${valida_minha_conta}         (//h1[@class="page-heading"])[text()="My account"]