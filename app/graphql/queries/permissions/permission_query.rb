module Queries
  module Permissions
    class PermissionQuery < Queries::BaseQuery
      type Types::PermissionType, null: true

      argument :id, ID, required: true

      def resolve(id:)
        Permission.find_by(id: id)
      end
    end
  end
end
