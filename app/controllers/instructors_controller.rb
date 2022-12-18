class InstructorsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
    
    def index
        instructors = Instructor.all
        render json: instructors
    end

    def show
        instructor = find_instructor
        render json: instructor
    end

    def create
        instructor = Instructor.create(instructor_params)
        render json: instructor
    end

    def update
        # Use the PATCH http verb in postman 
        # find instructor to update using private method
        # instructor = find_instructor
        # if instructor
        #     instructor.update(instructor_params)
        #     render json: instructor, status: :accepted
        # else
        #     render_not_found_repsonsense
        # end

        # After rescue_from
        instructor = find_instructor
        render json: instructor, status: :accepted
    end

    def destroy
        # First we confirm the instructor exists 
        # instructor = find_instructor
        # if instructor
        #     instructor.destroy
        #     head :no_content
        # else
        #     render_not_found_repsonsense
        # end

        # After rescue_from
        instructor = find_instructor
        instructor.destroy
        head :no_content
    end

    private

    def find_instructor
        Instructor.find(params[:id])
    end

    def instructor_params
        params.permit(:name)
    end

    def render_not_found_response
        render json: {error: "Instructor not found"}, status: :not_found
    end

end
