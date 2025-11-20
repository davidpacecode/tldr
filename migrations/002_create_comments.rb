Sequel.migration do
  change do
    create_table(:comments) do
      String :filename, null: false
      String :ip_address, null: false
      String :comments
      DateTime :created_at

      primary_key [:id]
    end
  end
end
