class SearchController < ApplicationController
  def index
    search_params
    Potter.list_houses
  end

  private

  def search_params
    params.permit(:house)
  end
end
