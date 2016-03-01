class HolmesController < ApplicationController

  rescue_from Exception do |exception|
    render_internal_error(exception)
  end
  rescue_from Mongoid::Errors::DocumentNotFound, ActionController::RoutingError do |exception|
    render_not_found(exception)
  end

  def raise_not_found!
    raise ActionController::RoutingError.new(params[:unmatched_route])
  end

  protected

  def render_not_found exception
  	byebug
    #error_notifier = ErrorNotifier.new({ code: 404, exception: exception, request_info: request, browser: browser })
    #error_notifier.notify_404

    #respond_to do |format|
    #  format.any{ render template: "errors/not_found", layout: 'errors/main', content_type: 'text/html', formats: [:html], status: 404 }
    #end
  end

end