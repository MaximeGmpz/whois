# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.nic.cz/status_registered.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'
require 'whois/record/parser/whois.nic.cz.rb'

describe Whois::Record::Parser::WhoisNicCz, "status_registered.expected" do

  subject do
    file = fixture("responses", "whois.nic.cz/status_registered.txt")
    part = Whois::Record::Part.new(:body => File.read(file))
    described_class.new(part)
  end

  describe "#domain" do
    it do
      subject.domain.should == "google.cz"
    end
  end
  describe "#domain_id" do
    it do
      lambda { subject.domain_id }.should raise_error(Whois::AttributeNotSupported)
    end
  end
  describe "#status" do
    it do
      subject.status.should == :registered
    end
  end
  describe "#available?" do
    it do
      subject.available?.should == false
    end
  end
  describe "#registered?" do
    it do
      subject.registered?.should == true
    end
  end
  describe "#created_on" do
    it do
      subject.created_on.should be_a(Time)
      subject.created_on.should == Time.parse("2000-07-21 15:21:00")
    end
  end
  describe "#updated_on" do
    it do
      subject.updated_on.should be_a(Time)
      subject.updated_on.should == Time.parse("2011-05-18 23:28:45")
    end
  end
  describe "#expires_on" do
    it do
      subject.expires_on.should be_a(Time)
      subject.expires_on.should == Time.parse("2013-07-22")
    end
  end
  describe "#registrar" do
    it do
      subject.registrar.should be_a(Whois::Record::Registrar)
      subject.registrar.id.should           == "REG-MARKMONITOR"
      subject.registrar.name.should         == "REG-MARKMONITOR"
      subject.registrar.organization.should == nil
      subject.registrar.url.should          == nil
    end
  end
  describe "#registrant_contacts" do
    it do
      subject.registrant_contacts.should be_a(Array)
      subject.registrant_contacts.should have(1).items
      subject.registrant_contacts[0].should be_a(Whois::Record::Contact)
      subject.registrant_contacts[0].type.should          == Whois::Record::Contact::TYPE_REGISTRANT
      subject.registrant_contacts[0].id.should            == "MM12383"
      subject.registrant_contacts[0].name.should          == "DNS Admin"
      subject.registrant_contacts[0].organization.should  == "Google Inc."
      subject.registrant_contacts[0].address.should       == "1600 Amphitheatre Parkway\nMountain View\n94043\nCA\nUS"
      subject.registrant_contacts[0].city.should          == nil
      subject.registrant_contacts[0].zip.should           == nil
      subject.registrant_contacts[0].state.should         == nil
      subject.registrant_contacts[0].country.should       == nil
      subject.registrant_contacts[0].country_code.should  == nil
      subject.registrant_contacts[0].phone.should         == nil
      subject.registrant_contacts[0].fax.should           == nil
      subject.registrant_contacts[0].email.should         == "dns-admin@google.com"
      subject.registrant_contacts[0].created_on.should    == Time.parse("2011-05-18 23:28:26")
    end
  end
  describe "#admin_contacts" do
    it do
      subject.admin_contacts.should be_a(Array)
      subject.admin_contacts.should have(1).items
      subject.admin_contacts[0].should be_a(Whois::Record::Contact)
      subject.admin_contacts[0].type.should          == Whois::Record::Contact::TYPE_ADMINISTRATIVE
      subject.admin_contacts[0].id.should            == "MM12383"
      subject.admin_contacts[0].name.should          == "DNS Admin"
      subject.admin_contacts[0].organization.should  == "Google Inc."
      subject.admin_contacts[0].address.should       == "1600 Amphitheatre Parkway\nMountain View\n94043\nCA\nUS"
      subject.admin_contacts[0].city.should          == nil
      subject.admin_contacts[0].zip.should           == nil
      subject.admin_contacts[0].state.should         == nil
      subject.admin_contacts[0].country.should       == nil
      subject.admin_contacts[0].country_code.should  == nil
      subject.admin_contacts[0].phone.should         == nil
      subject.admin_contacts[0].fax.should           == nil
      subject.admin_contacts[0].email.should         == "dns-admin@google.com"
      subject.admin_contacts[0].created_on.should    == Time.parse("2011-05-18 23:28:26")
    end
  end
  describe "#technical_contacts" do
    it do
      subject.technical_contacts.should be_a(Array)
      subject.technical_contacts.should have(1).items
      subject.technical_contacts[0].should be_a(Whois::Record::Contact)
      subject.technical_contacts[0].id.should            == "MM193020"
      subject.technical_contacts[0].name.should          == "Domain Provisioning"
      subject.technical_contacts[0].organization.should  == "MarkMonitor, Inc."
      subject.technical_contacts[0].address.should       == "10400 Overland Road PMB 155\nBoise\n83709-1433\nID\nUS"
      subject.technical_contacts[0].city.should          == nil
      subject.technical_contacts[0].zip.should           == nil
      subject.technical_contacts[0].state.should         == nil
      subject.technical_contacts[0].country.should       == nil
      subject.technical_contacts[0].country_code.should  == nil
      subject.technical_contacts[0].phone.should         == nil
      subject.technical_contacts[0].fax.should           == nil
      subject.technical_contacts[0].email.should         == "ccops@markmonitor.com"
      subject.technical_contacts[0].created_on.should    == Time.parse("2011-02-03 18:24:34")
    end
  end
  describe "#nameservers" do
    it do
      subject.nameservers.should be_a(Array)
      subject.nameservers.should have(4).items
      subject.nameservers[0].should be_a(Whois::Record::Nameserver)
      subject.nameservers[0].name.should == "ns2.google.com"
      subject.nameservers[1].should be_a(Whois::Record::Nameserver)
      subject.nameservers[1].name.should == "ns4.google.com"
      subject.nameservers[2].should be_a(Whois::Record::Nameserver)
      subject.nameservers[2].name.should == "ns3.google.com"
      subject.nameservers[3].should be_a(Whois::Record::Nameserver)
      subject.nameservers[3].name.should == "ns1.google.com"
    end
  end
end
