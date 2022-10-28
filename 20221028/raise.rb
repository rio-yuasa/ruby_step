begin
    raise TypeError, 'original error'
rescue => e
    p e.message
    raise
end
