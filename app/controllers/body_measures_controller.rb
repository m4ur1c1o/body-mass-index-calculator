class BodyMeasuresController < ApplicationController
  def index
    @body_measures = current_user.body_measures.pluck(:bmi)
  end

  def new
    @body_measure = BodyMeasure.new
  end

  def create
    @body_measure = BodyMeasure.new(body_measure_params.merge(user_id: current_user.id))

    respond_to do |format|
      if @body_measure.save
        # format.html { redirect_to new_body_measure_path, notice: 'Measure created' }
        format.js
      else
        format.html { render :new }
      end
    end
  end

  private

    def body_measure_params
      params.require(:body_measure).permit(:height, :weight)
    end

end
