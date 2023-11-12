class AddNicknameToTweets < ActiveRecord::Migration[6.1]
  def change
    add_column :tweets, :nickname, :string
  end
end
