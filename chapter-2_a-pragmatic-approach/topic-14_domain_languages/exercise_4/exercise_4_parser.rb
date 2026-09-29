class TurtleParser
    COMMANDS = {
        "P" => true,
        "D" => false,
        "U" => false,
        "N" => true,
        "E" => true,
        "S" => true,
        "W" => true
    }

    def instructions(program)

        # Split the program into lines.
        program = program.split("\n")

        # Remove blank and comment-only lines.
        program = program.reject { |line| line.strip.start_with?("#") || line.strip.empty? }

        # Loop over the remaining lines.
        program.map do |line|

            # Split each line at # and keep the first piece.
            command = line.split("#")[0]

            # Split that at the space.
            command_pieces = command.split(" ")

            # Take the letter from position 0.
            command_letter = command_pieces[0]

            # Check the letter is in the command hash; if not, stop with an error.
            unless COMMANDS.key?(command_letter)
                raise "Unknown command: #{command_letter}"
            end
            # Check the number against the hash's boolean; if they don't match, stop with an error.
            expects_number = COMMANDS[command_letter]
            has_number = !command_pieces[1].nil?
            if expects_number != has_number
                raise "Wrong argument for: #{command_letter}"
            end
            # If there's a number, convert it; otherwise nil.
            if has_number
                number = Integer(command_pieces[1], 10)
            else
                number = nil
            end
            # Put letter and number into a hash.
            # Collect all the hashes into an array, in order.
            {"letter" => command_letter, "number" => number}
        end
    end
end
