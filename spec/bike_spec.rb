require "bike"

describe Bike do

  describe '#working' do
    it { is_expected.to respond_to :working }


   it 'when a bike is broken it returns false' do
     subject.broken
     expect(subject.working).to eq false
   end
  end

  describe '#fix' do
    it 'changes state of bike to working=true' do
      subject.broken
      subject.fix
      expect(subject.working).to eq true
    end

  end
end
