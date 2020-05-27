class Document < ApplicationRecord
    def self.create_from_collection(documents)
        Document.create(documents)
    end
end
