class Api::BizsController < ApplicationController

  def index
    # bizs = params[:tag] ? Biz.in_tag(params[:tag]) : Biz.all
    #
  end

  def show
    @biz = Biz.find(params[:id])
  end

end
