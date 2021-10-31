class Project < ApplicationRecord
    #validate the existence of both the title and descriptions
    validates_presence_of :title
    validates_presence_of :description
end
