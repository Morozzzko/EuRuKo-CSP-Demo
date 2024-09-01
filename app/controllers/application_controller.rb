class ApplicationController < ActionController::Base
  private

  def current_author
    @current_author ||= if request.env["warden"].user
      Author.new(request.env["warden"].user)
    else
      Guest.new
    end
  end
end
