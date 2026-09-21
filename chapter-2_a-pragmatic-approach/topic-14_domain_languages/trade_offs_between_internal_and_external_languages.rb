describe BowlingScore do
    (0..4).each do |pins|
        (1..20).each do |throws|
            target = pins * throws

            it "totals#{target} if you score #{pins}#{throws} times" do
                score = BowlingScore.new
                throws.times {score.add_pins(pins) }
                expect(score.total)-to eq(target)
            end
        end
    end
end
