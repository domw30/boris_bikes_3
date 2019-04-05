require 'DockingStation'

describe DockingStation do
    it { is_expected.to respond_to :release_bike }
    it { is_expected.to respond_to(:dock).with(1).argument }
    it { is_expected.to respond_to(:bike) }

    describe '#release_bike' do
  		it "should create a new Bike" do
  		  docking_station = subject
  			docking_station.dock(Bike.new)
  			expect(docking_station.release_bike).to be_working
  		end
  		it "should print a message when no bikes" do
  			expect{subject.release_bike}.to raise_error "No bike available"
  		end
  	end

  describe '#dock' do
    it 'returns docked bikes' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.bike).to eq bike
    end

    it "should print a message docking full" do
      subject.dock(:bike)
      expect { subject.dock :bike }.to raise_error "No docking available"
    end
  end
end
