class CoursesController < ApplicationController

	before_action :set_course, only: [:show, :edit, :update]
	skip_before_action :require_user

	def index
	end

	def new
	end

	def show
	end

	private
	def set_course
		@course = Course.find(params[:id])
	end

end