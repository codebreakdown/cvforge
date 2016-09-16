module Cvforge
  class Employment
    attr_reader :name, :start_date, :end_date, :title, :description,
      :accomplishments, :website, :type

    def initialize(&block)
      @accomplishments = []
      instance_eval &block unless block.nil?
    end

    def name(name)
      @name = name
    end

    def type(type)
      @type = type
    end

    def website(website)
      @website = website
    end

    def start_date(start_date)
      @start_date = start_date
    end

    def end_date(end_date)
      @end_date = end_date
    end

    def title(title)
      @title = title
    end

    def description(desc)
      @description = desc
    end

    def accomplishment(desc)
      @accomplishments << desc
    end
  end
end
