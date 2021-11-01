# frozen_string_literal: true

class FriendPdf < Prawn::Document
  def initialize(_friend)
    super()
    @friend = Friend.all
    friend_id
  end

  def friend_id
    table friend_id_all do
      row(0).font_style = :bold
      self.row_colors = %w[cccccc ffffff]
      self.header = true
    end
  end

  def friend_id_all
    [%w[Name Email Phone Twitter]] +
      @friend.map do |friend|
        ["#{friend.first_name} #{friend.last_name}", friend.email, friend.phone, friend.twitter]
      end
  end
end
