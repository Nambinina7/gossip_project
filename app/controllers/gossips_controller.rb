class GossipsController < ApplicationController
  def index
    @users = User.all
    @gossips = Gossip.all
  end

  def show
      id = params['id']
      @gossips = Gossip.find(id)
  end

  def new
  end

  def create
      title = params["title"]
      content = params["content"]

      @user = User.find(11)

      @gossips = Gossip.new(title: title, content: content)
      @gossips.user = @user
      @gossips.save

      if  @gossips.save
          flash[:success] ="Gossip ajouter avec succés"
          redirect_to gossips_path
      else
        render :new
        flash[:danger] ="Gossip non ajouter"
      end
      

  end

  def edit
      @gossips = Gossip.find(params[:id])
  end

  def update
      title = params["title"]
      content = params["content"]
      @gossips = Gossip.find(params[:id])
      @gossips.update(title: title, content: content)
      
     if  @gossips.save
        redirect_to gossips_path
      else
        render "edit"
      end
  end

  def destroy
      @gossips = Gossip.find(params[:id])
      @gossips.destroy
      redirect_to gossips_path
  end
end


