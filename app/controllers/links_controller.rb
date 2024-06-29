class LinksController < ApplicationController
  before_action :authenticate_user!, only: [:update]

  def update
    @link = Link.find(params[:id])
    if @link.update(link_params)
      redirect_to root_path, notice: "Updated links Success"
    end
  end

  private

  def link_params
    params.require(:link).permit(:url, :title)
  end
end

