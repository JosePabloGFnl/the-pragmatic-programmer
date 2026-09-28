class TurtleParser
  def instructions(program)
    # your steps go here

    # Split the program into lines.
    program = program.split("\n")

    # Remove blank and comment-only lines.
    program = program.split(" # ")
    # Loop over the remaining lines.
    program = program.reject { |line| line.start_with?("#") || line.empty? }
    # Split each line at # and keep the first piece.
    # Split that at the space.
    # Take the letter from position 0.
    # Check the letter is in the command hash; if not, stop with an error.
    # Check the number against the hash's boolean; if they don't match, stop with an error.
    # If there's a number, convert it; otherwise nil.
    # Put letter and number into a hash.
    # Collect all the hashes into an array, in order.

  end
end
