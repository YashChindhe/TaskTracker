require "rails_helper"

RSpec.describe Task, type: :model do
  it "requires a title" do
    task = Task.new(title: nil)
    expect(task).to_not be_valid
  end
end
