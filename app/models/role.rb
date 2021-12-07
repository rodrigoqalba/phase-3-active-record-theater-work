class Role < ActiveRecord::Base
    has_many :auditions

    def actors
        auditions.map do |audition|
            audition.actor
        end
    end

    def locations
        auditions.map do |audition|
            audition.location
        end
    end

    def lead

        hired_actors = auditions.where("hired = ?", true)

        # if auditions.where("hired = ?", true).first
        #     auditions
        # elsif auditions.where("hired = ?", false)
        #     "no actor has been hired for this role"
        # end

        # fast way to do it with empty method
        # !hired_actors.empty?

        # if any actor is hired, return that actor.  
        if hired_actors.length >= 1
            hired_actors.first
        elsif
            "no actor has been hired for this role"
        end
        # If no actor is hired, 
        # return "no actor has been hired for this role"

    end

    def understudy
        hired_actors = auditions.where("hired = ?", true)

        if hired_actors.length >= 1
            hired_actors.second
        elsif
            "no actor has been hired for understudy for this role"
        end
    end
end