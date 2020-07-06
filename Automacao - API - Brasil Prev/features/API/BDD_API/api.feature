#language: pt

 @CRpessoa
 Funcionalidade: Cadastrar e consultar pessoa

    @Cadastrar+Pessoa+Dados+Validos
    Cenario: Efetuar cadastro de pessoa
        Dado que o usuario possua os dados da pessoa
        Quando o usuario cadastrar os dados no sistema
        Entao o sistema cadastra a pessoa com sucesso

    @Cadastrar+Pessoa+CPF+Cadastrado
    Cenario: Não efetuar cadastro de pessoa com cpf já cadastrado
        Dado que o usuario possua os dados ja cadastrados da pessoa
        Quando o usuario tentar cadastrar os dados com cpf ja cadastrado
        Entao o sistema não deve permitir o cadastro
        E exibe uma mensagem informando que o CPF já está cadastrado

    @Cadastrar+Pessoa+CPF+Invalido
    Cenario: Não efetuar cadastro de pessoa com cpf inválido
        Dado que o usuario possua os dados da pessoa
        Quando o usuario cadastrar os dados no sistema com cpf invalido
        Entao o sistema não deve permitir o cadastro

    @Cadastrar+Pessoa+Sem+DDD
    Cenario: Não efetuar cadastro de pessoa sem o ddd
        Dado que o usuario possua os dados da pessoa
        Quando o usuario cadastrar os dados no sistema sem ddd
        Entao o sistema não deve permitir o cadastro

    @Cadastrar+Pessoa+Sem+num+telefone
    Cenario: Não efetuar cadastro de pessoa sem número do telefone
        Dado que o usuario possua os dados da pessoa
        Quando o usuario cadastrar os dados no sistema sem numero de telefone
        Entao o sistema não deve permitir o cadastro

    @Cadastrar+Pessoa+DDD+Zerado
    Cenario: Não efetuar cadastro de pessoa com ddd zerado
        Dado que o usuario possua os dados da pessoa
        Quando o usuario cadastrar os dados no sistema com ddd zerado
        Entao o sistema não deve permitir o cadastro

    @Cadastrar+Pessoa+num+telefone+Zerado
    Cenario: Não efetuar cadastro de pessoa com numero de telefone zerado
        Dado que o usuario possua os dados da pessoa
        Quando o usuario cadastrar os dados no sistema com telefone zerado
        Entao o sistema não deve permitir o cadastro

    @Cadastrar+Pessoa+DDD+incompleto
    Cenario: Não efetuar cadastro de pessoa com ddd incompleto
        Dado que o usuario possua os dados da pessoa
        Quando o usuario cadastrar os dados no sistema com ddd incompleto
        Entao o sistema não deve permitir o cadastro

    @Cadastrar+Pessoa+num+telefone+incompleto
    Cenario: Não efetuar cadastro de pessoa com telefone incompleto
        Dado que o usuario possua os dados da pessoa
        Quando o usuario cadastrar os dados no sistema com numero de telefone incompleto
        Entao o sistema não deve permitir o cadastro

    @Cadastrar+Pessoa+DDD+mais+2digitos
    Cenario: Não efetuar cadastro de pessoa com ddd com mais de 2 digitos
        Dado que o usuario possua os dados da pessoa
        Quando o usuario cadastrar os dados no sistema com ddd com mais de 2 digitos
        Entao o sistema não deve permitir o cadastro

    @Cadastrar+Pessoa+num+telefone+mais+9digitos
    Cenario: Não efetuar cadastro de pessoa com numero de telefone com mais de 9 digitos
        Dado que o usuario possua os dados da pessoa
        Quando o usuario cadastrar os dados no sistema com numero de telefone com mais de 9 digitos
        Entao o sistema não deve permitir o cadastro

    @Cadastrar+Pessoa+DDD+Alfanumerico
    Cenario: Não efetuar cadastro de pessoa com ddd alfanumerico
        Dado que o usuario possua os dados da pessoa
        Quando o usuario cadastrar os dados no sistema com ddd com alfanumerico
        Entao o sistema não deve permitir o cadastro

    @Cadastrar+Pessoa+num+telefone+Alfanumerico
    Cenario: Não efetuar cadastro de pessoa com numero de telefone alfanumerico
        Dado que o usuario possua os dados da pessoa
        Quando o usuario cadastrar os dados no sistema o numero de telefone com alfanumerico
        Entao o sistema não deve permitir o cadastro

    @Cadastrar+Pessoa+sem+nome
    Cenario: Não efetuar cadastro de pessoa sem nome
        Dado que o usuario possua os dados da pessoa
        Quando o usuario cadastrar os dados no sistema sem o nome
        Entao o sistema não deve permitir o cadastro

    @Cadastrar+Pessoa+sem+logradouro
    Cenario: Não efetuar cadastro de pessoa sem o logradouro do endereço
        Dado que o usuario possua os dados da pessoa
        Quando o usuario cadastrar os dados no sistema sem logradouro
        Entao o sistema não deve permitir o cadastro

    @Cadastrar+Pessoa+sem+bairro
    Cenario: Não efetuar cadastro de pessoa sem o bairro do endereço
        Dado que o usuario possua os dados da pessoa
        Quando o usuario cadastrar os dados no sistema sem bairro
        Entao o sistema não deve permitir o cadastro

    @Cadastrar+Pessoa+sem+numero
    Cenario: Não efetuar cadastro de pessoa sem o numero do endereço
        Dado que o usuario possua os dados da pessoa
        Quando o usuario cadastrar os dados no sistema sem numero
        Entao o sistema não deve permitir o cadastro

    @Cadastrar+Pessoa+sem+cidade
    Cenario: Não efetuar cadastro de pessoa sem a cidade do endereço
        Dado que o usuario possua os dados da pessoa
        Quando o usuario cadastrar os dados no sistema sem cidade
        Entao o sistema não deve permitir o cadastro
 
    @Cadastrar+Pessoa+sem+estado
    Cenario: Não efetuar cadastro de pessoa sem o estado do endereço
        Dado que o usuario possua os dados da pessoa
        Quando o usuario cadastrar os dados no sistema sem estado
        Entao o sistema não deve permitir o cadastro

    @Cadastrar+Pessoa+Telefone+Cadastrado
    Cenario: Não efetuar cadastro de pessoa com telefone já cadastrado
        Dado que o usuario possua os dados ja cadastrados da pessoa
        Quando o usuario tentar cadastrar os dados com telefone ja cadastrado
        Entao o sistema não deve permitir o cadastro
        E exibe uma mensagem informando que o telefone já está cadastrado

    @Consultar+Pessoa+Telefone+Cadastrado
    Cenario: Efetuar consulta de pessoa através do telefone
        Dado que o usuario possua os dados ja cadastrados da pessoa
        Quando o usuario consulta o DDD e o Telefone 
        Entao o sistema exibe os dados da pessoa com sucesso
        E todos os dados estão iguais aos cadastrados

    @Consultar+Pessoa+Telefone+Naocadastrado
    Cenario: Não efetuar consulta de pessoa com telefone não cadastrado
        Dado que o usuario possua os dados da pessoa
        Quando o usuario consulta o DDD e o Telefone 
        Entao o sistema não permite a consulta
        E exibe uma mensagem informando que o telefone não está cadastrado



