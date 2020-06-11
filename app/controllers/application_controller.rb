class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :authorize_editor!, unless: -> { current_user.nil? || self.controller_name == 'sessions' }

  def authorize_editor!
    return if current_user.editor?

    flash[:alert] = 'You must be an editor to access this section'
    redirect_to root_path
  end
end
