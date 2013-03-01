module Session
  def self.current
    if @session == nil
      @session = Capybara::Session.new(:webkit)
    end

    @session
  end
end