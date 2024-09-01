# frozen_string_literal: true

class OauthGithubConfig < ApplicationConfig
  config_name :oauth_github

  attr_config :client_id, :client_secret
end
