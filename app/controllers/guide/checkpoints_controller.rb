class Guide::CheckpointsController < ApplicationController
  def update
    @checkpoint = Checkpoint.find(params[:id])
    @checkpoint.progress = 1
    if @checkpoint.save
      redirect_to guide_tour_live_path(@checkpoint.tour)
    end
  end
end
