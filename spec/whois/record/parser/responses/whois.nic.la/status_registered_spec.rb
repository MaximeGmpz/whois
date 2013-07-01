# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.nic.la/status_registered.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'
require 'whois/record/parser/whois.nic.la.rb'

describe Whois::Record::Parser::WhoisNicLa, "status_registered.expected" do

  subject do
    file = fixture("responses", "whois.nic.la/status_registered.txt")
    part = Whois::Record::Part.new(:body => File.read(file))
    described_class.new(part)
  end

  describe "#disclaimer" do
    it do
      subject.disclaimer.should == "This whois service is provided by CentralNic Ltd and only contains information pertaining to Internet domain names we have registered for our customers. By using this service you are agreeing (1) not to use any information presented here for any purpose other than determining ownership of domain names (2) not to store or reproduce this data in any way. CentralNic Ltd - www.centralnic.com"
    end
  end
  describe "#domain" do
    it do
      subject.domain.should == "google.la"
    end
  end
  describe "#domain_id" do
    it do
      subject.domain_id.should == "CNIC-DO471480"
    end
  end
  describe "#status" do
    it do
      subject.status.should == ["OK"]
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
      subject.created_on.should == Time.parse("2002-07-18 01:00:00 UTC")
    end
  end
  describe "#updated_on" do
    it do
      subject.updated_on.should be_a(Time)
      subject.updated_on.should == Time.parse("2009-09-15 16:48:47 UTC")
    end
  end
  describe "#expires_on" do
    it do
      subject.expires_on.should be_a(Time)
      subject.expires_on.should == Time.parse("2010-07-18 23:59:59 UTC")
    end
  end
  describe "#registrar" do
    it do
      subject.registrar.should be_a(Whois::Record::Registrar)
      subject.registrar.id.should           == "7279-LN"
      subject.registrar.name.should         == nil
      subject.registrar.organization.should == "LA Registry Pte Ltd"
      subject.registrar.url.should          == "http://www.la/"
    end
  end
  describe "#registrant_contacts" do
    it do
      subject.registrant_contacts.should be_a(Array)
      subject.registrant_contacts.should have(1).items
      subject.registrant_contacts[0].should be_a(Whois::Record::Contact)
      subject.registrant_contacts[0].type.should          == Whois::Record::Contact::TYPE_REGISTRANT
      subject.registrant_contacts[0].id.should            == "ndn-96955"
      subject.registrant_contacts[0].name.should          == "Google Inc"
      subject.registrant_contacts[0].organization.should  == "Google Inc"
      subject.registrant_contacts[0].address.should       == "1600 Amphitheatre Parkway"
      subject.registrant_contacts[0].city.should          == "Mountain View"
      subject.registrant_contacts[0].zip.should           == "94043"
      subject.registrant_contacts[0].state.should         == "Ca"
      subject.registrant_contacts[0].country.should       == nil
      subject.registrant_contacts[0].country_code.should  == "US"
      subject.registrant_contacts[0].phone.should         == "+1.6502530000"
      subject.registrant_contacts[0].fax.should           == "+1.65067188571"
      subject.registrant_contacts[0].email.should         == "dns-admin@google.com"
    end
  end
  describe "#admin_contacts" do
    it do
      subject.admin_contacts.should be_a(Array)
      subject.admin_contacts.should have(1).items
      subject.admin_contacts[0].should be_a(Whois::Record::Contact)
      subject.admin_contacts[0].type.should          == Whois::Record::Contact::TYPE_ADMINISTRATIVE
      subject.admin_contacts[0].id.should            == "ndn-96955"
      subject.admin_contacts[0].name.should          == "Google Inc"
      subject.admin_contacts[0].organization.should  == "Google Inc"
      subject.admin_contacts[0].address.should       == "1600 Amphitheatre Parkway"
      subject.admin_contacts[0].city.should          == "Mountain View"
      subject.admin_contacts[0].zip.should           == "94043"
      subject.admin_contacts[0].state.should         == "Ca"
      subject.admin_contacts[0].country.should       == nil
      subject.admin_contacts[0].country_code.should  == "US"
      subject.admin_contacts[0].phone.should         == "+1.6502530000"
      subject.admin_contacts[0].fax.should           == "+1.65067188571"
      subject.admin_contacts[0].email.should         == "dns-admin@google.com"
    end
  end
  describe "#technical_contacts" do
    it do
      subject.technical_contacts.should be_a(Array)
      subject.technical_contacts.should have(1).items
      subject.technical_contacts[0].should be_a(Whois::Record::Contact)
      subject.technical_contacts[0].type.should          == Whois::Record::Contact::TYPE_TECHNICAL
      subject.technical_contacts[0].id.should            == "ndn-96955"
      subject.technical_contacts[0].name.should          == "Google Inc"
      subject.technical_contacts[0].organization.should  == "Google Inc"
      subject.technical_contacts[0].address.should       == "1600 Amphitheatre Parkway"
      subject.technical_contacts[0].city.should          == "Mountain View"
      subject.technical_contacts[0].zip.should           == "94043"
      subject.technical_contacts[0].state.should         == "Ca"
      subject.technical_contacts[0].country.should       == nil
      subject.technical_contacts[0].country_code.should  == "US"
      subject.technical_contacts[0].phone.should         == "+1.6502530000"
      subject.technical_contacts[0].fax.should           == "+1.65067188571"
      subject.technical_contacts[0].email.should         == "dns-admin@google.com"
    end
  end
  describe "#nameservers" do
    it do
      subject.nameservers.should be_a(Array)
      subject.nameservers.should have(4).items
      subject.nameservers[0].should be_a(Whois::Record::Nameserver)
      subject.nameservers[0].name.should == "ns1.google.com"
      subject.nameservers[1].should be_a(Whois::Record::Nameserver)
      subject.nameservers[1].name.should == "ns2.google.com"
      subject.nameservers[2].should be_a(Whois::Record::Nameserver)
      subject.nameservers[2].name.should == "ns3.google.com"
      subject.nameservers[3].should be_a(Whois::Record::Nameserver)
      subject.nameservers[3].name.should == "ns4.google.com"
    end
  end
end
