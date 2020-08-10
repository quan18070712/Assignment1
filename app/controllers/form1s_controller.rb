class Form1sController < ApplicationController
  def new
    @form1 = Form1.new
  end

  def show
    @form1 = Form1.find(params[:id])
  end

  def edit
    @form1 = Form1.find(params[:id])
  end

  def update
    @form1 = Form1.find(params[:id])
    if @form1.update(form1_params)
      # Handle a successful update.
      flash[:success] = "Form updated"
      redirect_to current_user
    else
      render "edit"
    end
  end

  def create
    @form1 = Form1.new(form1_params.merge(user_id: current_user.id))
    if @form1.save
      flash[:success] = "Successful!"
      redirect_to current_user
    else
      render "new"
    end
  end

  private

  def form1_params
    params.require(:form1).permit(:name, :time, :job, :date, :customer, :income, :work_desc)
  end
end
