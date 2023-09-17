Quando('efetuar a pesquisa de usuários com perfil Admin') do
  step 'acessar o menu Admin'
  step 'validar que o cadastro é realizado com sucesso'
  orangehrmlive_accounts_pages.wait_until_div_result_role_account_visible
  expect(orangehrmlive_accounts_pages.div_result_role_account.text).to eql @user_account['role']
end

Então('validar que o consulta é realizado com sucesso') do
  orangehrmlive_accounts_pages.wait_until_div_result_role_account_visible
  expect(orangehrmlive_accounts_pages.div_result_role_account.text).to eql @user_account['role']
end

Quando('selecionar o perfil Admin para a exclusão') do
  step 'efetuar a pesquisa de usuários com perfil Admin'
  step 'validar que o consulta é realizado com sucesso'
  orangehrmlive_accounts_pages.wait_until_i_admin_delete_account_visible
  orangehrmlive_accounts_pages.i_admin_delete_account.click
  orangehrmlive_accounts_pages.wait_until_div_admin_dialog_delete_account_visible
  orangehrmlive_accounts_pages.wait_until_button_admin_confirme_delete_account_visible
  orangehrmlive_accounts_pages.button_admin_confirme_delete_account.click
  expect(page).to have_content("Success")
end

Então('validar que a exclusão é realizado com sucesso') do
  expect(orangehrmlive_accounts_pages.div_admin_confirme_action_success_account.visible?).to eql true
end


Quando('informar os dados do perfil Admin para cadastro') do
  step 'acessar o menu Admin'
  @user_account = DATA_WEB['orangehrmlive']['login']
  orangehrmlive_accounts_pages.i_button_add_user_account.click
  orangehrmlive_accounts_pages.wait_until_div_form_add_user_account_visible
  orangehrmlive_accounts_pages.select_role_admin
  orangehrmlive_accounts_pages.insert_employee(@user_account['employee'])
  @user_account['username'] = Faker::Name.name.split(' ').join
  orangehrmlive_accounts_pages.select_status_user
  orangehrmlive_accounts_pages.wait_until_input_username_account_visible
  orangehrmlive_accounts_pages.input_username_account.set @user_account['username']
  orangehrmlive_accounts_pages.insert_and_confirme_password(@user_account['password'])
  orangehrmlive_accounts_pages.button_save_add_account.click
end

Então('validar que o cadastro é realizado com sucesso') do
  orangehrmlive_accounts_pages.wait_until_div_filter_account_visible
  orangehrmlive_accounts_pages.wait_until_div_input_username_search_account_visible
  orangehrmlive_accounts_pages.div_input_username_search_account.set @user_account['username']
  orangehrmlive_accounts_pages.select_filter_search_role_account
  orangehrmlive_accounts_pages.select_filter_search_status_account
  orangehrmlive_accounts_pages.button_admin_search_account.click
  orangehrmlive_accounts_pages.wait_until_div_result_username_account_visible
  expect(orangehrmlive_accounts_pages.div_result_username_account.text).to eql @user_account['username']
end

E('acessar o menu Admin') do 
  orangehrmlive_accounts_pages.wait_until_ul_menu_account_visible
  orangehrmlive_accounts_pages.wait_until_li_menu_admin_account_visible
  orangehrmlive_accounts_pages.li_menu_admin_account.click
  orangehrmlive_accounts_pages.wait_until_div_filter_account_visible
  expect(orangehrmlive_accounts_pages.div_filter_account.visible?).to eql true
end

Dado('que tenha usuário cadastro com perfil Admin') do
  step 'que tenha realizado o login com sucesso'
  step 'informar os dados do perfil Admin para cadastro'
end
