require 'rails_helper'

RSpec.describe "Attacks::NoCSPs", type: :request do
  fixtures :attacks

  describe "GET /show" do
    let(:attack) { attacks(:one) }
    it "returns http success" do
      get "/attacks/#{attack.id}/no_csp"
      expect(response).to have_http_status(:success)
      expect(response.headers['Content-Security-Policy']).to be_nil
    end
  end
end
