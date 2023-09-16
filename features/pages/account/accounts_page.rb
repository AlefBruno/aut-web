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
    element :div_admin_delete_account, 'div.oxd-table-card:nth-child(2) > div > div:nth-child(6) > div .oxd-icon.bi-trash'
    element :div_admin_dialog_delete_account, '.oxd-dialog-container-default--inner'
    element :button_admin_confirme_delete_account, '.oxd-icon.bi-trash.oxd-button-icon'
    element :div_admin_confirme_action_success_account, '.oxd-toast-container.oxd-toast-container--bottom'
  end
end
