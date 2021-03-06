actions :download, :upload
default_action :download

attribute :storage_provider, :kind_of => String, :default => "",:required => true
attribute :access_key, :kind_of => String, :default => "",:required => true
attribute :secret_key, :kind_of => String, :default => "",:required => true
attribute :bucket, :kind_of => String, :default => "",:required => true
attribute :file, :kind_of => String, :default => "",:required => true
attribute :destination, :kind_of => String, :default => "", :name_attribute => true,:required => true
attribute :region, :kind_of => String, :default => "", :name_attribute => true,:required => false
attribute :timeout, :kind_of => Integer, :default => 1200, :name_attribute => true,:required => false
