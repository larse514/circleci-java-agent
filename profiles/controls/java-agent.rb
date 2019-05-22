control 'packages' do
  impact 1.0
  title 'confirm package installation'
  desc 'confirm all desired packages are installed'
  describe command('apk info') do
    its('stdout') { should include ('git') }
    its('stdout') { should include ('openssh') }
    its('stdout') { should include ('tar') }
    its('stdout') { should include ('gzip') }
    its('stdout') { should include ('ca-certificates') }
    its('stdout') { should include ('docker') }
    its('stdout') { should include ('bash') }
    its('stdout') { should include ('bash-doc') }
    its('stdout') { should include ('bash-completion') }
    its('stdout') { should include ('curl') }
    its('stdout') { should include ('wget') }
    its('stdout') { should include ('openssl') }
    its('stdout') { should include ('openrc') }
    its('stdout') { should include ('go') }
    its('stdout') { should include ('python3') }
    its('stdout') { should include ('ruby') }
    its('stdout') { should include ('ruby-bundler') }
    its('stdout') { should include ('ruby-dev') }
    its('stdout') { should include ('g++') }
    its('stdout') { should include ('libffi-dev') }
    its('stdout') { should include ('musl-dev') }
    its('stdout') { should include ('make') }
    its('stdout') { should include ('jq') }
    its('stdout') { should include ('ruby-doc') }
    its('stdout') { should include ('nss') }
  end
end

control 'make version' do
  impact 1.0
  title 'confirm make is installed'
  desc 'confirm correct version of make is installed'
  describe command('make -v') do
    its('stdout') { should include ('GNU Make 4.2.1') }
  end
end

control 'node version' do
  impact 1.0
  title 'confirm node is installed'
  desc 'confirm correct version of node is installed'
  describe command('node -v') do
    its('stdout') { should include ('v10.14.2') }
  end
end

control 'newman version' do
  impact 1.0
  title 'confirm newman is installed'
  desc 'confirm correct version of newman is installed'
  describe command('newman -v') do
    its('stdout') { should include ('4.5.0') }
  end
end

control 'aws cli version' do
  impact 1.0
  title 'confirm aws cli is installed'
  desc 'confirm correct version of aws cli is installed'
  describe command('aws --version') do
    # It is worth noting that the `aws --version` command writes to stderr, not stdout
    its('stderr') { should include ('aws-cli/1.16.163') }
  end
end

control 'docker version' do
  impact 1.0
  title 'confirm docker is installed'
  desc 'confirm correct version of docker is installed'
  describe command('docker -v') do
    its('stdout') { should include ('Docker version 18.09.1-ce') }
  end
end

control 'git version' do
  impact 1.0
  title 'confirm git is installed'
  desc 'confirm correct version of git is installed'
  describe command('git version') do
    its('stdout') { should include ('git version 2.20.1') }
  end
end

control 'Java version' do
  impact 1.0
  title 'confirm java version'
  desc 'Confirm correct version of java'
  describe command('java -version') do
    # It is worth noting that the `java -version` command writes to stderr, not stdout
    its('stderr') { should include ('openjdk version "1.8.0_212"') }
  end
end

control 'libnss3.so' do
  impact 1.0
  title 'confirm libnss3.so installation'
  desc 'confirm libnss3.so is in image'
  describe command('ls /usr/lib') do
    its('stdout') { should include ('libnss3.so') } # ensure nss libs exist from apline:3.9 issue: https://github.com/docker-library/openjdk/issues/289
  end
end

control 'bundler' do
  impact 1.0
  title 'confirm bundler installation'
  desc 'confirm bundler is in image'
  describe command('bundler -v') do
    its('stdout') { should include ('Bundler version 2.0.1') }
  end
end
