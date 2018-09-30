Dado('que eu acesso o sistema com perfil paciente') do
  @home_page.acessa
end

Quando('acesso a funcionalidade busca de exame') do
  @home_page.acessa_busca_exame
  expect(@exames.verifica_local).to have_content 'Exames'
end

Quando('pesquiso pelo exame {string}') do |nome_exame|
  @exames.input_exame(nome_exame)
end

Então('vejo o exame na lista de resultados') do
  expect(@exames.verifica_positivo).to have_content @nome_exame
end

Então('exame não é exibido na lista de resultados') do
  expect(@exames.verifica_negativo).to have_content @nome_exame
end
