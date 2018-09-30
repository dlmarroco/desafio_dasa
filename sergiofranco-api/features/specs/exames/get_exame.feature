#language:pt

Funcionalidade: Busca Exame
    Sendo uma aplicação que recebeu dados do usuário
    Posso solicitar uma requisição GET
    Para  realizar a busca de exames

    Cenario: Busca positiva de exame

    Dado o endereço da API para consulta de exames
    Quando faço uma solicitação GET para o buscar o exame "BCR-ABL1"
    Então o codigo de resposta HTTP deve ser igual a 200
    E no corpo da resposta deve conter os dados do exame "BCR-ABL1"

    Cenario: Busca negativa de exame

    Dado o endereço da API para consulta de exames
    Quando faço uma solicitação GET para o buscar o exame "PEDREGULHO"
    Então o codigo de resposta HTTP deve ser igual a 200
    E no corpo da resposta não deve conter os dados do exame "PEDREGULHO"