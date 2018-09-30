class HomePage
  include Capybara::DSL
  def acessa
    visit '/'
  end
  def acessa_busca_exame
    # mouseover sobre o menu exames
  find('#dropdownMenuExames').hover
  # clique no menu busca exames
  find('#menu-desktop-exames').click
  end
end
