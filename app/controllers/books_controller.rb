class BooksController < ApplicationController

  before_filter :find, :except => [:index, :new, :create]

  def index
    @divs = params.has_key? :divs
    @books = Book.all_by_title

    respond_to do |format|
      format.html 
      format.js do
        render :partial => "table"
      end
    end
  end

  def show; end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(params[:book])

    if @book.save
      flash[:notice] = "Book created"
      redirect_to books_path
    else
      render :action => 'new'
    end
  end

  def edit
    @ajax = params.has_key? :ajax
  end

  def update
    respond_to do |format|
      if @book.update_attributes(params[:book])
        format.html { flash[:notice] = "Book edited"; redirect_to(books_path); }
        format.js   { render :text => "Book updated" }
      else
        format.html { render :action => 'edit' }
        format.js   { raise "not good" }
      end
    end
  end

  def destroy
    @book.destroy
    flash[:notice] = "Book deleted"
    redirect_to books_path
  end

  private
  def find
    @book = Book.find(params[:id])
  end
end
