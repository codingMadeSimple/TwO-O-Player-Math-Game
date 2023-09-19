class Question 
  #Will create the logic around questions and subtract lives from each playerse lives
  #State --> 
  #Methods --> ask_question, check_answer, random_number_gen
  #Data -->
  
  @random_numbers = []

  def self.random_number_gen 
    #Needs 2 random numbers returned
    @random_numbers.push(rand(21))
    @random_numbers.push(rand(21))
  end

  def self.ask_question(random_numbers)
    puts "What does #{random_numbers[0]} plus #{random_numbers[1]} equal?" 
  end

  def self.check_answer(random_numbers)
    answer = random_numbers[0] + random_numbers[1]
  end

end

Question.ask_question(Question.random_number_gen)
puts Question.check_answer(Question.random_number_gen)
