class CommentsController < ApplicationController
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
      gossip_id = params[:gossip_id]
      @gossips = Gossip.find(gossip_id)
      content = params["content"]
      @user = User.find(10)
      @comments = Comment.new(content: content)
      @comments.user = @user
      @comments.gossip = @gossips
      @comments.save
      if  @comments.save
          redirect_to @gossips
      end

  end
     



  def edit
  end

  def update
  end
end
