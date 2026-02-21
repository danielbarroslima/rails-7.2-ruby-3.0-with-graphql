module Loaders
  class AssociationLoader < GraphQL::Dataloader::Source
    def initialize(model, association)
      @model = model
      @association = association
    end

    def fetch(records)
      ActiveRecord::Associations::Preloader.new(
        records: records,
        associations: @association
      ).call

      records.map { |record| record.public_send(@association) }
    end
  end
end
