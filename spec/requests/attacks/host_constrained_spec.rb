require 'rails_helper'

RSpec.describe "Attacks::HostConstraineds", type: :request do
  fixtures :attacks

  describe "GET /show" do
    let(:attack) { attacks(:one) }
    it "returns http success" do
      get "/attacks/#{attack.id}/host_constrained"
      expect(response).to have_http_status(:success)
      expect(response.headers['Content-Security-Policy']).to include('gist.githubusercontent.com')
    end
  end
end
