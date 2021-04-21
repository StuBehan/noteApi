class NotesController < ApplicationController
  def index
    notes = Note.all
    json_response(notes)
  end

  def create
    note = Note.create!(note_params)
    json_response(note, :created)
  end

  private
  
  def note_params
    params.require(:note).permit(:text)
  end
end
