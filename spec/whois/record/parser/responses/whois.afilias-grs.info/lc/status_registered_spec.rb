# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.afilias-grs.info/lc/status_registered.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'
require 'whois/record/parser/whois.afilias-grs.info.rb'

describe Whois::Record::Parser::WhoisAfiliasGrsInfo, "status_registered.expected" do

  subject do
    file = fixture("responses", "whois.afilias-grs.info/lc/status_registered.txt")
    part = Whois::Record::Part.new(:body => File.read(file))
    described_class.new(part)
  end

  describe "#disclaimer" do
    it do
      subject.disclaimer.should == "Access to CCTLD WHOIS information is provided to assist persons in determining the contents of a domain name registration record in the Afilias registry database. The data in this record is provided by Afilias Limited for informational purposes only, and Afilias does not guarantee its accuracy.  This service is intended only for query-based access. You agree that you will use this data only for lawful purposes and that, under no circumstances will you use this data to: (a) allow, enable, or otherwise support the transmission by e-mail, telephone, or facsimile of mass unsolicited, commercial advertising or solicitations to entities other than the data recipient's own existing customers; or (b) enable high volume, automated, electronic processes that send queries or data to the systems of Registry Operator, a Registrar, or Afilias except as reasonably necessary to register domain names or modify existing registrations. All rights reserved. Afilias reserves the right to modify these terms at any time. By submitting this query, you agree to abide by this policy."
    end
  end
  describe "#domain" do
    it do
      subject.domain.should == "nic.lc"
    end
  end
  describe "#domain_id" do
    it do
      subject.domain_id.should == "D946482-LRCC"
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
      subject.created_on.should == Time.parse("2002-12-08 00:00:00 UTC")
    end
  end
  describe "#updated_on" do
    it do
      subject.updated_on.should be_a(Time)
      subject.updated_on.should == Time.parse("2008-12-08 19:25:09 UTC")
    end
  end
  describe "#expires_on" do
    it do
      subject.expires_on.should be_a(Time)
      subject.expires_on.should == Time.parse("2009-12-08 00:00:00 UTC")
    end
  end
  describe "#registrar" do
    it do
      subject.registrar.should be_a(Whois::Record::Registrar)
      subject.registrar.id.should           == "R144-LRCC"
      subject.registrar.name.should         == "NicLc Registrar"
      subject.registrar.organization.should == nil
      subject.registrar.url.should          == nil
    end
  end
  describe "#registrant_contacts" do
    it do
      subject.registrant_contacts.should be_a(Array)
      subject.registrant_contacts.should have(1).items
      subject.registrant_contacts[0].should be_a(Whois::Record::Contact)
      subject.registrant_contacts[0].type.should         == Whois::Record::Contact::TYPE_REGISTRANT
      subject.registrant_contacts[0].id.should           == "LC-54921"
      subject.registrant_contacts[0].name.should         == "Nic LC Admin"
      subject.registrant_contacts[0].organization.should == "Nic LC"
      subject.registrant_contacts[0].address.should      == "#4 Colony House\nJohn Compton Hwy"
      subject.registrant_contacts[0].city.should         == "Castries"
      subject.registrant_contacts[0].zip.should          == "Not Provided"
      subject.registrant_contacts[0].state.should        == "Not Provided"
      subject.registrant_contacts[0].country_code.should == "LC"
      subject.registrant_contacts[0].phone.should        == "+758.4520220"
      subject.registrant_contacts[0].fax.should          == ""
      subject.registrant_contacts[0].email.should        == "nic@nic.lc"
    end
  end
  describe "#admin_contacts" do
    it do
      subject.admin_contacts.should be_a(Array)
      subject.admin_contacts.should have(1).items
      subject.admin_contacts[0].should be_a(Whois::Record::Contact)
      subject.admin_contacts[0].type.should         == Whois::Record::Contact::TYPE_ADMINISTRATIVE
      subject.admin_contacts[0].id.should           == "LC-51893"
      subject.admin_contacts[0].name.should         == "Nic LC Hostmaster"
      subject.admin_contacts[0].organization.should == "Nic LC"
      subject.admin_contacts[0].address.should      == "#4 Colony House\nNot Provided"
      subject.admin_contacts[0].city.should         == "Castries"
      subject.admin_contacts[0].zip.should          == "Not Provided"
      subject.admin_contacts[0].state.should        == "Not Provided"
      subject.admin_contacts[0].country_code.should == "LC"
      subject.admin_contacts[0].phone.should        == "+758.4520220"
      subject.admin_contacts[0].fax.should          == ""
      subject.admin_contacts[0].email.should        == "hostmaster@nic.lc"
    end
  end
  describe "#technical_contacts" do
    it do
      subject.technical_contacts.should be_a(Array)
      subject.technical_contacts.should have(1).items
      subject.technical_contacts[0].should be_a(Whois::Record::Contact)
      subject.technical_contacts[0].type.should         == Whois::Record::Contact::TYPE_TECHNICAL
      subject.technical_contacts[0].id.should           == "LC-53407"
      subject.technical_contacts[0].name.should         == "Nic LC Technical"
      subject.technical_contacts[0].organization.should == "Nic LC"
      subject.technical_contacts[0].address.should      == "#4 Colony House\nNot Provided"
      subject.technical_contacts[0].city.should         == "Castries"
      subject.technical_contacts[0].zip.should          == "Not Provided"
      subject.technical_contacts[0].state.should        == "Not Provided"
      subject.technical_contacts[0].country_code.should == "LC"
      subject.technical_contacts[0].phone.should        == "+758.4520220"
      subject.technical_contacts[0].fax.should          == ""
      subject.technical_contacts[0].email.should        == "technical@nic.lc"
    end
  end
  describe "#nameservers" do
    it do
      subject.nameservers.should be_a(Array)
      subject.nameservers.should have(2).items
      subject.nameservers[0].should be_a(Whois::Record::Nameserver)
      subject.nameservers[0].name.should == "ns1.nic.ag"
      subject.nameservers[1].should be_a(Whois::Record::Nameserver)
      subject.nameservers[1].name.should == "ns.patricklay.com"
    end
  end
end
