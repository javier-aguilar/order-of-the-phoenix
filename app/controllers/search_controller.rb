class SearchController < ApplicationController
  def index
    @members = Potter.list_house_members_in_oof(search_params[:house])
  end

  private

  def search_params
    params.permit(:house)
  end
end
