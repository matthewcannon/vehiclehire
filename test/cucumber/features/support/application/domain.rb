class User
  attr_accessor :user_name, :password

  def initialize(user_name, password)
    @user_name = user_name
    @password = password
  end
end
