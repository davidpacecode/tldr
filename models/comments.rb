class Comments < Sequel::Model
  set_primary_key [:filename, :ip_address]
end

# Table: comments
# -------------------------------------
# Primary Key: (filename, ip_address)
# Columns:
#  id         | INTEGER      |
#  filename   | varchar(255) | NOT NULL
#  ip_address | varchar(255) | NOT NULL
#  comments   | varchar(255) |
#  created_at | timestamp    |
# -------------------------------------
