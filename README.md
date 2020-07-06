# Objetivo do Projeto:

Automação de testes do endpoint </Pessoa> da aplicação teste Brasil Prev.
Testar os comportamentos do EndPoint </Pessoa> dentre todos os cenários existentes de <Cadastro> e <Consulta> de acordo com o resultado esperado 
a fim de contemplar todas as partes que podem apresentar falhas sistêmicas no presente momento e também futuramente.


Execução da Automação:

1. Instalar o Ruby devkit através do site https://rubyinstaller.org/downloads/

2. Baixe o projeto nessa url: https://github.com/douglas-f-santos/brasilprev-qa-test-master.git

3. Executar o projeto de automação, abra o mesmo via cmd e execute as seguintes instruções:

   a) bundle install (instalar as dependências)
   
   b) cucumber --t  @CRpessoa --format json --out cucumber.json (executa todos seus cenários da funcionalidade)

4. Resultados (Reports):

   a) Acessar a pasta do projeto <\Automacao - API - Brasil Prev\results>
   
   b) Abrir o arquivo <reports.html>

##Arquivo de bugs encontrados: Documentação de bugs.pdf
