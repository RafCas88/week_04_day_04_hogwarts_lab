require_relative('../db/sql_runner')

class House

  attr_reader :id
  attr_accessor :name

  def initialize( options )
    @id = options['id'].to_i() if options['id']
    @name = options['name']
  end

  def save()
    sql = "INSERT INTO houses
    (name)
    VALUES ($1)
    RETURNING id"
    values = [@name]
    house_data = SqlRunner.run(sql, values)
    @id = house_data.first()['id'].to_i()
  end

  def self.all()
    sql = "SELECT * FROM houses"
    houses = SqlRunner.run(sql)
    result = houses.map{|houses| House.new(house)}
    return result
  end


end
