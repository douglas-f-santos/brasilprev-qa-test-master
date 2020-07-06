 class MetodoPost

    def pessoadadosvalidos
         $nome = Faker::Name.name 
         $cpf =CPF.generate(false)
         $logradouro= Faker::Address.street_name 
         $numero = 100
         $complemento = Faker::Address.secondary_address
         $bairro = 'Lagoa'
         $cidade = Faker::Address.city
         $estado = Faker::Address.state_abbr
         $ddd = 11
         $num_tel = "99" + Faker::Number.decimal_part(digits: 7)
    end

    def cpfcadastrado
         $cpf = $cpf_cadastrado
    end

    def cpfinvalido
         $cpf = "99" + Faker::Number.decimal_part(digits: 9)
    end

    def semddd
         $ddd = ''
    end

    def semnumtel
         $num_tel= ''
    end

    def numtelzerado
         $num_tel= 0
    end

    def dddzerado
         $ddd = 0
     end

    def dddincompleto
         $ddd = 2
    end

    def numtelincompleto
         $num_tel = Faker::Number.decimal_part(digits: 6)
     end

    def ddd3digitos
         $ddd = Faker::Number.decimal_part(digits: 3)
    end

    def numtel10digitos
         $num_tel = Faker::Number.decimal_part(digits: 10)
    end

    def dddalfa
         $ddd = 'ab' 
    end

    def telnumalfa
         $num_tel = Faker::Name.initials 
    end

    def semnome
         $nome = ''
    end
    
    def semlogradouro
         $logradouro= ''
    end

    def sembairro
         $bairro= ''
    end

    def semnumero
         $numero = ''
    end

    def semcidade
         $cidade = ''
    end

    def semestado
         $estado = ''
    end

    def telefonecadastrado
         $ddd =  $ddd_cadastrado
         $num_tel = $num_tel_cadastrado
    end

    def cadastrarpessoa
         $response = HTTParty.post('http://localhost:8080/pessoas',
           :body => 
             {
               "nome":$nome,
               "cpf":$cpf,
               "enderecos":[
                  {
                     "logradouro":$logradouro,
                     "numero":$numero,
                     "complemento":$complemento,
                     "bairro":$bairro,
                     "cidade":$cidade,
                     "estado":$estado
                  }
               ],
               "telefones":[
                  {
                     "ddd":$ddd,
                     "numero":$num_tel
                  }
               ]
         }.to_json,
         :headers => { 'Content-Type' => 'application/json' })
            $cpf_cadastrado = $cpf
            $ddd_cadastrado = $ddd
            $num_tel_cadastrado = $num_tel
    end
 end