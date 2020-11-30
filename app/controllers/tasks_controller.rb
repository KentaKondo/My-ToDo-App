class TasksController < ApplicationController
  before_action :authenticate_user!, only:[:new, :create, :edit, :update, :destroy]
  
  
  def show
    @task = Task.find(params[:id])
    @board = Board.find(params[:board_id])
  end

  
  def new
    board = Board.find(params[:board_id])
    @task = board.tasks.build
  end
  
  def create
    board = Board.find(params[:board_id])
    @task = board.tasks.create(task_params)
    if @task.save!
      redirect_to board_path(board), notice: '保存できたよ'
    else
      flash.now[:error] = '保存に失敗したよ'
      render:new
    end
  end
  
  def edit
    @task = Task.find(params[:id])
    @board = Board.find(params[:board_id])
  end

  def update
    @task = Task.find(params[:id])
    if @task.update(task_params)
    redirect_to board_task_path(id: @task, board_id: @board), notice: '更新出来ました'
    else
    flash.now[:error] = '更新出来ませんでした'
    render :edit
    end
  end

  def destroy
    @board = Board.find(params[:board_id])
    @task = current_user.tasks.find(params[:id])
    @task.destroy!
    redirect_to board_path(id: @board), notice: '削除に成功しました'
  end

private

def task_params
  params.require(:task).permit(:title, :content, :user_id, :eyecatch)
end

end