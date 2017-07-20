Types::Date = GraphQL::ScalarType.define do
  name 'Custom date type'

  coerce_input ->(value, ctx) { value.to_date }
  coerce_result ->(value, ctx) { value.to_s }
end
