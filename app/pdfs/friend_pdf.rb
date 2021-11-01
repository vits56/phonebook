# frozen_string_literal: true

class FriendPdf < Prawn::Document
  def initialize(_friend)
    super()
    @friend = Friend.all
    friend_id
  end

  def friend_id
    table friend_id_all
  end

  def friend_id_all
    [%w[ID Name Email Phone Twitter]] +
      @friend.map do |friend|
        [friend.id, "#{friend.first_name}#{friend.last_name}", friend.email, friend.phone, friend.twitter]
      end
  end
end
