class AddUserDefaultCommandHandler
  def handle(add_user)
    Context.set_the_user(add_user.user)
  end
end
