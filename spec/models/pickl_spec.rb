require "spec_helper"


describe Pickl do

  subject { Pickl.new }

  describe "body validation" do

    it "only allows 150 characters" do
      subject.body = "t" * 152
      subject.should have(1).errors_on(:body)
    end

    it "can't be empty" do
      subject.body = ""
      subject.should have(1).errors_on(:body)
    end

  end


end
