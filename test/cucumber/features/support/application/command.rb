module Command
  class AddSpecialOffer
    attr_reader :special_offer

    def initialize(special_offer)
      @special_offer = special_offer
    end
  end
end
