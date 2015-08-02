class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  after_filter :track_action
  private
    def track_action
      ap request.user_agent.to_s.downcase
      #ahoy.track "Processed #{controller_name}##{action_name}", request.filtered_parameters
    end
end
