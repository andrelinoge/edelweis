class Admin::InfoBlocksController < Admin::ApplicationController
  before_action :set_info_block, only: [:show, :edit, :update, :destroy]

  def index
    @info_blocks = InfoBlock.all
  end

  def show
  end

  def edit
  end

  def update
    if @info_block.update(info_block_params)
      redirect_to [:admin, @info_block], notice: 'InfoBlock was successfully updated.'
    else
      render :edit
    end
  end

  private

  def set_info_block
    @info_block = InfoBlock.find(params[:id])
  end

  def info_block_params
    params.require(:info_block).permit(:title, :content, :image, :image_description)
  end
end
