Rails.application.config.middleware.use OmniAuth::Builder do
  provider :developer if Rails.env.development?
  provider :github, OauthGithubConfig.client_id, OauthGithubConfig.client_secret
end
