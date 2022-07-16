# automacao-robot-framework

Inicialmente será necessário instalar:
Python
Java
Node.js

Metodo de execução:
Para executar todos os testes web utilizar:
python run.py -test
Dependendo do seu SO o comando ficara assim python3 run.py -test no caso do linux e mac

Por default deixei os testes para serem executados no chrome e para execução deverá verificar a versão do chromedriver, baixa-la e coloca-la no path do projeto, na pasta base.

Para utilizar o robot primeiro é necessário fazer algumas instalações e a forma mais simples é usando este comando que irá instalar todas as libraryes que estão na pasta requirements.txt:
pip install -r requirements.txt

setei a velocidade do selnium como 0.5 para o teste não executar tão rapido e ficar mais facil de avaliar as validações

para poder utilizar o terminal do vs code livremente e executar qualquer comando por ele usar no powershell o comando:
set-executionpolicy -uxecutionpolicy unrestricted 