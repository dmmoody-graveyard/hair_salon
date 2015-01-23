class Stylist

  attr_reader(:name, :id)

  define_method(:initialize) do |attributes|
    @name = attributes.fetch(:name)
    @id = attributes.fetch(:id)
  end

  define_singleton_method(:all) do
    returned_tasks = DB.exec("SELECT * FROM stylists;")
    stylists = []
    returned_tasks.each() do |stylist|
      name = stylist.fetch("name")
      id = stylist.fetch("id")
      stylists.push(Stylist.new({:name => name, :id => id}))
    end
    stylists
  end

  define_method(:save) do
    DB.exec("INSERT INTO stylists (name) VALUES ('#{@name}');")
  end

  define_method(:==) do |another_stylist|
    self.name().==(another_stylist.name())
  end

end