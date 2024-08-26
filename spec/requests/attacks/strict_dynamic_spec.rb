require 'rails_helper'

RSpec.describe "Attacks::StrictDynamic", type: :request do
  fixtures :attacks

  describe "GET /show" do
    let(:attack) { attacks(:one) }
    it "returns http success" do
      get "/attacks/#{attack.id}/strict_dynamic"
      expect(response).to have_http_status(:success)
      expect(response.headers['Content-Security-Policy']).to include(%(script-src 'strict-dynamic'))
    end
  end
end
