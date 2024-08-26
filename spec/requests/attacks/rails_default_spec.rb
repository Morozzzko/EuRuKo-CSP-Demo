require 'rails_helper'

RSpec.describe "Attacks::RailsDefaults", type: :request do
  fixtures :attacks

  describe "GET /show" do
    let(:attack) { attacks(:one) }
    it "returns http success" do
      get "/attacks/#{attack.id}/rails_default"
      expect(response).to have_http_status(:success)
    end
  end
end
