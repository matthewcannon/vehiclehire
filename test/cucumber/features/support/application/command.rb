module Command
  class LoginUser
    attr_reader :user

    def initialize(user)
      @user = user
    end
  end

  class AddUser
    attr_reader :user

    def initialize(user)
      @user = user
    end
  end
end
