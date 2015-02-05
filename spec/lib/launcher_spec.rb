module Calabash
  module Cucumber
    class Launcher

      def self.simulator_target?
        ENV['DEVICE_TARGET'] == 'simulator'
      end

    end
  end
end

describe 'Calabash Launcher' do

  UDID = '66h3hfgc466836ehcg72738eh8f322842855d2fd'
  IPHONE_4IN_R_64 = 'iPhone Retina (4-inch 64-bit) - Simulator - iOS 7.1'

  describe 'simulator_target? should respond correctly to DEVICE_TARGET' do

    it 'should return false if DEVICE_TARGET is device' do
      stub_env('DEVICE_TARGET', 'device')
      expect(Calabash::Cucumber::Launcher.simulator_target?).to be == false
    end
  end
end
