module Attacks
  class HostConstrainedsController < ApplicationController
    def show
      policy = request.content_security_policy.dup

      policy.script_src :self, 'gist.githubusercontent.com'
      policy.style_src :self, 'gist.githubusercontent.com'

      request.content_security_policy = policy
    end
  end
end
