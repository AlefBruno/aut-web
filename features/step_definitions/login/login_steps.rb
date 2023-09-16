E('obter um usuário para logar no site') do
  @user_account = DATA_WEB['orangehrmlive']['login']
end

Quando('realizar o login com dados válidos') do
  user = @user_account['user']
  passwd = @user_account['password']
  orangehrmlive_login_pages.realizar_login(user, passwd)
end

Então('validar que o login foi realizado com sucesso') do
  orangehrmlive_accounts_pages.wait_until_div_topbar_account_visible
  orangehrmlive_accounts_pages.wait_until_div_title_account_visible
  orangehrmlive_accounts_pages.wait_until_div_sidepanel_account_visible
  expect(orangehrmlive_accounts_pages.p_dropdown_user_name_account.visible?).to eql true
end

Dado('acessar ao site') do
  orangehrmlive_login_pages.load
end

Dado('que tenha realizado o login com sucesso') do
  step 'acessar ao site'
  step 'obter um usuário para logar no site'
  step 'realizar o login com dados válidos'
  step 'validar que o login foi realizado com sucesso'
end

Quando('realizar o logout') do
  orangehrmlive_accounts_pages.wait_until_span_dropdown_user_account_visible
  orangehrmlive_accounts_pages.wait_until_p_dropdown_user_name_account_visible
  orangehrmlive_accounts_pages.span_dropdown_user_account.click
  orangehrmlive_accounts_pages.wait_until_ul_dropdown_menu_user_account_visible
  orangehrmlive_accounts_pages.li_dropdown_item_menu_user_account.last.click
end

Então('validar que o logout foi realizado com sucesso') do
  orangehrmlive_login_pages.wait_until_div_wrapper_login_visible
  orangehrmlive_login_pages.wait_until_div_slot_login_visible
  orangehrmlive_login_pages.wait_until_input_name_login_visible
  expect(orangehrmlive_login_pages.input_name_login.visible?).to eql true
end
