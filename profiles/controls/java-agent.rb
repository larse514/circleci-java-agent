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
    its('stdout') { should include ('make') }
    its('stdout') { should include ('jq') }
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