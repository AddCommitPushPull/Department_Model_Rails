class ItemsController < ApplicationController
  before_action :set_department, only: [:show, :update, :edit, :destroy]
  def index
    @departments = Department.all
  end

  def show
  end

  def new
    @department = Department.new
  end

  def edit
  end

  def update
    if @department.update(department_params)
      redirect_to @department
    else
      render :edit
    end
  end
  def create
      @sub = Sub.new(sub_params)
      
      if @sub.save
        redirect_to subs_path
      else
        render :new
      end
  end
  def destroy
    @department.destroy
    redirect_to department_path
  end


  private
    
  def set_department
    @department = Department.find(params[:id])
  end

  def department_params
    params.require(:department).permit(:name)
  end


end