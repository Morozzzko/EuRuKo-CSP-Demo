module Attacks
  class StrictDynamicController < ApplicationController
    def show
      policy = request.content_security_policy.dup

      policy.script_src :strict_dynamic
      policy.style_src :self

      request.content_security_policy = policy
    end
  end
end
