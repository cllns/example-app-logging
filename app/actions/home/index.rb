# frozen_string_literal: true

module Example
  module Actions
    module Home
      class Index < Example::Action
        include Deps["logger"]

        def handle(request, response)
          logger.info("Info message")
          # Same as Hanami.logger.info("Info message")

          logger.debug("Debug message")
          # Same as Hanami.logger.debug("Debug message")

          response.body = "Check the logs 👀"
        end
      end
    end
  end
end
