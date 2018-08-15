class Api::BizsController < ApplicationController

  def index

    bizs = params[:location] != "default" ? Biz.in_location(params[:location]) : Biz.all

    if params[:search_term] != "default"
      bizs = Biz.in_term(bizs, params[:search_term])
    end

    @bizs = bizs
    render :index
  end

  def show
    @biz = Biz.find(params[:id])
  end

end
