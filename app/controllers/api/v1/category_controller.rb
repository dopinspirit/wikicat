class Api::V1::CategoryController < ApplicationController

  def index
    @category = params[:category] ? params[:category]
            : "Main_topic_classifications"
  end

  def show
    category = params[:category] ? params[:category] : "Main_topic_classifications"
    @category = Category.where(:cat_title => category.capitalize).first
    
    if @category
      render :json => @category, serializer: CategorySerializer, root: "category"
    else
      render :json => {:error => {:text => "404 Not found", :status => 404}}
    end
  end
end
