require 'spec_helper'

describe "A race registration" do

  it "belongs to an athlete" do
    athlete = Athlete.create(athlete_attributes)

    racereg = athlete.raceregs.new(racereg_attributes)

    expect(racereg.athlete).to eq(athlete)
  end

  it "with example attributes is valid" do
    racereg = Racereg.new(racereg_attributes)

    expect(racereg.valid?).to be_true
  end

  it "requires a name" do
    racereg = Racereg.new(name: "")

    expect(racereg.valid?).to be_false
    expect(racereg.errors[:name].any?).to be_true
  end

  it "requires a date" do
    racereg = Racereg.new(date: "")

    expect(racereg.valid?).to be_false
    expect(racereg.errors[:date].any?).to be_true
  end

    it "requires a priority" do
    racereg = Racereg.new(priority: "")

    expect(racereg.valid?).to be_false
    expect(racereg.errors[:priority].any?).to be_true
  end

it "requires a priority of 1 characters" do
    racereg = Racereg.new(priority: "X" * 1)

    expect(racereg.valid?).to be_false
    expect(racereg.errors[:priority].any?).to be_true
  end

  it "accepts priority values of A, B or C" do
    priorities = ["A", "B", "C"]
    priorities.each do |priority|
      racereg = Racereg.new(priority: priority)

      expect(racereg.valid?).to be_false
      expect(racereg.errors[:priority].any?).to be_false
    end
  end

  it "rejects invalid priority values" do
    priorities = ["-1", "D", "6"]
    priorities.each do |priority|
      racereg = Racereg.new(priority: priority)

      expect(racereg.valid?).to be_false
      expect(racereg.errors[:priority].any?).to be_true
      expect(racereg.errors[:priority].first).to eq("Must have priority A, B or C")
    end
  end
end




