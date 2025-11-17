class Feedback < Sequel::Model(:feedback)
  set_primary_key [:filename, :ip_address]
end

# Table: feedback
# -------------------------------------
# Columns:
#  filename   | varchar(255) | NOT NULL
#  ip_address | varchar(255) | NOT NULL
#  vote_type  | varchar(255) | NOT NULL
#  created_at | timestamp    |
#  updated_at | timestamp    |
# -------------------------------------
