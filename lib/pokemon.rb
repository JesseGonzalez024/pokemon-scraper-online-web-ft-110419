class Pokemon
  attr_accessor :id, :name, :type, :db
  
  def initialize(id:, name:, type:, db:)
    @id = id
    @name = name
    @type = type
    @db = db
  end
  def self.save(name, type, db)
  # if self.id
  #     self.update
  #   else
       sql = <<-SQL
         INSERT INTO pokemon (name, type, db)
         VALUES (?, ?, ?)
         SQL
         db[:conn].execut(sql)
    # end

  end
  
end
