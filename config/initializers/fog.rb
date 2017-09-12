CarrierWave.configure do |config|
	config.fog_credentials = {
		:provider			   => "AWS",
		:aws_access_key_id     => "test",
		:aws_secret_access_key => "test2" 
	}

	config.fog_directory = "testdir"
	config.fog_public    = false
end