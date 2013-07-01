# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.centralnic.com/uy.com/status_registered.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'
require 'whois/record/parser/whois.centralnic.com.rb'

describe Whois::Record::Parser::WhoisCentralnicCom, "status_registered.expected" do

  subject do
    file = fixture("responses", "whois.centralnic.com/uy.com/status_registered.txt")
    part = Whois::Record::Part.new(:body => File.read(file))
    described_class.new(part)
  end

  describe "#disclaimer" do
    it do
      subject.disclaimer.should == "This whois service is provided by CentralNic Ltd and only contains information pertaining to Internet domain names we have registered for our customers. By using this service you are agreeing (1) not to use any information presented here for any purpose other than determining ownership of domain names, (2) not to store or reproduce this data in any way, (3) not to use any high-volume, automated, electronic processes to obtain data from this service. Abuse of this service is monitored and actions in contravention of these terms will result in being permanently blacklisted. All data is (c) CentralNic Ltd https://www.centralnic.com/"
    end
  end
  describe "#domain" do
    it do
      subject.domain.should == "bestb.uy.com"
    end
  end
  describe "#domain_id" do
    it do
      subject.domain_id.should == "CNIC-DO493832"
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
      subject.created_on.should == Time.parse("2007-07-12 13:49:25 UTC")
    end
  end
  describe "#updated_on" do
    it do
      subject.updated_on.should be_a(Time)
      subject.updated_on.should == Time.parse("2013-04-03 13:16:52 UTC")
    end
  end
  describe "#expires_on" do
    it do
      subject.expires_on.should be_a(Time)
      subject.expires_on.should == Time.parse("2013-07-12 23:59:59 UTC")
    end
  end
  describe "#registrar" do
    it do
      subject.registrar.should be_a(Whois::Record::Registrar)
      subject.registrar.id.should           == "I6467"
      subject.registrar.name.should         == nil
      subject.registrar.organization.should == "Webfusion"
      subject.registrar.url.should          == "http://www.123-reg.co.uk/domain-names/"
    end
  end
  describe "#registrant_contacts" do
    it do
      subject.registrant_contacts.should be_a(Array)
      subject.registrant_contacts.should have(1).items
      subject.registrant_contacts[0].should be_a(Whois::Record::Contact)
      subject.registrant_contacts[0].type.should          == Whois::Record::Contact::TYPE_REGISTRANT
      subject.registrant_contacts[0].id.should            == "MNT32524959440"
      subject.registrant_contacts[0].name.should          == "Identity Protection Service"
      subject.registrant_contacts[0].organization.should  == "Identity Protect Limited"
      subject.registrant_contacts[0].address.should       == "PO Box 795"
      subject.registrant_contacts[0].city.should          == "Godalming"
      subject.registrant_contacts[0].zip.should           == "GU7 9GA"
      subject.registrant_contacts[0].state.should         == "Surrey"
      subject.registrant_contacts[0].country.should       == nil
      subject.registrant_contacts[0].country_code.should  == "GB"
      subject.registrant_contacts[0].phone.should         == "+44.1483307527"
      subject.registrant_contacts[0].fax.should           == "+44.1483304031"
      subject.registrant_contacts[0].email.should         == "bestb.uy.com@identity-protect.org"
    end
  end
  describe "#admin_contacts" do
    it do
      subject.admin_contacts.should be_a(Array)
      subject.admin_contacts.should have(1).items
      subject.admin_contacts[0].should be_a(Whois::Record::Contact)
      subject.admin_contacts[0].type.should          == Whois::Record::Contact::TYPE_ADMINISTRATIVE
      subject.admin_contacts[0].id.should            == "MNT32524959440"
      subject.admin_contacts[0].name.should          == "Identity Protection Service"
      subject.admin_contacts[0].organization.should  == "Identity Protect Limited"
      subject.admin_contacts[0].address.should       == "PO Box 795"
      subject.admin_contacts[0].city.should          == "Godalming"
      subject.admin_contacts[0].zip.should           == "GU7 9GA"
      subject.admin_contacts[0].state.should         == "Surrey"
      subject.admin_contacts[0].country.should       == nil
      subject.admin_contacts[0].country_code.should  == "GB"
      subject.admin_contacts[0].phone.should         == "+44.1483307527"
      subject.admin_contacts[0].fax.should           == "+44.1483304031"
      subject.admin_contacts[0].email.should         == "bestb.uy.com@identity-protect.org"
    end
  end
  describe "#technical_contacts" do
    it do
      subject.technical_contacts.should be_a(Array)
      subject.technical_contacts.should have(1).items
      subject.technical_contacts[0].should be_a(Whois::Record::Contact)
      subject.technical_contacts[0].type.should          == Whois::Record::Contact::TYPE_TECHNICAL
      subject.technical_contacts[0].id.should            == "MNT32524959440"
      subject.technical_contacts[0].name.should          == "Identity Protection Service"
      subject.technical_contacts[0].organization.should  == "Identity Protect Limited"
      subject.technical_contacts[0].address.should       == "PO Box 795"
      subject.technical_contacts[0].city.should          == "Godalming"
      subject.technical_contacts[0].zip.should           == "GU7 9GA"
      subject.technical_contacts[0].state.should         == "Surrey"
      subject.technical_contacts[0].country.should       == nil
      subject.technical_contacts[0].country_code.should  == "GB"
      subject.technical_contacts[0].phone.should         == "+44.1483307527"
      subject.technical_contacts[0].fax.should           == "+44.1483304031"
      subject.technical_contacts[0].email.should         == "bestb.uy.com@identity-protect.org"
    end
  end
  describe "#nameservers" do
    it do
      subject.nameservers.should be_a(Array)
      subject.nameservers.should have(2).items
      subject.nameservers[0].should be_a(Whois::Record::Nameserver)
      subject.nameservers[0].name.should == "ns2.123-reg.co.uk"
      subject.nameservers[1].should be_a(Whois::Record::Nameserver)
      subject.nameservers[1].name.should == "ns.123-reg.co.uk"
    end
  end
end
