module Attacks
  class HostConstrainedsController < ApplicationController
    def show
      policy = request.content_security_policy.dup

      policy.img_src :self, 'cataas.com', 'avatars.githubusercontent.com', 'images.unsplash.com'
      policy.script_src :self, 'gist.githubusercontent.com'
      policy.style_src :self, 'gist.githubusercontent.com'

      request.content_security_policy = policy
    end
  end
end
