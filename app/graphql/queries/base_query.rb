module Queries
  class BaseQuery < GraphQL::Schema::Resolver
    def current_user
      context[:current_user]
    end

    def authorize!(permission)
      unless current_user&.has_permission?(permission)
        raise GraphQL::ExecutionError, "Acesso negado"
      end
    end
  end
end
