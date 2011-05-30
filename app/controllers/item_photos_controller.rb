class ItemPhotosController < ApplicationController

  before_filter :admin_required, :except => ['getphotoxml']
  layout "admin", :except => ['showpic']
  
  # GET /item_photos
  # GET /item_photos.xml
  def index
    @item_photos = ItemPhoto.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @item_photos }
    end
  end

  # GET /item_photos/1
  # GET /item_photos/1.xml
  def show
    @item_photos = ItemPhoto.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @item_photos }
    end
  end

  def showpic
    @photo = ItemPhoto.find(params[:id])
  end

  def getphotoxml
    
    str = "<slide_show>"
    str += "<options>"
    str += "<interaction>"
    str += "<rotation>mouse</rotation>"            # auto, mouse, keyboard
    str += "<view_point>none</view_point>"        #none, mouse, keyboard
    str += "<speed>15</speed>"                     # [-360,360] degrees per second 
    str += "<default_view_point>50%</default_view_point>"  # [0,100] percentage
    str += "</interaction>"
    str += "</options>"
    

    items = Item.get_carousel_items
    items.each do |item|
      item.item_photos.each do |photo|
        if !photo.show_in_slideshow
          next
        end
        #str +=	"<photo href='http://www.lalunaranchwear.com/publicshow?id=" + item.id.to_s + "' target='_self'>" + photo.photo.url(:medium) + "</photo>"
        str +=	"<photo href='http://" + request.host + ":" + request.port.to_s + "/publicview?id=" + item.id.to_s + "' target='_self'>" + photo.photo.url(:medium) + "</photo>"
      end
    end


    str += "</slide_show>"

    render :text => str

  end


  # GET /item_photos/new
  # GET /item_photos/new.xml
  def new
    @item_photos = ItemPhoto.new
    @item_photos.item_id = params[:item_id]

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @item_photos }
    end
  end

  # GET /item_photos/1/edit
  def edit
    @item_photos = ItemPhoto.find(params[:id])
  end

  # POST /item_photos
  # POST /item_photos.xml
  def create
    @item_photos = ItemPhoto.new(params[:item_photo])

    respond_to do |format|
      if @item_photos.save
        flash[:notice] = 'ItemPhoto was successfully created.'
        format.html { redirect_to :controller => 'items', :action => 'show', :id => @item_photos.item_id }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @item_photos.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /item_photos/1
  # PUT /item_photos/1.xml
  def update
    @item_photos = ItemPhoto.find(params[:id])

    respond_to do |format|
      if @item_photos.update_attributes(params[:item_photo])
        flash[:notice] = 'ItemPhoto was successfully updated.'
        format.html { redirect_to :controller => 'items', :action => 'show', :id => @item_photos.item_id }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @item_photos.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /item_photos/1
  # DELETE /item_photos/1.xml
  def destroy
    @item_photos = ItemPhoto.find(params[:id])
    @item_photos.destroy

    respond_to do |format|
        format.html { redirect_to :controller => 'items', :action => 'show', :id => @item_photos.item_id }
    end
  end
end
