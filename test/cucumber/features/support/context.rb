module Context
  def self.set_the_user(user)
    @@user = user
  end

  def self.get_the_user
    @@user
  end
end
