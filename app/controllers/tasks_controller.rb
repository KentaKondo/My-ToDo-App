class TasksController < ApplicationController
  before_action :authenticate_user!, only:[:new, :create, :edit, :update, :destroy]
  
  
  def show
    
  end

  def new
    board = Board.find(params[:board_id])
    @task = board.tasks.build
  end

  def create
    board = Board.find(params[:board_id])
    @task = board.tasks.create(user_id: current_user.id)
    if @task.save!
      redirect_to board_path(board), notice: '保存できたよ'
    else
      flash.now[:error] = '保存に失敗したよ'
      render:new
    end
  end



private

def task_params
  params.require(:task).permit(:title, :content, :eyecatch,)
end





end