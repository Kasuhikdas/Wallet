class AddbalancesController < ApplicationController
  before_action :set_addbalance, only: [:show, :edit, :update, :destroy]

  # GET /addbalances
  # GET /addbalances.json
  def index
    @addbalances = Addbalance.all
  end

  # GET /addbalances/1
  # GET /addbalances/1.json
  def show
  end

  # GET /addbalances/new
  def new
    @addbalance = Addbalance.new
  end

  # GET /addbalances/1/edit
  def edit
  end

  # POST /addbalances
  # POST /addbalances.json
  def create
    @addbalance = Addbalance.new(addbalance_params)

    respond_to do |format|
      if @addbalance.save
        format.html { redirect_to '/home/index', notice: 'Balance Added successfully' }
        format.json { render :show, status: :created, location: @addbalance }
      else
        format.html { render :new }
        format.json { render json: @addbalance.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /addbalances/1
  # PATCH/PUT /addbalances/1.json
  def update
    respond_to do |format|
      if @addbalance.update(addbalance_params)
        format.html { redirect_to @addbalance, notice: 'Addbalance was successfully updated.' }
        format.json { render :show, status: :ok, location: @addbalance }
      else
        format.html { render :edit }
        format.json { render json: @addbalance.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /addbalances/1
  # DELETE /addbalances/1.json
  def destroy
    @addbalance.destroy
    respond_to do |format|
      format.html { redirect_to addbalances_url, notice: 'Addbalance was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_addbalance
      @addbalance = Addbalance.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def addbalance_params
      params.require(:addbalance).permit(:user_id, :amount)
    end
end
