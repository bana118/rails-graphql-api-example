# frozen_string_literal: true

module Types
  class UserType < Types::BaseObject
    field :id, String, null: false
    field :name, String, null: false
  end
end
