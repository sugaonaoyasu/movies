class Post < ApplicationRecord
     belongs_to :user
     validates :title, :body, {presence:true} 
     validates :title, {length: {maximum: 100}}
     validates :body, {length: {maximum: 300}}
end
