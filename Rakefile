namespace :cookbooks do
  desc "Remove any previously packaged cookbooks."
  task :clean do
    sh "rm -rf pkg"
  end

  desc "Create a tarball of the cookbooks."
  task :tar do
    sh "mkdir -p pkg"
    sh "tar zcvf pkg/cookbooks.tar.gz ./cookbooks"
  end

  desc "Upload the cookbooks tarball to S3."
  task :upload do
    begin
      require_relative "env"
    rescue LoadError
      puts <<-MSG
You must put an `env.rb` file in the root of the project that adds
`AWS_ACCESS_KEY_ID` and `AWS_SECRET_ACCESS_KEY` keys to `ENV`.
      MSG
      exit 1
    end

    require "fog"

    connection = Fog::Storage.new(
      provider: "AWS",
      aws_access_key_id: ENV["AWS_ACCESS_KEY_ID"],
      aws_secret_access_key: ENV["AWS_SECRET_ACCESS_KEY"]
    )

    directory = connection.directories.get("querycasts")

    directory.files.create(
      key: "lab/cookbooks.tar.gz",
      body: File.read("pkg/cookbooks.tar.gz"),
      content_type: "application/x-gzip",
      public: true
    )
  end
end

desc "Clean, tar, and upload cookbooks."
task :cookbooks => ["cookbooks:clean", "cookbooks:tar", "cookbooks:upload"]

task :default => :cookbooks
