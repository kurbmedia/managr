module Managr
  class User < ActiveRecord::Base
    devise :database_authenticatable, :registerable, :lockable, :recoverable, :rememberable, :trackable, :validatable
  end
end