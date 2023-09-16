Quando('efetuar a pesquisa de usuários com perfil Admin') do
  orangehrmlive_accounts_pages.wait_until_ul_menu_account_visible
  orangehrmlive_accounts_pages.wait_until_li_menu_admin_account_visible
  orangehrmlive_accounts_pages.li_menu_admin_account.click
  orangehrmlive_accounts_pages.wait_until_div_filter_account_visible
  orangehrmlive_accounts_pages.wait_until_div_lists_select_filters_account_visible
  orangehrmlive_accounts_pages.div_lists_select_filters_account.first.click
  orangehrmlive_accounts_pages.div_select_filters_account[1].click
  expect(orangehrmlive_accounts_pages.div_lists_select_filters_account.first.text).to eql 'Admin'
  orangehrmlive_accounts_pages.div_lists_select_filters_account.last.click
  orangehrmlive_accounts_pages.div_select_filters_account[1].click
  expect(orangehrmlive_accounts_pages.div_lists_select_filters_account.last.text).to eql 'Enabled'
  orangehrmlive_accounts_pages.button_admin_search_account.click
end

Então('validar que o consulta é realizado com sucesso') do
  orangehrmlive_accounts_pages.wait_until_div_admin_result_role_account_visible
  expect(orangehrmlive_accounts_pages.div_admin_result_role_account.text).to eql 'Admin'
end

Quando('selecionar o perfil Admin para a exclusão') do
  step 'efetuar a pesquisa de usuários com perfil Admin'
  step 'validar que o consulta é realizado com sucesso'
  orangehrmlive_accounts_pages.wait_until_div_admin_delete_account_visible
  orangehrmlive_accounts_pages.div_admin_delete_account.click
  orangehrmlive_accounts_pages.wait_until_div_admin_dialog_delete_account_visible
  orangehrmlive_accounts_pages.wait_until_button_admin_confirme_delete_account_visible
  orangehrmlive_accounts_pages.button_admin_confirme_delete_account.click
end

Então('validar que a exclusão é realizado com sucesso') do
  expect(orangehrmlive_accounts_pages.div_admin_confirme_action_success_account.visible?).to eql true
end
