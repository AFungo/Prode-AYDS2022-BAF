# frozen_string_literal: true

# add pasword to user
class AddPasswordDigestToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :gamblers, :password_digest, :string, default: '', null: false
  end
end
