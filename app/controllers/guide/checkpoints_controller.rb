class Guide::CheckpointsController < ApplicationController
  def index
    @checkpoints = Checkpoint.all
  end

  def update
    @checkpoint = Checkpoint.find(params[:id])
    @checkpoint.progress == 0 ? @checkpoint.progress = 1 : @checkpoint.progress = 0
    @checkpoint.save
  end
end
