class EntriesController < ApplicationController
  def new
  end

  def create
    @entry = Entry.new(entry_params)

    @entry.save
    redirect_to @entry
  end

  private
    def entry_params
      params.require(:entry).permit(:title, :content)
    end
end
