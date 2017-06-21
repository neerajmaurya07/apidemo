class Api::V1::RecognizesController < Api::V1::ApiController
  require 'base64'
	skip_before_action :verify_authenticity_token
  include HTTParty

  def index
   #  @recognize = Recognize.new
  	# @recognize.secret_key = params[:secret_key]
   #  @recognize.tasks = params[:tasks]
   #  @recognize.country = params[:country]
   #  @recognize.state = params[:state]
   #  @recognize.return_image = params[:return_image]
   #  @recognize.prewarp = params[:prewarp]
   #  if params[:image].present?
   #    @image_path = params[:image]
   #    @image_file_path = @image_path.tempfile.path
   #    @recognize.image = Base64.encode64(open(@image_file_path) { |io| io.read })
   #  end
    url = 'https://api.openalpr.com/v1/recognize'
    @data = HTTParty.post(url, :body => {:task => 'plate', :secret_key => 'sk_3a31267b11a63b919889b8bf', :country => 'us', :state => 'md', :return_image => '1', :prewrap => 'yes', :image => 'http://images.myparkingsign.com/img/art/ca2011-3.jpg' }.to_json )
    byebug
  end
  

end

