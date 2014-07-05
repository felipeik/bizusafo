class HomeController < ApplicationController
  def index
    @stories = Story::Filter.new.filter(params)
  end

  def page
    render I18n.t("pages.#{params[:page_name]}")
  end
end
