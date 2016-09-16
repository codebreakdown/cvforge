module Cvforge
  class Address
    attr_reader :address, :city, :state, :zip
    def initialize(&block)
      instance_eval &block unless block.nil?
    end

    def address(address)
      @address = address
    end

    def city(city)
      @city = city
    end

    def state(state)
      @state = state
    end

    def zip(zip)
      @zip = zip
    end
  end
end
