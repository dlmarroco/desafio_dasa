class BuscaExame
  include Capybara::DSL
  def verifica_local
    # procura elemento pai que contem o caminho de navegação
    assert_exames = find('.breadcrumb')
  end

  def input_exame(nome_exame)
    find('#search-exams').set nome_exame
    find('#button-buscar-exames').click
  end
  def verifica_positivo
    assert_resultado = find('#table-resultado-exame tr', text: @nome_exame)
  end
  def verifica_negativo
    assert_resultado = find('div.row.tabela-resultado-busca.tabela-lista')
  end
end
