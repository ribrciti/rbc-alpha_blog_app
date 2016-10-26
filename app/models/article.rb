class Article  < ActiveRecord::Base 

validates_presence_of :title, length: {minimum: 5, maximun: 70}
validates_presence_of :description, length: {minimum: 10, maximun: 500} 

end