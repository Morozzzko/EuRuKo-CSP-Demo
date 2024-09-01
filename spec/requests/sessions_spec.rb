require 'rails_helper'

RSpec.describe "Sessions", type: :request do
  describe "POST /logout" do
    before do
      login_as({ uid: '123', nickname: 'test', image_url: 'test', profile_url: 'test' })
    end

    it 'logs out and redirects' do
      post '/logout'
      expect(response).to be_redirect
    end
  end
end
