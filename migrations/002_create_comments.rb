Sequel.migration do
  change do
    create_table(:comments) do
      primary_key :id
      String :filename, null: false
      String :ip_address, null: false
      String :comments
      DateTime :created_at
    end
  end
end
