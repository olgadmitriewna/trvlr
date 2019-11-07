class UserPhrasesController < ApplicationController
  def create
  @user_phrase = UserPhrase.new
  @user_phrase.user = current_user
  phrase = Phrase.find(params[:id])
  @user_phrase.phrase = phrase
  if @user_phrase.save!
    redirect_to profile_path(current_user)
  else
    render "countries/index"
  end
  end
end
