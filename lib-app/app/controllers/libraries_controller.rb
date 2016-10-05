class LibrariesController < ApplicationController

  def index
  	@libraries = Library.all
  end

  def new
  	@library = Library.new
  end

  def create
  	@library = Library.create(library_params)
  	redirect_to libraries_path
  end

  def show
  	@library = Library.find_by_id(params[:id])
  end

  def edit
    @library = Library.find(params[:library_id])
  end

  def update
    @library.update(library_params)    
  end

  private

  def library_params
  	params.require(:library).permit(:name, :floor_count, :floor_area)
  end

end
