class Prop2sController < ApplicationController
  before_action :set_prop2, only: [:show, :edit, :update, :destroy]

  # GET /prop2s
  # GET /prop2s.json
  def index
    @prop2s = Prop2.all
  end

  # GET /prop2s/1
  # GET /prop2s/1.json
  def show
  end

  # GET /prop2s/new
  def new
    @prop2 = Prop2.new
  end

  # GET /prop2s/1/edit
  def edit
  end

  # POST /prop2s
  # POST /prop2s.json
  def create
    @prop2 = Prop2.new(prop2_params)

    respond_to do |format|
      if @prop2.save
        format.html { redirect_to @prop2, notice: 'Prop2 was successfully created.' }
        format.json { render :show, status: :created, location: @prop2 }
      else
        format.html { render :new }
        format.json { render json: @prop2.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /prop2s/1
  # PATCH/PUT /prop2s/1.json
  def update
    respond_to do |format|
      if @prop2.update(prop2_params)
        format.html { redirect_to @prop2, notice: 'Prop2 was successfully updated.' }
        format.json { render :show, status: :ok, location: @prop2 }
      else
        format.html { render :edit }
        format.json { render json: @prop2.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /prop2s/1
  # DELETE /prop2s/1.json
  def destroy
    @prop2.destroy
    respond_to do |format|
      format.html { redirect_to prop2s_url, notice: 'Prop2 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_prop2
      @prop2 = Prop2.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def prop2_params
      params.require(:prop2).permit(:name)
    end
end
