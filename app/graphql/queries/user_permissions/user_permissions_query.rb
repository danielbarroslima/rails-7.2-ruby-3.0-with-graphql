module Queries
  module UserPermissions
    class UserPermissionsQuery < Queries::BaseQuery
      type Types::UserPermissionType, null: true

      argument :id, ID, required: true

      def resolve(id:)
        UserPermission.find_by(id: id)
      end
    end
  end
end
