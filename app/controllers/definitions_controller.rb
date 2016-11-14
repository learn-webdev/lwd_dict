class DefinitionsController < ApplicationController
  before_action :find_word

  def create
    @definition = @word.definitions.build(definition_params)

    respond_to do |format|
      if @definition.save
        format.html { redirect_to @word, notice: 'Definition added.' }
        format.json { render :show, status: :created, location: @word }
      else
        format.html { render @word }
        format.json { render json: @definition.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def find_word
    @word = Word.find(params[:word_id])
  end

  def find_definition
    @word = Word.find(params[:word_id])
  end

  def definition_params
    params.require(:definition).permit(:definition)
  end
end
