describe BowlingScore do
    it "totals 12 if you score 3 four times" do
        score = BowlingScore.New
        4.times { score.add_pins(3) }
        expect(score.total).to eq(12)
    end
end

# A test in RSpec is intended to reflect the behavior you expect from your code.
