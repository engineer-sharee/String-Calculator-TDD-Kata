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

    context "when new line character provided as separator" do
      it 'handles new lines between numbers' do
        expect(calculator.add("1\n2,3")).to eq(6)
      end 
    end

    context "when custom delimiters provided" do
      it 'supports custom delimiters' do
        expect(calculator.add("//;\n1;2")).to eq(3)
      end 
    end
  end
end