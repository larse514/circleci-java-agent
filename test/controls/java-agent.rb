control 'apt list all' do
  impact 1.0
  title 'confirm apt dependencies installed'
  desc 'confirm correct apt dependencies are installed'
  describe command('apt list --installed') do
    its('stdout') { should include ('make') }
    its('stdout') { should include ('node') }
  end
end

control 'make version' do
  impact 1.0
  title 'confirm make is installed'
  desc 'confirm correct version of make is installed'
  describe command('make -v') do
    its('stdout') { should include ('GNU Make 4.1') }
  end
end

control 'node version' do
  impact 1.0
  title 'confirm node is installed'
  desc 'confirm correct version of node is installed'
  describe command('node -v') do
    its('stdout') { should include ('v10.15.3') }
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