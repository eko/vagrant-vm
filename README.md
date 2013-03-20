# Vagrant - Symfony virtual machine

This repository is used to store my personal-shared Vagrant development environment which is configured using the Puppet provisioner.

## Requirements

- Vagrant 1.1.2+
- Virtualbox or another provider

## Installation

### 1) Add the "precise64" box to Vagrant:
`$ vagrant box add http://files.vagrantup.com/precise64.box`
### 2) Clone this repository
`$ git clone git@github.com:eko/vagrant-vm.git`
### 3) Run virtual machine
`$ vagrant up`

## Default installed packages list

Here is the list of installed packages with this VM:

<table>
  <tr>
    <th>Package</th>
    <th>Description</th>
  </tr>
  <tr>
    <td>apache2</td>
    <td>Apache2 HTTP server (http://httpd.apache.org)</td>
  </tr>
  <tr>
    <td>composer</td>
    <td>Composer dependency library (http://getcomposer.org)</td>
  </tr>
  <tr>
    <td>mysql-server</td>
    <td>MySQL database server (with root password: toor)</td>
  </tr>
  <tr>
    <td>php5</td>
    <td>PHP main package language (http://www.php.net)</td>
  </tr>
  <tr>
    <td>php5-cli</td>
    <td>PHP5 command line interpreter</td>
  </tr>
  <tr>
    <td>php5-curl</td>
    <td>PHP5 curl support</td>
  </tr>
  <tr>
    <td>php5-mysql</td>
    <td>PHP5 mysql server support</td>
  </tr>
  <tr>
    <td>php5-dev</td>
    <td>PHP5 development libraries</td>
  </tr>
  <tr>
    <td>php5-gd</td>
    <td>PHP5 GD library</td>
  </tr>
  <tr>
    <td>php-apc</td>
    <td>PHP5 APC cache support</td>
  </tr>
  <tr>
    <td>php-pear</td>
    <td>PHP5 PEAR tool</td>
  </tr>
  <tr>
    <td>pear</td>
    <td>PHP PEAR tool</td>
  </tr>
</table>