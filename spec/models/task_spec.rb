require 'rails_helper'

RSpec.describe Task, type: :model do
  it 'must have a description' do
    expect { Task.create! }.to raise_error { ActiveRecord::RecordInvalid }
  end
end
