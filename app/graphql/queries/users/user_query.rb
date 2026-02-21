module Queries
  module Users
    class UserQuery < Queries::BaseQuery
      type Types::UserType, null: true

      argument :id, ID, required: true

      def resolve(id:)
        authorize!("read_user")
        User.includes(:permissions).find_by(id: id)
      end
    end
  end
end