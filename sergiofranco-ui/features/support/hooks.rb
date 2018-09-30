Before do
  @home_page = HomePage.new
  @exames = BuscaExame.new
end

After do |scenario|
  nome = scenario.name.gsub(/[^A-Za-z0-9 ]/, '')
  nome = nome.tr(' ', '_').downcase!
  print = "log/screenshots/#{nome}.png"
  page.save_screenshot(print)
  embed(print, 'image/png', 'Evidencia')
end
