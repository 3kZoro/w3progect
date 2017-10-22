class UserregsController < ApplicationController
  before_action :set_userreg, only: [:show, :edit, :update, :destroy]

  # GET /userregs
  # GET /userregs.json
  def index
    @userregs = Userreg.all
  end

  # GET /userregs/1
  # GET /userregs/1.json
  def show
  end

  # GET /userregs/new
  def new
    @userreg = Userreg.new
  end

  # GET /userregs/1/edit
  def edit
  end

  # POST /userregs
  # POST /userregs.json
  def create
    @userreg = Userreg.new(userreg_params)

    respond_to do |format|
      if @userreg.save
        format.html { redirect_to @userreg, notice: 'Userreg was successfully created.' }
        format.json { render :show, status: :created, location: @userreg }
      else
        format.html { render :new }
        format.json { render json: @userreg.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /userregs/1
  # PATCH/PUT /userregs/1.json
  def update
    respond_to do |format|
      if @userreg.update(userreg_params)
        format.html { redirect_to @userreg, notice: 'Userreg was successfully updated.' }
        format.json { render :show, status: :ok, location: @userreg }
      else
        format.html { render :edit }
        format.json { render json: @userreg.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /userregs/1
  # DELETE /userregs/1.json
  def destroy
    @userreg.destroy
    respond_to do |format|
      format.html { redirect_to userregs_url, notice: 'Userreg was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_userreg
      @userreg = Userreg.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def userreg_params
      params.require(:userreg).permit(:FirstName, :LastName, :Age, :Email, :City, :Password)
    end
end
