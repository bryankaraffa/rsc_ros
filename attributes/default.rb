case node[:platform]
when "ubuntu", "debian"
  # Tested with: Base ServerTemplate for Linux (v14.1.0) [rev 50] / Ubuntu 14.04
  default[:rsc_ros][:packages] = %w[ruby ruby-dev make autoconf automake g++ patch]
  default[:rsc_ros][:gems]     = %w[mixlib-cli fog]

when "redhat", "centos"
  # Tested with: Base ServerTemplate for Linux (v14.1.0) [rev 50] / CentOS 6.5
  default[:rsc_ros][:packages] = %w[ruby19 ruby19-devel gcc-c++]
  default[:rsc_ros][:gems]     = { "fog" => "1.24.0", "mixlib-cli" => "1.5.0" }
end
