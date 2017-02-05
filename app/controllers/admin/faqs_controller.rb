class Admin::FaqsController < Admin::ApplicationController
  before_action :set_faq, only: [:show, :edit, :update, :destroy]

  def index
    @faqs = Faq.all
  end

  def show
  end

  def new
    @faq = Faq.new
  end

  def edit
  end

  def create
    @faq = Faq.new(faq_params)

    if @faq.save
      redirect_to [:admin, @faq], notice: 'Faq was successfully created.'
    else
      render :new
    end
  end

  def update
    if @faq.update(faq_params)
      redirect_to [:admin, @faq], notice: 'Faq was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @faq.destroy
    redirect_to admin_faqs_url, notice: 'Faq was successfully destroyed.'
  end

  private
    
  def set_faq
    @faq = Faq.find(params[:id])
  end

  def faq_params
    params.fetch(:faq, {}).permit(:title, :content, :faq_category_id)
  end
end
