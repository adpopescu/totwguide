require File.dirname(__FILE__) + '/../../../spec_helper.rb'

module Spec
module Runner
module Formatter
describe "RdocFormatterDryRun" do
    before(:each) do
        @io = StringIO.new
        @formatter = RdocFormatter.new(@io)
        @formatter.dry_run = true
    end
    it "should not produce summary on dry run" do
        @formatter.dump_summary(3, 2, 1)
        @io.string.should == ""      
    end
end
end
end
end