# This file is used by Rack-based servers to start the application.

require_relative "config/environment"

use Warden::Manager do |manager|
  manager.serialize_into_session do |user_hash|
    user_hash
  end

  manager.serialize_from_session do |hash|
    hash
  end
end
run Rails.application
Rails.application.load_server
