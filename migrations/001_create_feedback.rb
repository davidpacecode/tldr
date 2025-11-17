Sequel.migration do
  change do
    create_table(:feedback) do
      String :filename, null: false
      String :ip_address, null: false
      String :vote_type, null: false
      DateTime :created_at
      DateTime :updated_at

      primary_key [:filename, :ip_address]
    end
  end
end
