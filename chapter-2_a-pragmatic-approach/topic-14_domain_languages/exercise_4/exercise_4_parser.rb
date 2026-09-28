class TurtleParser
    def instructions(program)
    # your steps go here

    # Split the program into lines.
    program = program.split("\n")

    # Remove blank and comment-only lines.
    program = program.reject { |line| line.start_with?("#") || line.empty? }

    # Loop over the remaining lines.
    program.map do |line|

        # Split each line at # and keep the first piece.
        command = line.split("#")[0]

        # Split that at the space.
        command = command.split(" ")

        # Take the letter from position 0.
        command = command.split[0]

        # Check the letter is in the command hash; if not, stop with an error.
        # Check the number against the hash's boolean; if they don't match, stop with an error.
        # If there's a number, convert it; otherwise nil.
        # Put letter and number into a hash.
        # Collect all the hashes into an array, in order.
        end
    end
end
