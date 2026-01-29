require "rails_helper"

RSpec.describe Project, type: :model do
  it "is invalid without a name" do
    project = Project.new(name: nil)
    expect(project).to_not be_valid
  end
end
