class Contact
  @@contacts

  define_method(:initialize) do |name, number|
    @name = name
    @number = number
    @id = @@contacts.length().+(1)
  end
end

  define_method(:name) do
    @name
  end

  define_method(:number) do
    @number
  end
  define_method(:save) do
    @@contacts.push(self)
  end

  define_singleton_method(:all) do
    @@contacts
  end

  define_singleton_method(:clear) do
    @@contacts
  end

  define_singleton_method(:find) do |identification|
    found_contact = []
    @@contacts.each() do |contact|
      if contact.name().eql?(identification())
        found_contact.push(contact)
      end
    end
    found_contact
  end
