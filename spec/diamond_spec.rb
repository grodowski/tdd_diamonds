require 'diamond'

describe Diamond do 
  it 'prints A for input A' do
    expect(Diamond.print('A')).to eq "A\n"
  end
  
  it 'prints diamond for B' do 
    expect(Diamond.print('B')).to eq " A\nB B\n A\n"
  end
  
  it 'prints diamond for C' do 
    expected = "  A\n B B\nC   C\n B B\n  A\n"
    expect(Diamond.print('C')).to eq expected
  end
end