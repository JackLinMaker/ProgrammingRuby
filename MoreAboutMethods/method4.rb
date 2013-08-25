def double(p1)
  yield(p1 * 2)
end

double(3) { |val| "I got #{val}" }
double("tom") { |val| "Then I got #{val}" }
