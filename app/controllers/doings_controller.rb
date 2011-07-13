class DoingsController < ApplicationController
  before_filter :require_user
  
  # Toggle check Doing status
  def toggle_check
    @doing = Doing.find(params[:id])
    
    # change the done flag.  ActiveRecord
    # will automatically do the boolean/int
    # conversion.
    @doing.status = @doing.status.to_i.zero?
    
    if @doing.save
      redirect_to(:action => "index")
    else
      render_text "Couldn't update item" 
    end
  end
  
  # Для полиморфии
  def context
    case params.keys.first
      when "organisation_id"
        Organisation.find(params[:organisation_id]).doings
      when "gps_modul_id"
        GpsModul.find(params[:gps_modul_id]).doings
      when "person_id"
        Person.find(params[:person_id]).doings
      else
        current_user.doings
    end
  end
  
  # GET /doings
  # GET /doings.xml
  def index
    @doings = context.all
    puts "FUCK YEAAAAA"
    puts @doings
    
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @doings }
    end
  end

  # GET /doings/1
  # GET /doings/1.xml
  def show
    @doing = Doing.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @doing }
    end
  end

  # GET /doings/new
  # GET /doings/new.xml
  def new
    @doing = Doing.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @doing }
    end
  end

  # GET /doings/1/edit
  def edit
    @doing = Doing.find(params[:id])
  end

  # POST /doings
  # POST /doings.xml
  def create
    @doing = Doing.new(params[:doing])
    @doing.creator = current_user ? current_user : nil
    respond_to do |format|
      if @doing.save
        format.html { redirect_to(@doing, :notice => 'Doing was successfully created.') }
        format.xml  { render :xml => @doing, :status => :created, :location => @doing }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @doing.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /doings/1
  # PUT /doings/1.xml
  def update
    @doing = Doing.find(params[:id])

    respond_to do |format|
      if @doing.update_attributes(params[:doing])
        format.html { redirect_to(@doing, :notice => 'Doing was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @doing.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /doings/1
  # DELETE /doings/1.xml
  def destroy
    @doing = Doing.find(params[:id])
    @doing.destroy

    respond_to do |format|
      format.html { redirect_to(doings_url) }
      format.xml  { head :ok }
    end
  end
end
