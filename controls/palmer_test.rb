control 'Create local dev dir' do
  title ''
  describe file('/home/gary/garydev') do
    it { should be_directory }
    its('mode') { should cmp '0700' }
  end
end

# 1. CPU is 1
control "CPU # validation" do
  describe bash('cat /proc/cpuinfo | grep "^processor"| wc -l') do
    its('stdout') { should match '1'}
  end
end

control 'Services not running' do
  title ''
  describe service('firewalld') do
    it { should_not be_running }
  end
end

