class BusinessunitsController < ApplicationController
  # GET /businessunits
  # GET /businessunits.json
  def index
    @businessunits = Businessunit.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @businessunits }
    end
  end

  # GET /businessunits/1
  # GET /businessunits/1.json
  def show
    @businessunit = Businessunit.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @businessunit }
      format.pdf do
        pdf = BusinessunitsPdf.new(@businessunit)
        send_data pdf.render , filename: "#{@businessunit.b_name}.pdf", type: "application/pdf" , disposition: "inline"
      end
    end
  end

  # GET /businessunits/new
  # GET /businessunits/new.json
  def new
    @businessunit = Businessunit.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @businessunit }
    end
  end

  # GET /businessunits/1/edit
  def edit
    @businessunit = Businessunit.find(params[:id])
  end

  # POST /businessunits
  # POST /businessunits.json
  def create
    @businessunit = Businessunit.new(params[:businessunit])

    respond_to do |format|
      if @businessunit.save
        format.html { redirect_to @businessunit, notice: 'Businessunit was successfully created.' }
        format.json { render json: @businessunit, status: :created, location: @businessunit }
      else
        format.html { render action: "new" }
        format.json { render json: @businessunit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /businessunits/1
  # PUT /businessunits/1.json
  def update
    @businessunit = Businessunit.find(params[:id])

    respond_to do |format|
      if @businessunit.update_attributes(params[:businessunit])
        format.html { redirect_to @businessunit, notice: 'Businessunit was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @businessunit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /businessunits/1
  # DELETE /businessunits/1.json
  def destroy
    @businessunit = Businessunit.find(params[:id])
    @businessunit.destroy

    respond_to do |format|
      format.html { redirect_to businessunits_url }
      format.json { head :no_content }
    end
  end
end
