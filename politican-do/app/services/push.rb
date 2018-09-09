class Push
  PUSH_URI = "https://fcm.googleapis.com/fcm/send"

  def initialize(push_params)
    @body = push_params[:body]
    @path = push_params[:path]
  end

  def call
    send_notification
  end

  private
    def send_notification
      firebase_key = "AAAAKERUTTE:APA91bG1_K_L8ZYIH19UPCNofvVioXeW3yispW2Mvb_jU2PNP0hMhE8Uy411HHd7Ioth3uNNawgqQ-NOEGNyJBoTIk5gox3JdffDSS6ZqRRg02m8ZGsMR7MYfWpRV7xw4faU5uw8sPfb"

      data = {
        notification: {
          title: 'Testando notificação',
          body:  "teste",
          click_action: "teste",
          icon: "teste"
        }
      }

      Token.all.each do |token|
        data.merge!({to: token.token})
        @result = HTTParty.post(PUSH_URI, body: data.to_json, headers: { 'Content-Type' => 'application/json', "Authorization" => "key=#{firebase_key}" } )
      end
    end
end
