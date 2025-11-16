Sequel.migration do
  change do
    create_table(:feedback, primary_key: [:filename, :ip_address]) do
      String :filename, null: false
      String :ip_address, null: false
      String :vote_type, null: false
      DateTime :created_at
      DateTime :updated_at
    end
  end
end
