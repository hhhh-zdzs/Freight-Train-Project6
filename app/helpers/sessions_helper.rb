module SessionsHelper
    def log_in(student)
        session[:student_dotNum] = student.dotNum
    end

    def current_student
        if session[:student_dotNum]
            @current_student ||= Student.find_by(dotNum: session[:student_dotNum])
        end
    end

    def logged_in?
        !current_student.nil?
    end
end
