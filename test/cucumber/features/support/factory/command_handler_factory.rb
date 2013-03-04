class CommandHandlerFactory
  def initialize
    @session = Session.current
  end

  def for_add_special_offer
    AddSpecialOfferWeb.new(@session)
  end
end

