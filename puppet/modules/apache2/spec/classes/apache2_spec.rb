require "spec_helper"

describe "apache2" do
  let(:title) { "apache2" }
  it { should contain_class("apache2") }
  it {
    should contain_package("apache2").with(
      "ensure" => "installed"
    )
  }
end
