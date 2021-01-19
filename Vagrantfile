# -*- mode: ruby -*-
# vi: set ft=ruby :

vms = {
   
   'Security-server' => {'memory' => '512', 'cpus' => 1, 'ip' => '1', 'box' => 'ubuntu/xenial64', 'provision' => 'security-server.sh'},
   'File-server' => {'memory' => '1024', 'cpus' => 1, 'ip' => '1', 'box' => 'centos/7', 'provision' => 'file-server.sh'},
   'Mail-server' => {'memory' => '1024', 'cpus' => 1, 'ip' => '1', 'box' => 'centos/7', 'provision' => 'mail-server.sh'},
   'Storage-server' => {'memory' => '1024', 'cpus' => 1, 'ip' => '1', 'box' => 'centos/7', 'provision' => 'storage-server.sh'},
   'IPA-server' => {'memory' => '1536', 'cpus' => 1, 'ip' => '1', 'box' => 'centos/7', 'provision' => 'ipa-server.sh'},
   'Virtualization-host' => {'memory' => '4096', 'cpus' => 2, 'ip' => '1', 'box' => 'centos/7', 'provision' => 'virtualization-host.sh'},
   'Web-server' => {'memory' => '1024', 'cpus' => 1, 'ip' => '1', 'box' => 'centos/7', 'provision' => 'web-server.sh'},
   'Lab-gamification' => {'memory' => '2048', 'cpus' => 1, 'ip' => '1', 'box' => 'centos/7', 'provision' => 'lab-gamification.sh'}


}

Vagrant.configure('2') do |config|

  config.vm.box_check_update = false

  vms.each do |name, conf|
    config.vm.define "#{name}" do |my|
      my.vm.box = conf['box']
      my.vm.hostname = "#{name}.example.com"
      my.vm.network 'private_network', ip: "172.16.1.#{conf['ip']}"
      my.vm.provision 'shell', path: "provision/#{conf['provision']}"
      my.vm.provider 'virtualbox' do |vb|
        vb.memory = conf['memory']
        vb.cpus = conf['cpus']
      end
      my.vm.provider 'libvirt' do |lv|
        lv.memory = conf['memory']
        lv.cpus = conf['cpus']
        lv.cputopology :sockets => 1, :cores => conf['cpus'], :threads => '1'
      end
    end
  end

end
