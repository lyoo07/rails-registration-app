class BooksController < ApplicationController
  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      redirect_to books_path, notice: "保存しました"
    else
      flash.now[:alert] = "保存できませんでした"
      render :new
    end
  end

  def index
    @books = Book.all
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    redirect_to books_path, notice: "登録を削除しました"
  end

  def update
    @book = Book.find(params[:id])
    @book.update(book_params)
    redirect_to books_path, notice: "編集しました"
  end

  def show
    @book = Book.find(params[:id])
  end

  def edit
    @book = Book.find(params[:id])
  end

  private

  def book_params
    params.require(:book).permit(:title, :author, :impression, :star)
  end
end
