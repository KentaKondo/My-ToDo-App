class ProfilesController < ApplicationController

  def edit
    @profile = current_user.prepare_profile
  end

  def show
    @profile = current_user.profile
  end

  def update
    @profile = current_user.prepare_profile
    @profile.assign_attributes(profile_params)
    if @profile.save
      redirect_to profile_path, notice: '保存しました！'
    else   
      flash.now[:error] = '更新出来ませんでした'
      render :edit
    end
  end


private 
def profile_params
  params.require(:profile).permit(
    :avatar,
    :nickname,
    :introduction,
    :birthday,
    :subscribed,
    :user_id
  )
end

end