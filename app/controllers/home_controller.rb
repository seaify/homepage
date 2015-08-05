class HomeController < ApplicationController
  layout "application", except: [:index]

  def index
  end

  def about
    @topic = Topic.find(1)
    @topic_qrcode = RQRCode::QRCode.new(request.original_url).as_png(size: 231)
    ap @topic_qrcode.class
    ap request.original_url
    render template: 'topics/show.html.slim'
  end

  def service
    @topic = Topic.find(2)
    @topic_qrcode = RQRCode::QRCode.new(request.original_url).as_png(size: 231)
    render template: 'topics/show.html.slim'
  end

  def ratings
  end

end
