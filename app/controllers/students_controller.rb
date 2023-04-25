class StudentsController < ApplicationController
    def show_daily_assignment
      puts "params"
      @data=params
      @student = Student.find(params[:student_id])
      @assignment = Assignment.where(grade:@student.grade).first
    end

    def show
      @student=Student.find(params[:id])
    end

    def submit_assignment
        @student = Student.find(params[:student_id])
        @submission = @student.submissions.build(submission_params)
    
        if @submission.save
          redirect_to @student, notice: 'Assignment submitted successfully.'
        else
          render :show_daily_assignment
        end
    end
    def submission_params
        params.require(:submission).permit(:assignment_id, :sentence, :date)
    end
end
  