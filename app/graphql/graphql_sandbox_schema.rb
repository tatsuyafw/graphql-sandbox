class GraphqlSandboxSchema < GraphQL::Schema
  rescue_from(Exception) do |error|
    case error
    when ActiveRecord::RecordNotFound
      GraphQL::ExecutionError.new(error.message)
    end
  end

  mutation(Types::MutationType)
  query(Types::QueryType)
end
