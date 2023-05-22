class BooksOrdersController < ApplicationController
  before_action :set_books_order, only: %i[ show edit update destroy ]

  # GET /books_orders or /books_orders.json
  def index
    @books_orders = BooksOrder.all
  end

  # GET /books_orders/1 or /books_orders/1.json
  def show
  end

  # GET /books_orders/new
  def new
    @books_order = BooksOrder.new
  end

  # GET /books_orders/1/edit
  def edit
  end

  # POST /books_orders or /books_orders.json
  def create
    @books_order = BooksOrder.new(books_order_params)

    respond_to do |format|
      if @books_order.save
        format.html { redirect_to books_order_url(@books_order), notice: "Books order was successfully created." }
        format.json { render :show, status: :created, location: @books_order }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @books_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /books_orders/1 or /books_orders/1.json
  def update
    respond_to do |format|
      if @books_order.update(books_order_params)
        format.html { redirect_to books_order_url(@books_order), notice: "Books order was successfully updated." }
        format.json { render :show, status: :ok, location: @books_order }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @books_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /books_orders/1 or /books_orders/1.json
  def destroy
    @books_order.destroy

    respond_to do |format|
      format.html { redirect_to books_orders_url, notice: "Books order was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_books_order
      @books_order = BooksOrder.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def books_order_params
      params.require(:books_order).permit(:book_id, :order_id)
    end
end
