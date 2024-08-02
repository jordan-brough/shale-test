require 'shale'

module Amp
  class Options < Shale::Mapper
    attribute :name, Shale::Type::String
    attribute :value, Shale::Type::String
    attribute :cost, Shale::Type::Float

    json do
      map 'name', to: :name
      map 'value', to: :value
      map 'cost', to: :cost
    end
  end
end
