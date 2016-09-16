module Cvforge
  class Education
    attr_reader :name, :website, :start_year, :end_year, :degree

    def initialize(&block)
      instance_eval &block unless block.nil?
    end

    def name(name)
      @name = name
    end

    def website(website)
      @website = website
    end

    def start_year(start_year)
      @start_year = start_year
    end

    def end_year(end_year)
      @end_year = end_year
    end

    def degree(degree)
      @degree = degree
    end
  end
end
