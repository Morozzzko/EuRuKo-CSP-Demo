class AttacksController < ApplicationController
  before_action :set_attack, only: %i[ show edit update destroy ]

  # GET /attacks or /attacks.json
  def index
    @attacks = Attack.all
  end

  # GET /attacks/1 or /attacks/1.json
  def show
  end

  # GET /attacks/new
  def new
    @attack = Attack.new
  end

  # GET /attacks/1/edit
  def edit
    unless request.env["warden"].authenticated?
      head :forbidden
    end
  end

  # POST /attacks or /attacks.json
  def create
    @attack = Attack.new(attack_params)

    respond_to do |format|
      if @attack.save
        format.html { redirect_to attack_url(@attack), notice: "Attack was successfully created." }
        format.json { render :show, status: :created, location: @attack }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @attack.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /attacks/1 or /attacks/1.json
  def update
    respond_to do |format|
      if @attack.update(attack_params)
        format.html { redirect_to attack_url(@attack), notice: "Attack was successfully updated." }
        format.json { render :show, status: :ok, location: @attack }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @attack.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /attacks/1 or /attacks/1.json
  def destroy
    @attack.destroy!

    respond_to do |format|
      format.html { redirect_to attacks_url, notice: "Attack was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_attack
      @attack = Attack.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def attack_params
      params.require(:attack).permit(:title, :description, :secured_by, :body)
    end
end
