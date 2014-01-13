module Entities
  class User < Grape::Entity
    expose :id
    expose :name, documentation: { type: "string", desc: "Status update text." }
  end
end