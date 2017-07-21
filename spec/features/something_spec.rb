class Test
  def initialize(something)
    @something = true
  end
  def doIt
    @something
  end
end

describe Test do
  it "does something" do
    test = Test.new(true)
    expect(test.doIt).to eq(true)
  end
end
