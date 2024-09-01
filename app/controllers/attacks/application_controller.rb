module Attacks
  class ApplicationController < ::ApplicationController
    before_action :set_attack

    layout 'attacks'

    private

    def set_attack
      @attack = Attack.find(params[:id])
    end
  end
end
