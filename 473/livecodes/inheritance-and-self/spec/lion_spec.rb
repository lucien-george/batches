require_relative '../lion'

describe Lion do
  describe "#talk" do
    it "should state that the animal roars" do
      simba = Lion.new('Simba')
      expect(simba.talk).to eq('Simba roars')
    end
  end

  describe "#eat" do
    it "should return a sentence stating what the animal is eating" do
      simba = Lion.new('Simba')
      sentence = simba.eat('a gazelle')
      expect(sentence).to eq('Simba eats a gazelle. Law of the jungle!')
    end
  end
end
