module GGRKS

  class Runner
    attr_reader :query

    def initialize(*args)
      @query = args.join("+")
    end

    def self.execute(*args)
      new(*args).execute
    end

    def execute
      exec("w3m http://www.google.com/search?q=#{query}")
    end

  end
end
