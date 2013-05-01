require 'spec_helper'

describe ApplicationHelper do

  describe "full_title" do
    it "should include the page title" do
      helper.full_title("foo").should =~ /foo/
    end

    it "should include the base title" do
      helper.full_title("foo").should =~ /^microposting/
    end

    it "should not include a bar for Home page" do
      full_title("").should_not =~ /\|/
    end
  end
end