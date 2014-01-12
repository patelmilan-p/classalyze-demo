module ClassroomsHelper
  def average_score(test)
    total = test.tests_taken.to_a.map { |tt| tt.score }.reduce(:+)
    return total/test.tests_taken.count
  end
end
