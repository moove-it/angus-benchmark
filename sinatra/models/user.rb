User = Struct.new(:id, :name, :password) do
  def to_json(options)
    { id: self.id, name: self.name }.to_json
  end
end