class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :edit, :update, :destroy]

  # GET /students
  # GET /students.json
  def index
    @students = Student.all
  end

  # GET /students/1
  # GET /students/1.json
  def show
  	@students = Student.all
    @current_path = '/students/'+params[:id];
  end

  # GET /students/:id/:idL
  def evaluatePage
      @student = Student.find(params[:id])
      @studentL = Student.find(params[:idL])
      if # it is a get with parameters like http://127.0.0.1:3000/students/1/2?student_score=999&student_comment=QQQ
        # then update the @studentL's score and comment
        # @studentL.score = params[:student_score]
        # @studentL.common = @studentL.common.to_s + @student.fname.to_s + params[:student_score]
      else
        # just show the empty from
      end
  end

  # GET /students/new
  def new
    @student = Student.new
    @groups = Group.all
  end

  # GET /students/1/edit
  def edit
    @groups = Group.all
  end

  # POST /students
  # POST /students.json
  def create
    @student = Student.new(student_params)

    respond_to do |format|
      if @student.save
        format.html { redirect_to @student, notice: 'Student was successfully created.' }
        format.json { render :show, status: :created, location: @student }
      else
        format.html { render :new }
        format.json { render json: @student.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /students/1
  # PATCH/PUT /students/1.json
  def update
    respond_to do |format|
      if @student.update(student_params)
        format.html { redirect_to @student, notice: 'Student was successfully updated.' }
        format.json { render :show, status: :ok, location: @student }
      else
        format.html { render :edit }
        format.json { render json: @student.errors, status: :unprocessable_entity }
      end
    end
  end

  # def updateReview
  #   puts 'OOOOKKKKK!'
  # end

  # DELETE /students/1
  # DELETE /students/1.json
  def destroy
    @student.destroy
    respond_to do |format|
      format.html { redirect_to students_url, notice: 'Student was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_student
      @student = Student.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def student_params
      params.require(:student).permit(:fname, :lname, :dotNum, :group_id)
    end

end
