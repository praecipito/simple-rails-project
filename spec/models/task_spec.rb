require 'rails_helper'

RSpec.describe Task, type: :model do
  it "can't be created without a description" do
    expect { Task.create! }.to raise_error { ActiveRecord::RecordInvalid }
  end
end

RSpec.describe Task, type: :model do
  it 'can be created with a description' do
    expect { Task.create!(description: "test") }.not_to raise_error
  end
end
