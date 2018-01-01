class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :create_feedback

  private
  
  def create_feedback
    @feedback = Feedback.new
  end

end
