
class StudentsController < ApplicationController
  before_action :set_student, only: :show
  
  def index
    @students = Student.all
    render "index"
  end

  def show
    @student = Student.find(params[:id])
    render "show"
  end

  def activate_student
    @student = Student.find(params[:id])
    @student.change_status
    @student.save
    redirect_to student_path(@student) #students_path(@student)
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end