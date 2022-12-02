file_path = 'sample.txt'

open(file_path, 'w') do |f|
    f.puts('Hello, World!')
end

open(file_path, 'r') do |f|
    p f.read
end

open(file_path, 'a') do |f|
    f.puts('Hello, World!!')
end

open(file_path, 'r') do |f|
    p f.read
end