#language:pt

Funcionalidade: Busca Exames
Para que eu possa consultar meus Exames
Sendo um usuário com perfil paciente
Posso acessar o sistema e realizar a busca

Contexto: Acesso
Dado que eu acesso o sistema com perfil paciente

@positivo
Cenario: Busca exame existente

Quando acesso a funcionalidade busca de exame
E pesquiso pelo exame "ABCD1"
Então vejo o exame na lista de resultados

@negativo
Cenario: Busca exame inexistente

Quando acesso a funcionalidade busca de exame
E pesquiso pelo exame "PEDREGULHO"
Então exame não é exibido na lista de resultados