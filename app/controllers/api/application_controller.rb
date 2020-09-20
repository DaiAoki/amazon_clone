module Api
  class ApplicationController < ActionController::API
    rescue_from StandardError, with: :handle_standard_error if Rails.env.production?
    rescue_from Exception, with: :handle_500 if Rails.env.production?
    rescue_from ActiveRecord::RecordNotFound, with: :handle_404 if Rails.env.production?
    rescue_from ActionController::RoutingError, with: :handle_404 if Rails.env.production?

    def handle_standard_error(e = nil)
      fail e
    end

    def handle_500(e = nil)
      logger.error e
    end

    def handle_404(e = nil)
      logger.error e
    end
  end
end
