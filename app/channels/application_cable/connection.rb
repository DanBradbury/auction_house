module ApplicationCable
  class Connection < ActionCable::Connection::Base
    identified_by :current_user

    def connect
      self.current_user = find_user
    end

    private
    def find_user
      puts cookies.encrypted[:user_id]
      if user = User.find_by(id: cookies.encrypted["user_id"])
        user
      else
        puts "REJECTED"
        reject_unauthorized_connection
      end
    end
  end
end
