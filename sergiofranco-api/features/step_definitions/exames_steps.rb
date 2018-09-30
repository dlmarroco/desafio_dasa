Dado('o endereço da API para consulta de exames') do
  @url_api = 'https://www.sergiofranco.com.br/provider/exames/'
end

Quando('faço uma solicitação GET para o buscar o exame {string}') do |exame|
  @rota = "null?&idMarca=24&query=#{exame}"
  @resposta = HTTParty.get(@url_api + @rota, headers: { 'Content-Type' => 'application/json' }, format: :json)
end

Então('o codigo de resposta HTTP deve ser igual a {int}') do |cod_retorno|
  expect(@resposta.code).to eql cod_retorno
end

Então('no corpo da resposta deve conter os dados do exame {string}') do |exame|
  expect(@resposta.parsed_response[0]['nome']).to include exame
end

Então('no corpo da resposta não deve conter os dados do exame {string}') do |exame|
  expect(@resposta.parsed_response).not_to include exame
end
