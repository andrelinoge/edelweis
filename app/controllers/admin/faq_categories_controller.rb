class Admin::FaqCategoriesController < Admin::ApplicationController
  before_action :set_faq_category, only: [:show, :edit, :update, :destroy]

  def index
    @faq_categories = FaqCategory.all
  end

  def show
  end

  def new
    @faq_category = FaqCategory.new
  end

  def edit
  end

  def create
    @faq_category = FaqCategory.new(faq_params)

    if @faq_category.save
      redirect_to admin_faq_categories_url, notice: 'Faq Category was successfully created.'
    else
      render :new
    end
  end

  def update
    if @faq_category.update(faq_params)
      redirect_to admin_faq_categories_url, notice: 'Faq Category was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @faq_category.destroy
    redirect_to admin_faq_categories_url, notice: 'Faq Category was successfully destroyed.'
  end

  private
    
  def set_faq_category
    @faq_category = FaqCategory.find(params[:id])
  end

  def faq_params
    params.fetch(:faq_category, {}).permit(:title)
  end
end
