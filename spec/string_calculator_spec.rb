RSpec.describe StringCalculator do
  subject(:calculator) { described_class.new }

  describe "#add" do
    context "when input is empty" do
      it "returns 0" do
        expect(calculator.add("")).to eq(0)
      end
    end

    context "when a single number is provided" do
      it "returns the number itself" do
        expect(calculator.add("10")).to eq(10)
      end
    end
  end
end