class Role < ActiveRecord::Base
    has_many :auditions

    def actors
        self.auditions.map do |a|
            a.actor
        end
    end

    def locations
        self.auditions.map do |a|
            a.location
        end
    end

    def lead
        hiredTrue = self.auditions.where("hired = ?", true)

        if hiredTrue == []
            puts 'no actor has been hired for this role'
        else hiredTrue.first
        end
    end

    def understudy
        hiredTrue = self.auditions.where("hired = ?", true)

        if hiredTrue == []
            puts 'no actor has been hired for understudy for this role'
        else hiredTrue.second
        end
    end

end