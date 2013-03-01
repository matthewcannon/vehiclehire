class CommandHandlerFactory
  def initialize
    @session = Session.current
  end

  def for_add_user
    AddUserDefaultCommandHandler.new()
  end

  def for_login_user
    LoginUserWeb.new(@session)
  end
end

