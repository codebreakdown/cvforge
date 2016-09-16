require_relative 'employment'
require_relative 'education'
require_relative 'address'

module Cvforge
  class CV
    attr_reader :name, :email, :phone, :address, :summary, :empoloyment,
      :education, :certifications, :awards, :skills

    def self.define(&block)
      self.new.build(&block)
    end

    def initialize
      @employment = []
      @education = []
      @certifications = []
      @awards = []
      @skills = []
    end

    def build(&block)
      instance_eval &block
      self
    end

    def name(name)
      @name = name
    end

    def email(email)
      @email = email
    end


    def phone(phone)
      @phone = phone
    end

    def address(&block)
      @address = Address.new(&block)
    end

    def summary(summary)
      @summary = summary
    end

    def employment(&block)
      @employment << Employment.new(&block)
    end

    def education(&block)
      @education << Education.new(&block)
    end

    def certification(name)
      @certifications << name
    end

    def award(name)
      @awards << name
    end

    def skill(skill)
      @skills << skill
    end
  end
end
