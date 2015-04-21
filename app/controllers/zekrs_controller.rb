class ZekrsController < ApplicationController
  before_action :set_zekr, only: [:show, :edit, :update, :destroy]

  # GET /zekrs
  # GET /zekrs.json
 
	def index
	#if params[:user_id]
	#@user = User.where(user_id: params[:user_id]).first
	#@zekrs = @user.zekrs
	#else
	@zekrs = Zekr.all
	end
	#end


  # GET /zekrs/1
  # GET /zekrs/1.json
  def show
  end

  # GET /zekrs/new
  def new
    @zekr = Zekr.new
  end

  # GET /zekrs/1/edit
  def edit
  end

  # POST /zekrs
  # POST /zekrs.json
  def create
    @zekr = Zekr.new(zekr_params)
    @zekr.user_id=current_user.id
    respond_to do |format|
      if @zekr.save
        format.html { redirect_to @zekr, notice: 'Zekr was successfully created.' }
        format.json { render :show, status: :created, location: @zekr }
      else
        format.html { render :new }
        format.json { render json: @zekr.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /zekrs/1
  # PATCH/PUT /zekrs/1.json
  def update
    respond_to do |format|
      if @zekr.update(zekr_params)
        format.html { redirect_to @zekr, notice: 'Zekr was successfully updated.' }
        format.json { render :show, status: :ok, location: @zekr }
      else
        format.html { render :edit }
        format.json { render json: @zekr.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /zekrs/1
  # DELETE /zekrs/1.json
  def destroy
    @zekr.destroy
    respond_to do |format|
      format.html { redirect_to zekrs_url, notice: 'Zekr was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_zekr
      @zekr = Zekr.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def zekr_params
      params.require(:zekr).permit(:name, :tozihat, :tedad)
    end
end
