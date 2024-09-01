class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern

  private

  def current_author
    @current_author ||= if request.env["warden"].user
      Author.new(request.env["warden"].user)
    else
      Guest.new
    end
  end
end
