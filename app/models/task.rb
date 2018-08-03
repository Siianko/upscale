class Task < ApplicationRecord  
    validates_presence_of :title, :description, :budget, :location, :state

    belongs_to :user

    state_machine :state, initial: :open do 
        
        event :receive_bid do 
            transition :open => :pending
        end

        event :accept_bid do
            transition [:open, :pending] => :in_production
        end

        event :closed do 
            transition [:in_production] => :closed
        end
    end
end
