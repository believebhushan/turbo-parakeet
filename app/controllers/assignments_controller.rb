class AssignmentsController < ApplicationController
    def create_for_grade
      @word = Word.find(params[:word_id])
      @assignment = @word.assignments.build(assignment_params)
      @assignment.grade = params[:grade]
  
      if @assignment.save
        redirect_to word_path(@word), notice: 'Assignment created successfully.'
      else
        render :new
      end
    end
  
    private
  
    def assignment_params
      params.require(:assignment).permit(:title, :description, :due_date)
    end
end
  