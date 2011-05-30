class MypicturesController < ApplicationController
  
  before_filter :admin_required
  layout "admin"
  
  # GET /mypictures
  # GET /mypictures.xml
  def index
    @mypictures = Mypicture.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @mypictures }
    end
  end

  # GET /mypictures/1
  # GET /mypictures/1.xml
  def show
    @mypicture = Mypicture.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @mypicture }
    end
  end

  # GET /mypictures/new
  # GET /mypictures/new.xml
  def new
    @mypicture = Mypicture.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @mypicture }
    end
  end

  # GET /mypictures/1/edit
  def edit
    @mypicture = Mypicture.find(params[:id])
  end

  # POST /mypictures
  # POST /mypictures.xml
  def create
    @mypicture = Mypicture.new(params[:mypicture])

      if @mypicture.save
        flash[:notice] = 'Mypicture was successfully created.'
        redirect_to :action => 'index'
      else
        render :action => "new"
      end
  end

  # PUT /mypictures/1
  # PUT /mypictures/1.xml
  def update
    @mypicture = Mypicture.find(params[:id])

      if @mypicture.update_attributes(params[:mypicture])
        flash[:notice] = 'Mypicture was successfully updated.'
        redirect_to :action => 'index'
      else
        render :action => "edit"
      end
  end

  # DELETE /mypictures/1
  # DELETE /mypictures/1.xml
  def destroy
    @mypicture = Mypicture.find(params[:id])
    @mypicture.destroy

    respond_to do |format|
      format.html { redirect_to(mypictures_url) }
      format.xml  { head :ok }
    end
  end
end
