class Form2sController < ApplicationController
  def new
    @form2 = Form2.new
  end

  def show
    @form2 = Form2.find(params[:id])
  end

  def index
    @form2 = Form2.where(user_id: current_user.id)
    respond_to do |format|
      format.html
      format.csv { send_data @form2.as_csv }
    end
  end

  def edit
    @form2 = Form2.find(params[:id])
  end

  def update
    @form2 = Form2.find(params[:id])
    if @form2.update(form2_params)
      # Handle a successful update.
      flash[:success] = "Form updated"
      redirect_to current_user
    else
      render "edit"
    end
  end

  def create
    @form2 = Form2.new(form2_params.merge(user_id: current_user.id))
    if @form2.save
      flash[:success] = "Successful!"
      redirect_to current_user
    else
      render "new"
    end
  end

  private

  def form2_params
    params.require(:form2).permit(:company_name, :tax_code, :address, :name, :career, :date, :work_decs, :income, :note)
  end
end
