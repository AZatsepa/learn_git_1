class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :posts
<<<<<<< HEAD
=======

>>>>>>> 8d3d4eb4114d6af641e39ee0bf1499233babfd6c
end
