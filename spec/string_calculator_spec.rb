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

    context "when two comma-separated numbers are provided" do
      it 'returns sum for two comma-separated numbers' do
        expect(calculator.add("1,5")).to eq(6)
      end
    end
    
    context "when multiple comma-separated numbers are provided" do
      it 'handles any number of comma-separated numbers' do
        expect(calculator.add("1,2,3,4")).to eq(10)
      end
    end
  end
end