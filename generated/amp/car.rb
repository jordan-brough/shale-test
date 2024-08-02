require 'shale'

require_relative 'options'

module Amp
  class Car < Shale::Mapper
    attribute :color, Shale::Type::String
    attribute :features, Shale::Type::String, collection: true
    attribute :options, Amp::Options, collection: true

    json do
      map 'color', to: :color
      map 'features', to: :features
      map 'options', to: :options
    end
  end
end
