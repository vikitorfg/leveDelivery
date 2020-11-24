require 'rails_helper'

RSpec.describe Product, type: :model do
  subject {
    described_class.new(title: "anything",
                        description: "some text",
                        image_url: "sum.img",
                        price: 10,
                        calories: 10,
                        protein: 10,
                        carbohidrates: 10,
                        fibers: 10,
                        total_fat: 10,
                        sat_fat: 10,
                        sodium: 10)
  }
  
  nutritional_value = [:calories, :protein, :fibers, :total_fat, :sat_fat, :sodium]

  it "is valid with attributes" do
    expect(subject).to be_valid
  end

  it "is not valid without a name" do
    subject.title = nil
    expect(subject).to_not be_valid
  end

  context "nutritional facts" do
    nutritional_value.each do |attr|
      it "is not valid with negative #{attr}" do
        subject[attr] = -1
        expect(subject).to_not be_valid
      end
    end
  end
  
  context "nutritional attributes" do
    nutritional_value.each do |attr|
      it "is not valid without #{attr}" do
        subject[attr] = nil
        expect(subject).to_not be_valid
      end
    end
  end
end
