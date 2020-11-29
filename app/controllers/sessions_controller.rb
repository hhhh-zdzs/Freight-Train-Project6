class SessionsController < ApplicationController
  def new
  end

  def create
      student = Student.find_by(dotNum: params[:session][:dotNum].downcase)
      if student
        log_in student
        redirect_to student
      else
        # not sure how to create this error login meesage
        render 'new'
      end
  end
  
  def destroy
  end

end
