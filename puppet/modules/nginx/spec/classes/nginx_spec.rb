require "spec_helper"

describe "nginx" do
    let(:title) { "nginx" }
    it { should contain_class("nginx") }

    it {
        should contain_package("nginx").with(
            "ensure"  => "installed"
        )
    }

    it {
      should contain_file("/etc/nginx/nginx.conf").with(
        "source" => "puppet:///modules/nginx/nginx.conf",
        "owner" => "root",
        "group" => "root",
        "require" => "Package[nginx]"
      )
    }

    it {
      should contain_file("/etc/nginx/sites-available/default").with_content(
        /server_name puppet-workshop;/
      ).with(
        "owner" => "root",
        "group" => "root",
        "require" => "Package[nginx]"
      )
    }

    context "with specific server name" do
      let(:params) {
        {
          :server_name => "untitled-2016"
        }
      }

      it {
        should contain_file("/etc/nginx/sites-available/default").with_content(
          /server_name untitled-2016;/
        ).with(
          "owner" => "root",
          "group" => "root",
          "require" => "Package[nginx]"
        )
      }
    end
end
