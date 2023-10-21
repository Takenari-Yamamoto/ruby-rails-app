# frozen_string_literal: true

module Types
  class MutationType < Types::BaseObject
    field :create_todo, Types::TodoType, null: false do
      argument :title, String, required: true
    end

    def create_todo(title:)
      Todo.create!(title: title, completed: false)
    end
  end
end
