require "spec_helper"

describe "git" do
  let(:title) { "git" }
  it { should contain_class("git") }
  it {
    should contain_package("git-core").with(
      "ensure" => "installed"
    )
  }
end
