class TasksController < ApplicationController
  before_action :authenticate_user!, only:[:new, :create, :edit, :update, :destroy]
  
  
  def show

  end

  def new

  end







end