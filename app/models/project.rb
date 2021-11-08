class Project < ApplicationRecord
    #validate the existence of both the title and descriptions
    validate_presence_of :title, :description
end
