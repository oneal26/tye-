class ClassCalsController < ApplicationController
  before_action :set_class_cal, only: [:show, :edit, :update, :destroy]

  # GET /class_cals
  # GET /class_cals.json
  def index
    @class_cals = ClassCal.all
  end

  # GET /class_cals/1
  # GET /class_cals/1.json
  def show
  end

  # GET /class_cals/new
  def new
    @class_cal = ClassCal.new
  end

  # GET /class_cals/1/edit
  def edit
  end

  # POST /class_cals
  # POST /class_cals.json
  def create
    @class_cal = ClassCal.new(class_cal_params)

    respond_to do |format|
      if @class_cal.save
        format.html { redirect_to @class_cal, notice: 'Class cal was successfully created.' }
        format.json { render :show, status: :created, location: @class_cal }
      else
        format.html { render :new }
        format.json { render json: @class_cal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /class_cals/1
  # PATCH/PUT /class_cals/1.json
  def update
    respond_to do |format|
      if @class_cal.update(class_cal_params)
        format.html { redirect_to @class_cal, notice: 'Class cal was successfully updated.' }
        format.json { render :show, status: :ok, location: @class_cal }
      else
        format.html { render :edit }
        format.json { render json: @class_cal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /class_cals/1
  # DELETE /class_cals/1.json
  def destroy
    @class_cal.destroy
    respond_to do |format|
      format.html { redirect_to class_cals_url, notice: 'Class cal was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_class_cal
      @class_cal = ClassCal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def class_cal_params
      params.require(:class_cal).permit(:name, :start_time, :end_time)
    end
end
