class SessionsController < ApplicationController
  def new
  end

  def create
      student = Student.find_by(dotNum: params[:session][:dotNum].downcase, lname: params[:session][:lname])
      if student
        log_in student
        redirect_to student
      else
        #how to create an error message here??
        flash[:error] = "Invalid student osu dot number #{params[:session][:lname] + '.' + params[:session][:dotNum]}"
        render 'new'
      end
  end
  
  def destroy
  end

end
