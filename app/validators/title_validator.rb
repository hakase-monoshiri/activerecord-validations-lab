class TitleValidator < ActiveModel::Validator

    def validate(record)
        if !record.title
            record.errors[:title] << "No title"
        elsif !record.title.include?("Won't Believe" || "Secret" || "Top" || "Guess")
            record.errors[:title] << "That's not clickbaity enough"
        end
    end

end