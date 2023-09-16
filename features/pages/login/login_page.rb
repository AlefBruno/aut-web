module Orangehrmlive
  class Login < SitePrism::Page
    set_url CONFIG_WEB['orangehrmlive']['host']

    element :div_wrapper_login, '.orangehrm-login-slot-wrapper'
    element :div_slot_login, '.orangehrm-login-slot'
    element :input_name_login, "input[name='username']"
    element :input_password_login, "input[name='password']"
    element :button_submit_login, "button[type='submit']"
    element :alert_message_login_failed, "div[class='oxd-alert oxd-alert--error']"

    def realizar_login(user, passwd)
      wait_until_div_wrapper_login_visible
      wait_until_div_slot_login_visible
      wait_until_input_name_login_visible
      input_name_login.set user
      wait_until_input_password_login_visible
      input_password_login.set passwd
      wait_until_button_submit_login_visible
      button_submit_login.click
    end
  end
end
