require "spec_helper"

describe "nginx" do
    let(:title) { "nginx" }
    it { should contain_class("nginx") }

    it {
        should contain_package('nginx').with(
            "ensure"  => "1.6.2-1~trusty"
        )
    }
end
