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
         INSERT INTO pokemon (name, type)
         VALUES (?, ?)
         SQL
         db.execute(sql, name, type)
    # end
  end
  def self.find(id_num, db)
    db.execute("SELECT * FROM pokemon WHERE id=?", id_num).first
  end
  
end
