class MerchandisesController < ApplicationController

  include Databasedotcom::Rails::Controller

  # GET /merchandises
  # GET /merchandises.json
  def index
    @merchandises = Merchandise__c.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @merchandises }
    end
  end

  # GET /merchandises/1
  # GET /merchandises/1.json
  def show
    @merchandise = Merchandise__c.find(params[:id])
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @merchandise }
    end
  end

  # GET /merchandises/new
  # GET /merchandises/new.json
  def new
    @merchandise = Merchandise__c.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @merchandise }
    end
  end

  # GET /merchandises/1/edit
  def edit
    @merchandise = Merchandise__c.find(params[:id])
  end

  # POST /merchandises
  # POST /merchandises.json
  def create
    @merchandise = Merchandise__c.new(params[:merchandise__c])
    # hard code some required fields
    @merchandise['OwnerId'] = '005d0000000xhst'
    @merchandise['Price__c'] = '5.0'
    @merchandise['Total_Inventory__c'] = '3'

    respond_to do |format|
      if @merchandise.save
        format.html { redirect_to :action => :index, notice: 'Merchandise was successfully created.' }
        format.json { render json: @merchandise, status: :created, location: @merchandise }
      else
        format.html { render action: "new" }
        format.json { render json: @merchandise.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /merchandises/1
  # PUT /merchandises/1.json
  def update
    @merchandise = Merchandise__c.find(params[:id])
    
    respond_to do |format|
      if @merchandise.update_attributes(params[:merchandise__c])
        format.html { redirect_to :action => :show }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @merchandise.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /merchandises/1
  # DELETE /merchandises/1.json
  def destroy
    @merchandise = Merchandise__c.find(params[:id])
   @merchandise.delete

    respond_to do |format|
      format.html { redirect_to merchandises_url }
      format.json { head :no_content }
    end
  end
end
