def my_collect(array)
  i = 0
  collection = []
  while i < array.length
    collection << yield(array[i])
    i += 1
  end
  collection
end

my_collect(languages) do |lang|
  lang.upcase
end

my_collect(students) do |student|
  student.split(" ").first
end