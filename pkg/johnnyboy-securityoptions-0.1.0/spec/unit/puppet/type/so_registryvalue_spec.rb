require 'spec_helper'

describe Puppet::Type.type(:so_registryvalue) do
    let(:valid_name) { 'Shutdown: Clear virtual memory pagefile' }
    let(:invalid_name) { 'Shutdown: Why do you want to shutdown' }
    #I pulled this from the spec filr for acl module .. spec/unit/puppet/type/acl_spec.rb
    let(:resource) { Puppet::Type.type(:so_registryvalue).new(:name => valid_name, :title => valid_name) }
    let(:provider) { Puppet::Provider.new(resource) }
    let(:catalog)  { Puppet::Resource::Catalog.new }

    let(:int_resource_name) {'Network security: LAN Manager authentication level'}
    let(:str_resource_name) {'Interactive logon: Smart card removal behavior'}
    let(:msz_resource_name) {'System settings: Optional subsystems'}

    let(:resourceint) { Puppet::Type.type(:so_registryvalue).new(:name => int_resource_name) }
    let(:resourcestr) { Puppet::Type.type(:so_registryvalue).new(:name => str_resource_name) }
    let(:resourcemsz) { Puppet::Type.type(:so_registryvalue).new(:name => msz_resource_name) }
    
  context 'when validating ensure' do
        it 'should be ensurable' do
            expect(described_class.attrtype(:ensure)).to eq(:property)
        end

        it 'should be ensured to present by default' do
            res = described_class.new(:title => valid_name)
            expect(res[:ensure]).to eq(:present)
        end

        it 'should be ensurable to absent' do
            res = described_class.new(
                :title  => valid_name,
                :ensure => :absent
            )
            expect(res[:ensure]).to eq(:absent)
        end
    end

  context 'name parameter' do
  #I pulled this from ura, but it does not fail when namevar is not set
  #so I am not sure what this is checking
    it 'should have a namevar' do
      expect(described_class.key_attributes).to eq([:name])
    end
    it "should be the name var" do
      resource.parameters[:name].isnamevar?.should be_truthy
    end

    it 'should fail with an invalid name' do
        expect {
            described_class.new(
                :name => invalid_name,
            )
        }.to raise_error(Puppet::ResourceError, /Invalid Policy name: \'Shutdown: Why do you want to shutdown\'/)
    end
    it 'should pass with a valid name' do
        expect {
            described_class.new(
                :name => valid_name,
            )
        }.should be_truthy
    end


  end

  context 'so_value property' do
    it 'if type 1 should return quoted string, even if it is not quoted' do
        resourcestr[:regvalue] = 'quoatedstring' 
        expect(resourcestr[:regvalue]).to eq('"quoatedstring"')
    end
    it 'if type 1 should return quoted string if it is already quoated' do
        resourcestr[:regvalue] = '"quoatedstring"' 
        expect(resourcestr[:regvalue]).to eq('"quoatedstring"')
    end
    it 'if type 4 should return integer when passed integer' do
        resourceint[:regvalue] = 0
        expect(resourceint[:regvalue]).to be_a(Integer)
    end
    it 'if type 4 should return integer when passed string that can be converted to integer' do
        resourceint[:regvalue] ="0" 
        expect(resourceint[:regvalue]).to be_a(Integer)
    end
    it 'if type 4 should fail when passed a string that cannot be converted to an integer' do
      expect {
        resourceint[:regvalue] = "0whatisit1"
      }.to raise_error(Puppet::ResourceError, /Invalid value: \'0whatisit1\'.  This must be a number/)
    end
    it 'if type 7 should return array (quoates, no quotes?, not sure' do
    end

  end

end
