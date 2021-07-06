class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :activate]
  
  def index
    @students = Student.all
  end

  def show

  end

  def activate
@student.toggle_activate
redirect_to student_path(@student)
# render 'toggle_activate'
  end
  private

    def set_student
      @student = Student.find(params[:id])
      #
    end
end