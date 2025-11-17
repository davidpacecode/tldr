class Feedback < Sequel::Model(:feedback)
  set_primary_key [:filename, :ip_address]
  plugin :update_or_create
end

# Table: feedback
# -----------------------------------
# Primary Key: (filename, ip_address)
# Columns:
#  filename   | varchar(255) |
#  ip_address | varchar(255) |
#  vote_type  | varchar(255) |
#  created_at | timestamp    |
#  updated_at | timestamp    |
# -----------------------------------
