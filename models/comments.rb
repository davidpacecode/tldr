class Comments < Sequel::Model
  set_primary_key [:id]
end

# Table: comments
# ------------------------------------------------------
# Columns:
#  id         | INTEGER      | PRIMARY KEY AUTOINCREMENT
#  filename   | varchar(255) | NOT NULL
#  ip_address | varchar(255) | NOT NULL
#  comments   | varchar(255) |
#  created_at | timestamp    |
# ------------------------------------------------------
