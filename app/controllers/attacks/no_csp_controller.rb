module Attacks
  class NoCSPController < ApplicationController
    def show
      request.content_security_policy = nil
    end
  end
end
