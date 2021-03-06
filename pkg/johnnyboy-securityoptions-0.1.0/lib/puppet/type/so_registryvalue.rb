require 'pathname'

Puppet::Type.newtype(:so_registryvalue) do
    require Pathname.new(__FILE__).dirname + '../../puppet_x/securityoptions/secedit_mapping'
    @doc = <<-'EOT'
    Manage a Windows User Rights Assignment.
    EOT

    ensurable do
        defaultvalues
        defaultto { :present }
    end

    #newparam(:name, :namevar => true) do
    newparam(:name, :namevar => true) do
    #    desc 'The long name of the setting as it shows up in the local security policy'
      validate do |value|
        raise ArgumentError, "Invalid Policy name: \'#{value}\'" unless PuppetX::Securityoptions::Mappingtables.new.valid_name?(value,'RegistryValues')
      end
#
    end
#
    newproperty(:regvalue) do
      desc "hello" 

      validate do |value|

        res_mapping = PuppetX::Securityoptions::Mappingtables.new.get_mapping(resource[:name], 'RegistryValues')
        if res_mapping['reg_type'] == '4' then
          raise ArgumentError, "Invalid value: \'#{value}\'.  This must be a number" unless (Integer(value) rescue false)
        elsif res_mapping['reg_type'] == '1' then
          raise ArgumentError, "Invalid value: \'#{value}\'.  This must be a quoted string" unless value.is_a?(String)
        #elsif res_mapping['data_type'] != 'integer' and res_mapping['data_type'] != 'qstring'
        #  raise ArgumentError, "Invalid DataType: \'#{value}\' in Mappingtables"
        end
      end

      munge do |value|
        res_mapping = PuppetX::Securityoptions::Mappingtables.new.get_mapping(resource[:name], 'RegistryValues')
        if res_mapping['reg_type'] == '4' then
          value.to_i 
        elsif res_mapping['reg_type'] == '1' then
          value = "\"" + value.tr('"', '') + "\""
        end

      end
    end
end
