class LoginUserWeb
  def initialize(session)
    @session = session
  end

  def handle(login_user)
    user = login_user.user

    @session.visit('/Login/Index.mvc')
    @session.fill_in('Username', :with => user.user_name)
    @session.fill_in('Password', :with => user.password)
    @session.fill_in('ExtensionNumber', :with => '0000')
    @session.select('00', :from => 'ShiftEndTimeHours')
    @session.select('00', :from => 'ShiftEndTimeMinutes')
    @session.click_button('Login')
  end
end
