module HotelMatcher
  class Configuration
    attr_reader :after_run

    def initialize
      @after_run = nil
    end

    def after_run=(lambda)
      raise ArgumentError, "The after_run must be a lambda" unless lambda.is_a?(Proc)

      @after_run = lambda
    end
  end
end