ActionController::Routing::Routes.draw do |map|
  map.resources :mypictures

  map.resources :site_contents

  map.resources :item_photos

  map.resources :items


  map.newphoto '/newphoto', :controller => 'item_photos', :action => 'new'
  map.editphoto '/editphoto', :controller => 'item_photos', :action => 'edit'
  map.deletephoto '/deletephoto', :controller => 'item_photos', :action => 'destroy'
  map.getphotoxml '/getphotoxml', :controller => 'item_photos', :action => 'getphotoxml'
  map.publicshow '/publicview', :controller => 'items', :action => 'publicview'
  map.showpic '/showpic', :controller => 'item_photos', :action => 'showpic'
  map.jewelrycollection '/jewelrycollection', :controller => 'items', :action => 'publiclist'
  map.about '/about', :controller => 'main', :action => 'about'

  map.logout '/logout', :controller => 'sessions', :action => 'destroy'
  map.login '/login', :controller => 'sessions', :action => 'new'
  #map.register '/register', :controller => 'users', :action => 'create'
  #map.signup '/signup', :controller => 'users', :action => 'new'
  map.resources :users

  map.resource :session


  map.root :controller => "main"

  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
