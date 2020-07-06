 class MetodoGET

  def consultaPessoa
     $response = HTTParty.get("http://localhost:8080/pessoas/#{$ddd}/#{$num_tel}")
  end

  def validarjson
     $endereco =  $response.parsed_response['enderecos']
     $telefone =  $response.parsed_response['telefones']
     $ddd= $ddd.to_s
     $num_tel=$num_tel.to_s
     $ddd=$ddd.gsub!(/^\"|\"?$/, '')
     $num_tel=$num_tel.gsub!(/^\"|\"?$/, '')
  end

end

