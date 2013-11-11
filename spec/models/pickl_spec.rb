require "spec_helper"


describe Pickl do

  subject { Pickl.new }

  describe "body validation" do

    it "only allows 150 characters" do
      subject.body = "t" * 152
      subject.should_not be_valid
    end

  end


end
