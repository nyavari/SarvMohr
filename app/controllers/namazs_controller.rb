class NamazsController < ApplicationController
  before_action :set_namaz, only: [:show, :edit, :update, :destroy]

  # GET /namazs
  # GET /namazs.json
  def index
    @namazs = Namaz.all
  end

  # GET /namazs/1
  # GET /namazs/1.json
  def show
  end

  # GET /namazs/new
  def new
    @namaz = Namaz.new
  end

  # GET /namazs/1/edit
  def edit
  end

  # POST /namazs
  # POST /namazs.json
  def create
    @namaz = Namaz.new(namaz_params)
    @namaz.user_id=current_user.id

    respond_to do |format|
      if @namaz.save
        format.html { redirect_to @namaz, notice: 'Namaz was successfully created.' }
        format.json { render :show, status: :created, location: @namaz }
      else
        format.html { render :new }
        format.json { render json: @namaz.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /namazs/1
  # PATCH/PUT /namazs/1.json
  def update
    respond_to do |format|
      if @namaz.update(namaz_params)
        format.html { redirect_to @namaz, notice: 'Namaz was successfully updated.' }
        format.json { render :show, status: :ok, location: @namaz }
      else
        format.html { render :edit }
        format.json { render json: @namaz.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /namazs/1
  # DELETE /namazs/1.json
  def destroy
    @namaz.destroy
    respond_to do |format|
      format.html { redirect_to namazs_url, notice: 'Namaz was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_namaz
      @namaz = Namaz.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def namaz_params
      params.require(:namaz).permit(:tedad_rokat, :name, :tozihat, :tedad)
    end
end
