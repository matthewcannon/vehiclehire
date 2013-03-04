module Task
  class AddSpecialOffer
    def execute(special_offer)
      command = Command::AddSpecialOffer.new(special_offer)
      command_handler = CommandHandlerFactory.new().for_add_special_offer()
      command_handler.handle(command)
    end
  end

  class Enquire
	  def execute(enquiry)
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
