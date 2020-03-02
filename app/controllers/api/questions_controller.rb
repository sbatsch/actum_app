class Api::QuestionsController < ApplicationController
  before_action :authenticate_user
  
  def index
    @questions = Question.all
    render 'index.json.jb'
  end

  def create
    @question = Question.new(description: params[:description],
                             category: params[:category],
                             difficulty_level:  params[:difficulty_level],
                             answer_key: params[:answer_key],
                             answer_a: params[:answer_a],
                             answer_b: params[:answer_b],
                             answer_c: params[:answer_c],
                             answer_d: params[:answer_d],
                             true_false: params[:true_false]
                            )
    if @question.save
      render 'show.json.jb'
    else
      render json: {errors: @question.errors.full_messages}, status: :unprocessable_entity
    end 
  end 

  def show
    @question = Question.find(params[:id])
    render 'show.json.jb'
  end

  def update
    @question = Question.find(params[:id])

    @question.description = params[:description] || @question.description
    @question.category = params[:category] || @question.category
    @question.difficulty_level = params[:difficulty_level] || @question.difficulty_level
    @question.answer_key = params[:answer_key] || @question.answer_key
    @question.answer_a = params[:answer_a] || @question.answer_a
    @question.answer_b = params[:answer_b] || @question.answer_b
    @question.answer_c = params[:answer_c] || @question.answer_c
    @question.answer_d = params[:answer_d] || @question.answer_d
    @question.true_false = params[:true_false] || @question.true_false


    if @question.save 
      render 'show.json.jb'
    else
      render json: {errors: @question.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    @question = Question.find(params[:id])
    @question.destroy
    render json: {message: "Question terminated."}
  end

end
