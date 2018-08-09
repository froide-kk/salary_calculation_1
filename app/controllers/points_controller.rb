class PointsController < ApplicationController
  before_action :set_point, only: [:show, :edit, :update, :destroy]
  before_action :set_salary, only: [:show, :edit, :update, :destroy]

  # GET /points
  # GET /points.json
  def index
    @points = Point.all
  end

  # GET /points/1
  # GET /points/1.json
  def show
  end

  # GET /points/new
  def new
    @point = Point.new
  end

  # GET /points/1/edit
  def edit
  end

  # POST /points
  # POST /points.json
  def create
    @point = Point.new(point_params)

    respond_to do |format|
      if @point.save
        format.html { redirect_to @point, notice: 'Point was successfully created.' }
        format.json { render :show, status: :created, location: @point }
      else
        format.html { render :new }
        format.json { render json: @point.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /points/1
  # PATCH/PUT /points/1.json
  def update
    respond_to do |format|
      if @point.update(point_params)

        @employee = Employee.find(@point.id)
        @psv = PositionStdVal.where("position_name = ?", @employee.position).first

        ability_sal = @psv.ability_val

        ability_sal = ability_sal + (@point["isms"] * EvaluationStdVal.select("eval_val").where("eval_name = ?", "ISMS").first.eval_val)
        ability_sal = ability_sal + (@point["health"] * EvaluationStdVal.select("eval_val").where("eval_name = ?", "安全衛生委員").first.eval_val)
        ability_sal = ability_sal + (@point["small_group"] * EvaluationStdVal.select("eval_val").where("eval_name = ?", "小集団").first.eval_val)
        ability_sal = ability_sal + (@point["eval_mgm"] * EvaluationStdVal.select("eval_val").where("eval_name = ?", "管理評価").first.eval_val)
        ability_sal = ability_sal + (@point["eval_tec"] * EvaluationStdVal.select("eval_val").where("eval_name = ?", "技術評価").first.eval_val)
        ability_sal = ability_sal + (@point["adjustment"] * EvaluationStdVal.select("eval_val").where("eval_name = ?", "調整").first.eval_val)

        if @point.is_short_work
            ability_sal = ability_sal * 0.75
        end

        diff = ability_sal - @salary.ability_sal

        @salary.update(:ability_sal => ability_sal)
        @salary.update(:basic_sal => @salary.basic_sal + diff)
        @salary.update(:total_sal => @salary.total_sal + diff)

        format.html { redirect_to @point, notice: 'Point was successfully updated.' }
        format.json { render :show, status: :ok, location: @point }
      else
        format.html { render :edit }
        format.json { render json: @point.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /points/1
  # DELETE /points/1.json
  def destroy
    @point.destroy
    respond_to do |format|
      format.html { redirect_to points_url, notice: 'Point was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_point
      @point = Point.find(params[:id])
    end
    def set_salary
      @salary = Salary.find(@point.id)
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def point_params
      params.require(:point).permit(:emp_id, :age_ad, :isms, :health, :small_group, :eval_mgm, :eval_tec, :adjustment, :is_short_work, :overtime)
    end
    def salary_params
      params.require(:salary).permit(:emp_id, :standard_sal, :ability_sal, :position_sal, :task_sal, :praise_sal, :residence_spt_sal, :basic_sal, :hour_sal, :over_hour_sal, :over_sal, :fam_sal, :total_sal, :last_total_sal, :diff_total_sal, :rate, :last_hour_sal, :diff_hour_sal, :last_rate)
    end
end
