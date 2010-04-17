class SharedInterestPointsController < ApplicationController
  # GET /shared_interest_points
  # GET /shared_interest_points.xml
  def index
    @shared_interest_points = SharedInterestPoint.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @shared_interest_points }
    end
  end

  # GET /shared_interest_points/1
  # GET /shared_interest_points/1.xml
  def show
    @shared_interest_point = SharedInterestPoint.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @shared_interest_point }
    end
  end

  # GET /shared_interest_points/new
  # GET /shared_interest_points/new.xml
  def new
    @shared_interest_point = SharedInterestPoint.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @shared_interest_point }
    end
  end

  # GET /shared_interest_points/1/edit
  def edit
    @shared_interest_point = SharedInterestPoint.find(params[:id])
  end

  # POST /shared_interest_points
  # POST /shared_interest_points.xml
  def create
    @shared_interest_point = SharedInterestPoint.new(params[:shared_interest_point])

    respond_to do |format|
      if @shared_interest_point.save
        flash[:notice] = 'SharedInterestPoint was successfully created.'
        format.html { redirect_to(@shared_interest_point) }
        format.xml  { render :xml => @shared_interest_point, :status => :created, :location => @shared_interest_point }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @shared_interest_point.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /shared_interest_points/1
  # PUT /shared_interest_points/1.xml
  def update
    @shared_interest_point = SharedInterestPoint.find(params[:id])

    respond_to do |format|
      if @shared_interest_point.update_attributes(params[:shared_interest_point])
        flash[:notice] = 'SharedInterestPoint was successfully updated.'
        format.html { redirect_to(@shared_interest_point) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @shared_interest_point.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /shared_interest_points/1
  # DELETE /shared_interest_points/1.xml
  def destroy
    @shared_interest_point = SharedInterestPoint.find(params[:id])
    @shared_interest_point.destroy

    respond_to do |format|
      format.html { redirect_to(shared_interest_points_url) }
      format.xml  { head :ok }
    end
  end
end
