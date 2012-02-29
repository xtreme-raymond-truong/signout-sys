class SignoutLogsController < ApplicationController
  # GET /signout_logs
  # GET /signout_logs.json
  def index
    @signout_logs = SignoutLog.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @signout_logs }
    end
  end

  # GET /signout_logs/1
  # GET /signout_logs/1.json
  def show
    @signout_log = SignoutLog.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @signout_log }
    end
  end

  # GET /signout_logs/new
  # GET /signout_logs/new.json
  def new
    @signout_log = SignoutLog.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @signout_log }
    end
  end

  # GET /signout_logs/1/edit
  def edit
    @signout_log = SignoutLog.find(params[:id])
  end

  # POST /signout_logs
  # POST /signout_logs.json
  def create
    @signout_log = SignoutLog.new(params[:signout_log])

    respond_to do |format|
      if @signout_log.save
        format.html { redirect_to @signout_log, :notice => 'Signout log was successfully created.' }
        format.json { render :json => @signout_log, :status => :created, :location => @signout_log }
      else
        format.html { render :action => "new" }
        format.json { render :json => @signout_log.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /signout_logs/1
  # PUT /signout_logs/1.json
  def update
    @signout_log = SignoutLog.find(params[:id])

    respond_to do |format|
      if @signout_log.update_attributes(params[:signout_log])
        format.html { redirect_to @signout_log, :notice => 'Signout log was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @signout_log.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /signout_logs/1
  # DELETE /signout_logs/1.json
  def destroy
    @signout_log = SignoutLog.find(params[:id])
    @signout_log.destroy

    respond_to do |format|
      format.html { redirect_to signout_logs_url }
      format.json { head :no_content }
    end
  end
end
