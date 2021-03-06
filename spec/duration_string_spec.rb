require File.join(File.dirname(__FILE__), 'spec_helper')

describe DurationString do
  it "gives back the number of seconds for seconds" do
    DurationString.to_seconds("17s").should == 17
  end

  it "gives back the number of seconds for dur. strings with only minutes defined" do
    DurationString.to_seconds("7m").should == 7 * 60
  end

  it "gives back the number of seconds for hours for dur. strings with only hours defined" do
    DurationString.to_seconds("4h").should == 60 * 60 * 4
  end

  it "gives back the number of seconds for hours for dur. strings with only days defined" do
    DurationString.to_seconds("2d").should == 60 * 60 * 24 * 2
  end

  it "gives back the number of seconds for hours for dur. strings with only weeks defined" do
    DurationString.to_seconds("3w").should == 60 * 60 * 24 * 7 * 3
  end

  it "gives back the number of seconds for a dur. string that combines several dur. characters" do
    DurationString.to_seconds("1d3h18m22s").should == (60 * 60 * 24 * 1) + (60 * 60 * 3) + (60 * 18) + 22
  end

end