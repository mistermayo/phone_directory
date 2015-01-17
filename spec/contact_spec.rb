require('rspec')
require('contact')

 describe(Contact) do
   before() do
     Contact.clear()
   end
 end
  describe("#name") do
    it("returns the name of the contact") do
      test_contact = Contact.new("Bill Rogers", 4154105984)
      test_contact.save()
      expect(test_contact.name()).to(eq("Bill Rogers"))
    end
  end

  describe("#number") do
    it("returns the number of the contact") do
      test_contact = Contact.new("Bill Rogers", 4154105984)
      test_contact.save()
      expect(test_contact.number()).to(eq(4154105984))
    end
  end

  describe("#save") do
    it("adds a contact to the array of saved contact") do
      test_contact = Contact.new("Bill Rogers")
      test_contact.save()
      expect(Contact.all()).to(eq([test_contact]))
    end
  end

  describe(".clear") do
    it("empties out all of the saved contacts") do
      Contact.new("Bill Rogers", 4154105984).save()
      Contact.clear()
      expect(Contact.all()).to(eq([]))
    end
  end

  describe(".all") do
    it("is empty at first") do
      expect(Contact.all()).to(eq([]))
    end
  end

  describe(".find") do
    it("returns a contact by it's name") do
      test_contact = Contact.new("Bill Rogers", 4154105984)
      test_contact.save()
      test_contact2 = Contact.new("Bill Rogers", 4154105984)
      test_contact2.save()
      expect(Contact.find(test_contact)).to(eq(test_contact))
    end
  end
