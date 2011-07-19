class DoingsController < ApplicationController
  before_filter :require_user
  
  def dbgtxt(text, color_code=31)
    puts "\e[#{color_code}m#{text}\e[0m"
  end
  
  # Toggle check Doing status
  def toggle_check
    @doing = Doing.find(params[:id])
    
    # change the done flag.  ActiveRecord
    # will automatically do the boolean/int
    # conversion.
    @doing.status = @doing.status.to_i.zero?
    
    if @doing.save
      render :text => "ok"
    else
      p @doing.errors
      p @doing.from
      render :text => "Couldn't update item" 
    end
  end
  
  # Для полиморфии
  def context
    if params[:gps_modul_id]
        dbgtxt "GPS MODULS  #{params[:gps_modul_id]}"
        GpsModul.find(params[:gps_modul_id])
    elsif params[:organisation_id]
        dbgtxt "Organisation  #{params[:organisation_id]}"
        Organisation.find(params[:organisation_id])    
    elsif params[:person_id]
        dbgtxt "Person  #{params[:person_id]}"
        Person.find(params[:person_id])
    else
      #  dbgtxt "USERRRRR"                  
        current_user
    end
  end
  
  # GET /doings
  # GET /doings.xml
  def index
    dbgtxt context.type
    @doings = context.doings
    @context = context
    if request.xhr?
      render :partial => "index"
    else
      respond_to do |format|
        format.html # index.html.erb
        format.xml  { render :xml => @doings }
      end
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
    @doing.creator = current_user 
    @doing.executor = current_user
    @doing.description = "Новая задача"
    @doing.from = context if context.type.to_s == 'People'
    @doing.organisation = context if context.type.to_s == 'Organisation'
    @doing.gps_modul = context if context.type.to_s == 'GpsModul'
    
    if request.xhr?
      dbgtxt "NEW"
      render :partial => "form" if @doing.save
    end
    #respond_to do |format|
    #format.html # new.html.erb
    #format.xml  { render :xml => @doing }
    #end
  end

  # GET /doings/1/edit
  def edit
    @doing = Doing.find(params[:id])
  end

  # POST /doings
  # POST /doings.xml
  def create
    @doing = Doing.new(params[:doing])
  # respond_to do |format|
  #   if @doing.save
  #    format.html { redirect_to(@doing, :notice => 'Doing was successfully created.') }
  #    format.xml  { render :xml => @doing, :status => :created, :location => @doing }
  #  else
  #   format.html { render :action => "new" }
  #    format.xml  { render :xml => @doing.errors, :status => :unprocessable_entity }
  #  end
  # end
  end

  # PUT /doings/1
  # PUT /doings/1.xml
  def update
    @doing = Doing.find(params[:id])
      
    if request.xhr?
      @doing = Doing.find(params[:id])
      dbgtxt "Doing #{@doing.id} UPDATE"
      params.delete("id")
      params.delete("action")
      params.delete("controller")
      @doing.update_attribute(params.keys.first,params[params.keys.first])
      render :text => @doing.attribute_for_inspect(params.keys.first).delete('"')  
    end
   
   # respond_to do |format|
   #   if @doing.update_attributes(params[:doing])
   #     format.html { redirect_to(@doing, :notice => 'Doing was successfully updated.') }
   #     format.xml  { head :ok }
   #   else
   #     format.html { render :action => "edit" }
   #     format.xml  { render :xml => @doing.errors, :status => :unprocessable_entity }
   #   end
   # end
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
