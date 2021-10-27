class FriendPdf < Prawn::Document
  def initialize(friend)
    super()
    @friend = Friend.all
    friend_id
  end

  def friend_id
    table friend_id_all
  end

  def friend_id_all
    [["ID", "Name", "Email", "Phone", "Twitter"]] +
    @friend.map do |friend|
      [friend.id, friend.first_name + '' + friend.last_name, friend.email, friend.phone, friend.twitter]
    end
  end
end