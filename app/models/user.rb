class User < ActiveRecord::Base
 # include BCrypt
 has_many :surveys
end
