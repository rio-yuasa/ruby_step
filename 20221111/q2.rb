module SampleModule
    def sample_method
        p 1
    end
end

class SampleClass
    extend SampleModule
end

SampleClass.sample_method