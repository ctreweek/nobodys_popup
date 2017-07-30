class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :show]

  def home
  end

  def about
    # render template: "pages/#{params[:about]}"
  end
end
