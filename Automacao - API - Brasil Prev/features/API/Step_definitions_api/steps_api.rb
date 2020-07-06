  Dado ("que o usuario possua os dados da pessoa") do
      $api_POST = MetodoPost.new
      $api_POST.pessoadadosvalidos
  end

  Dado ("que o usuario possua os dados ja cadastrados da pessoa") do
      $api_POST = MetodoPost.new
      $api_POST.pessoadadosvalidos
      $api_POST.cadastrarpessoa 
      expect($response.code).to eq(201)
  end

  Quando("o usuario consulta o DDD e o Telefone") do
      $api_GET = MetodoGET.new
      $api_GET.consultaPessoa
  end
  
  Quando ("o usuario cadastrar os dados no sistema") do
      $api_POST = MetodoPost.new
      $api_POST.cadastrarpessoa
  end

  Quando ("o usuario cadastrar os dados no sistema sem ddd") do
      $api_POST = MetodoPost.new
      $api_POST.semddd
      $api_POST.cadastrarpessoa
  end

  Quando ("o usuario cadastrar os dados no sistema sem numero de telefone") do
      $api_POST = MetodoPost.new
      $api_POST.semnumtel
      $api_POST.cadastrarpessoa
  end

  Quando ("o usuario cadastrar os dados no sistema com ddd zerado") do
      $api_POST = MetodoPost.new
      $api_POST.dddzerado
      $api_POST.cadastrarpessoa
  end

  Quando ("o usuario cadastrar os dados no sistema com telefone zerado") do
      $api_POST = MetodoPost.new
      $api_POST.numtelzerado
      $api_POST.cadastrarpessoa
  end

  Quando ("o usuario cadastrar os dados no sistema com ddd incompleto") do
      $api_POST = MetodoPost.new
      $api_POST.dddincompleto
      $api_POST.cadastrarpessoa
  end

  Quando ("o usuario cadastrar os dados no sistema com numero de telefone incompleto") do
      $api_POST = MetodoPost.new
      $api_POST.numtelincompleto
      $api_POST.cadastrarpessoa
  end
  
  Quando ("o usuario cadastrar os dados no sistema com ddd com mais de 2 digitos") do
      $api_POST = MetodoPost.new
      $api_POST.ddd3digitos
      $api_POST.cadastrarpessoa
  end

  Quando ("o usuario cadastrar os dados no sistema com numero de telefone com mais de 9 digitos") do
      $api_POST = MetodoPost.new
      $api_POST.numtel10digitos
      $api_POST.cadastrarpessoa
  end
  
  Quando ("o usuario cadastrar os dados no sistema com alfanumerico no telefone") do
      $api_POST = MetodoPost.new
      $api_POST.telefonealfa
      $api_POST.cadastrarpessoa
  end

  Quando ("o usuario cadastrar os dados no sistema o numero de telefone com alfanumerico") do
      $api_POST = MetodoPost.new
      $api_POST.telnumalfa
      $api_POST.cadastrarpessoa
  end
 
  Quando ("o usuario cadastrar os dados no sistema com ddd com alfanumerico") do
      $api_POST = MetodoPost.new
      $api_POST.dddalfa
      $api_POST.cadastrarpessoa
  end

  Quando ("o usuario cadastrar os dados no sistema sem o nome") do
      $api_POST = MetodoPost.new
      $api_POST.semnome
      $api_POST.cadastrarpessoa
  end
  
  Quando ("o usuario cadastrar os dados no sistema sem logradouro") do
      $api_POST = MetodoPost.new
      $api_POST.semlogradouro
      $api_POST.cadastrarpessoa
  end

  Quando ("o usuario cadastrar os dados no sistema sem bairro") do
      $api_POST = MetodoPost.new
      $api_POST.sembairro
      $api_POST.cadastrarpessoa
  end

  Quando ("o usuario cadastrar os dados no sistema sem numero") do
      $api_POST = MetodoPost.new
      $api_POST.semnumero
      $api_POST.cadastrarpessoa
  end

  Quando ("o usuario cadastrar os dados no sistema sem cidade") do
      $api_POST = MetodoPost.new
      $api_POST.semcidade
      $api_POST.cadastrarpessoa
  end

  Quando ("o usuario cadastrar os dados no sistema sem estado") do
      $api_POST = MetodoPost.new
      $api_POST.semestado
      $api_POST.cadastrarpessoa
  end
  
  Quando ("o usuario tentar cadastrar os dados com cpf ja cadastrado") do
      $api_POST = MetodoPost.new
      $api_POST.pessoadadosvalidos
      $api_POST.cpfcadastrado
      $api_POST.cadastrarpessoa
  end

  Quando ("o usuario cadastrar os dados no sistema com cpf invalido") do
      $api_POST = MetodoPost.new
      $api_POST.cpfinvalido
      $api_POST.cadastrarpessoa
  end

  Quando ("o usuario tentar cadastrar os dados com telefone ja cadastrado") do
      $api_POST = MetodoPost.new
      $api_POST.pessoadadosvalidos
      $api_POST.telefonecadastrado
      $api_POST.cadastrarpessoa
  end

  Entao ("o sistema exibe os dados da pessoa com sucesso") do
      expect($response.code).to eq(200)
  end

  Entao ("o sistema cadastra a pessoa com sucesso") do
      expect($response.code).to eq(201)
  end
  
  Entao ("o sistema não deve permitir o cadastro") do
      expect($response.code).not_to eq(201)
  end
  
  Entao ("o sistema não permite a consulta") do
      expect($response.code).to eq(404)
  end

  E ("exibe uma mensagem informando que o CPF já está cadastrado") do
      expect($response.body).to eq('{"erro":"Já existe pessoa cadastrada com o CPF '+ $cpf +'"}')
  end

  E ("exibe uma mensagem informando que o telefone já está cadastrado") do
      ddd = $ddd.to_s
      num_tel = $num_tel.to_s
      expect($response.body).to eq('{"erro":"Já existe pessoa cadastrada com o Telefone ('+ ddd +')'+ num_tel +'"}')
  end

  E ("todos os dados estão iguais aos cadastrados")do
      $api_GET = MetodoGET.new
      $api_GET.validarjson
      expect($response.parsed_response['nome']).to eq $nome
      expect($response.parsed_response['cpf']).to eq $cpf
      expect($endereco[0]['logradouro']).to eq $logradouro
      expect($endereco[0]['numero']).to eq $numero
      expect($endereco[0]['complemento']).to eq $complemento
      expect($endereco[0]['bairro']).to eq $bairro
      expect($endereco[0]['cidade']).to eq $cidade
      expect($endereco[0]['estado']).to eq $estado
      expect($telefone[0]['ddd']).to eq $ddd
      expect($telefone[0]['numero']).to eq $num_tel
  end

  E ("exibe uma mensagem informando que o telefone não está cadastrado") do
      ddd = $ddd.to_s
      num_tel = $num_tel.to_s
      expect($response.body).to eq('{"erro":"Não existe pessoa com o telefone ('+ ddd +')'+ num_tel +'"}')
  end



