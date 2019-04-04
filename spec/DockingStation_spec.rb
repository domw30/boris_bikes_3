require 'DockingStation'

describe DockingStation do
    it { is_expected.to respond_to :release_bike }

    it 'releases a working bike' do
      bike = subject.release_bike
      expect(bike).to be_working
    end

    it { is_expected.to respond_to(:dock).with(1).argument }

    # included test to identify bike method
    it { is_expected.to respond_to(:bike) }

    # added unit test which expects the dock method to return the bike when passed an argument of bike
    it 'returns docked bikes' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.bike).to eq bike
    end
end
