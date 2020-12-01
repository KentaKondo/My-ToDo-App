class CommentsController < ApplicationController
  
  def new
    @board = Board.find(params[:board_id])
    task = Task.find(params[:task_id])
    @comment = task.comments.build(params[:id])
  end

  def create
    task = Task.find(params[:task_id])
    @board = Board.find(params[:board_id])
    @comment = task.comments.create(comment_params)
    if @comment.save!
      redirect_to board_task_path(@board, task), notice: '保存できたよ！'
    end
  end  

    private
    def comment_params 
      params.require(:comment).permit(:content, :user_id, :board_id)
    end
end