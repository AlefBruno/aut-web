module Orangehrmlive
  class Accounts < SitePrism::Page
    element :div_topbar_account, '.oxd-topbar-header'
    element :div_title_account, '.oxd-topbar-header-title'
    element :div_sidepanel_account, '.oxd-sidepanel-body'
    element :span_dropdown_user_account, '.oxd-userdropdown-tab'
    element :ul_dropdown_menu_user_account, '.oxd-dropdown-menu'
    element :p_dropdown_user_name_account, '.oxd-userdropdown-name'
    elements :li_dropdown_item_menu_user_account, 'ul.oxd-dropdown-menu > li'
    element :ul_menu_account, '.oxd-main-menu'
    element :li_menu_admin_account, 'div.oxd-sidepanel-body > ul > li:nth-child(1) > a'
    element :div_filter_account, '.oxd-table-filter-header'
    elements :div_lists_select_filters_account, 'div.oxd-select-text-input'
    elements :div_select_filters_account, 'div.oxd-select-option'
    element :button_admin_search_account, 'button[type="submit"]'
    element :div_admin_result_role_account, 'div.oxd-table-card:nth-child(2) > div > div:nth-child(3)'
    element :i_admin_delete_account, 'i.oxd-icon.bi-trash'
    element :div_admin_dialog_delete_account, '.oxd-dialog-container-default--inner'
    element :button_admin_confirme_delete_account, '.oxd-icon.bi-trash.oxd-button-icon'
    element :div_admin_confirme_action_success_account, '.oxd-toast-container.oxd-toast-container--bottom'

    element :i_button_add_user_account, '.oxd-icon.bi-plus.oxd-button-icon'
    element :div_form_add_user_account, '.orangehrm-card-container'
    elements :div_selects_add_user_account, '.oxd-select-text--after'
    element :div_dropdown_list_role_account, 'div.oxd-select-dropdown.--positon-bottom'
    elements :div_select_add_user_account, '.oxd-select-option'
    elements :div_select_add_employee_account, 'div.oxd-autocomplete-dropdown.--positon-bottom'
    element :input_employee_account, 'input[placeholder="Type for hints..."]'
    element :input_username_account, 'div > div:nth-child(4) > div > div:nth-child(2) > input'
    elements :input_passwords_add_user_account, 'input[type="password"]'
    element :button_save_add_account, 'button[type="submit"]'
    element :div_input_username_search_account, 'div[class=""] > input.oxd-input.oxd-input--active'
    element :div_result_username_account, 'div.oxd-table-body > div > div > div:nth-child(2) > div'
    element :div_result_role_account, 'div.oxd-table-body > div > div > div:nth-child(3) > div'

    def insert_and_confirme_password(pass)
      input_passwords_add_user_account.first.set pass
      input_passwords_add_user_account.last.set  pass
    end

    def select_filter_search_role_account()
      wait_until_div_lists_select_filters_account_visible
      div_lists_select_filters_account.last.click
      div_select_filters_account[1].click
    end

    def select_filter_search_status_account()
      wait_until_div_lists_select_filters_account_visible
      div_lists_select_filters_account.first.click
      div_select_filters_account[1].click
      end

    def insert_employee(employee)
      input_employee_account.click
      input_employee_account.set employee
      wait_until_div_select_add_employee_account_visible
      div_select_add_employee_account.each do |item|
        sleep 2
        break item.click if item.text == employee
      end
      div_select_add_employee_account.first.click
      wait_until_div_select_add_employee_account_invisible
    end

    def select_role_admin()
      wait_until_div_selects_add_user_account_visible
      div_selects_add_user_account.first.click
      wait_until_div_dropdown_list_role_account_visible
      wait_until_div_select_add_user_account_visible
      div_select_add_user_account.each do |item|
        break item.click if item.text == "Admin"
      end
    end

    def select_status_user()
      wait_until_div_selects_add_user_account_visible
      div_selects_add_user_account.last.click
      wait_until_div_dropdown_list_role_account_visible
      wait_until_div_select_add_user_account_visible
      div_select_add_user_account.each do |item|
        break item.click if item.text == "Enabled"
      end
    end
  end
end
