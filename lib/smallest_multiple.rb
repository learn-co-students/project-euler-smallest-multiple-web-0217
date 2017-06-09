def smallest_multiple(input)
  array = (1..input).to_a
  counter = 1
  index = 0

  ## array = [1, 2, 3, 4]

  until index == array.length
    if (input*counter) % array[index] == 0
      index += 1
    elsif (input*counter) % array[index] != 0
      counter += 1
      index = 0
    end
  end
  return input*counter
end
