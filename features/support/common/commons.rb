module Commons
  def evd_screen(scenario)
    nome_cenario = scenario.name.gsub(/[^A-Za-z0-9]/, '')
    nome_cenario = nome_cenario.gsub(' ', '_').downcase!
    screen = "features/support/results/#{nome_cenario}.png"
    page.save_screenshot(screen, full: true)
  end
end
