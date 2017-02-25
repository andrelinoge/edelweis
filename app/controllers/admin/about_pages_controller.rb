class Admin::AboutPagesController < Admin::ApplicationController
  before_action :set_about_page, only: [:show, :edit, :update, :destroy]

  def index
    @about_pages = AboutPage.all
  end

  def show
  end

  def new
    @about_page = AboutPage.new
  end

  def edit
  end

  def create
    @about_page = AboutPage.new(about_page_params)

    if @about_page.save
      redirect_to [:admin, @about_page], notice: 'AboutPage was successfully created.'
    else
      render :new
    end
  end

  def update
    if @about_page.update(about_page_params)
      redirect_to [:admin, @about_page], notice: 'AboutPage was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @about_page.destroy
    redirect_to admin_about_pages_url, notice: 'AboutPage was successfully destroyed.'
  end

  private

  def set_about_page
    @about_page = AboutPage.find(params[:id])
  end

  def about_page_params
    params.require(:about_page).permit(:title, :content, :image, :image_description, :remove_image)
  end
end
