class UserPhrasesController < ApplicationController
  def create
  @user_phrase = UserPhrase.new
  @user_phrase.user = current_user
  phrase = Phrase.find(params[:user_phrase][:phrase])
  country = Country.find(params[:user_phrase][:country])
  @user_phrase.phrase = phrase
  if @user_phrase.save!
    respond_to do |format|
      format.html { redirect_to country_path(country) }
      format.js
  end
  else
      respond_to do |format|
        format.html { render 'create' }
        format.js  # <-- idem
      end
    end
  end

  end
