describe TurtleParser do
  it "a command with a number" do
    program = <<~TURTLE
      P 2 # select pen 2
      D # pen down
      W 2 # draw west 2cm
      N 1 # then north 1
      E 2 # then east 2
      S 1 # then back south
      U # pen up
    TURTLE

    result = TurtleParser.new
    expect(result.instructions("W 2")).to eq({"letter" => "W", "number" => 2})
  end
end
