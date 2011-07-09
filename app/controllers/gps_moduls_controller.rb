class GpsModulsController < ApplicationController
  before_filter :require_user
  
  # GET /gps_moduls
  # GET /gps_moduls.xml
  def index
    @gps_moduls = GpsModul.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @gps_moduls }
    end
  end

  # GET /gps_moduls/1
  # GET /gps_moduls/1.xml
  def show
    @gps_modul = GpsModul.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @gps_modul }
    end
  end

  # GET /gps_moduls/new
  # GET /gps_moduls/new.xml
  def new
    @gps_modul = GpsModul.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @gps_modul }
    end
  end

  # GET /gps_moduls/1/edit
  def edit
    @gps_modul = GpsModul.find(params[:id])
  end

  # POST /gps_moduls
  # POST /gps_moduls.xml
  def create
    @gps_modul = GpsModul.new(params[:gps_modul])

    respond_to do |format|
      if @gps_modul.save
        format.html { redirect_to(@gps_modul, :notice => 'Gps modul was successfully created.') }
        format.xml  { render :xml => @gps_modul, :status => :created, :location => @gps_modul }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @gps_modul.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /gps_moduls/1
  # PUT /gps_moduls/1.xml
  def update
    @gps_modul = GpsModul.find(params[:id])

    respond_to do |format|
      if @gps_modul.update_attributes(params[:gps_modul])
        format.html { redirect_to(@gps_modul, :notice => 'Gps modul was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @gps_modul.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /gps_moduls/1
  # DELETE /gps_moduls/1.xml
  def destroy
    @gps_modul = GpsModul.find(params[:id])
    @gps_modul.destroy

    respond_to do |format|
      format.html { redirect_to(gps_moduls_url) }
      format.xml  { head :ok }
    end
  end
  
  def checkforupdate
    
  end
  
  def sync
    
  end
end
