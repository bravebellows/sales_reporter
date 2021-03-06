class CsvImportsController < ApplicationController
  before_action :set_csv_import, only: [:show, :edit, :update, :destroy]

  # GET /csv_imports
  # GET /csv_imports.json
  def index
    @csv_imports = CsvImport.all
  end

  # GET /csv_imports/1
  # GET /csv_imports/1.json
  def show
  end

  # GET /csv_imports/new
  def new
    @csv_import = CsvImport.new
  end

  # GET /csv_imports/1/edit
  def edit
  end

  # POST /csv_imports
  # POST /csv_imports.json
  def create
    @csv_import = CsvImport.new(csv_import_params)

    respond_to do |format|
      if @csv_import.save
        format.html { redirect_to @csv_import, notice: 'Csv import was successfully created.' }
        format.json { render :show, status: :created, location: @csv_import }
      else
        format.html { render :new }
        format.json { render json: @csv_import.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /csv_imports/1
  # PATCH/PUT /csv_imports/1.json
  def update
    respond_to do |format|
      if @csv_import.update(csv_import_params)
        format.html { redirect_to @csv_import, notice: 'Csv import was successfully updated.' }
        format.json { render :show, status: :ok, location: @csv_import }
      else
        format.html { render :edit }
        format.json { render json: @csv_import.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /csv_imports/1
  # DELETE /csv_imports/1.json
  def destroy
    @csv_import.destroy
    respond_to do |format|
      format.html { redirect_to csv_imports_url, notice: 'Csv import was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_csv_import
      @csv_import = CsvImport.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def csv_import_params
      params.require(:csv_import).permit(:filename, :imported)
    end
end
