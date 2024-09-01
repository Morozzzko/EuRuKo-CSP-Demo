require 'rails_helper'

RSpec.describe "Sessions", type: :request do
  describe "GET /login" do
    it('redirects to /auth/github') do
      get '/login'
      expect(response).to be_redirect
    end
  end
end
