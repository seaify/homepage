class HomeController < ApplicationController

  def index
  end

  def about
    @topic = Topic.find(1)
    render template: 'topics/show.html.slim'
  end

  def service
    @topic = Topic.find(2)
    render template: 'topics/show.html.slim'
  end

  def ratings
  end



end
