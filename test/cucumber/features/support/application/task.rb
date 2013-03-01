module Task
  class AddUser
    def execute(username, password)
      user = User.new(username, password)
      command = Command::AddUser.new(user)
      command_handler = CommandHandlerFactory.new().for_add_user()
      command_handler.handle(command)
    end
  end

  class LoginAsUser
    def execute()
      user = Context.get_the_user()
      command = Command::LoginUser.new(user)
      command_handler = CommandHandlerFactory.new().for_login_user()
      command_handler.handle(command);
    end
  end

  class IdentifyWhatIHave
    def initialize()
      @i_have_content = Content::Unknown.new()
    end

    def execute
      WhatDoIHaveWeb.new(Session.current, self).handle(WhatDoIHave.new())
      @i_have_content
    end

    def handle(content)
      @i_have_content = content
    end
  end
end
