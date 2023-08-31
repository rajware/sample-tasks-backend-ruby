module Helpers
    class ApiResult
        attr_accessor :data
        attr_accessor :error
        attr_accessor :message
        
        def initialize(data, error = 0, message = "")
            @data = data
            @error = error
            @message = message
        end
    end
end