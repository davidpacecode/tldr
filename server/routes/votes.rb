class Routes::Votes < Bridgetown::Rack::Routes
  route do |r|
    r.on "votes", String do |tldr|
      filename = tldr
      user_ip = request.ip

      # Handle GET requests - display votes
      r.get do
        feedback = Feedback.where(filename: filename, ip_address: user_ip)
        user_vote_type = feedback.first&.vote_type

        upvotes = Feedback.where(filename: filename, vote_type: "upvote").count
        downvotes = Feedback.where(filename: filename, vote_type: "downvote").count

        # Return HTML
        render "votes_display",
          filename: filename,
          user_vote_type: user_vote_type,
          upvotes: upvotes,
          downvotes: downvotes
      end

      # Handle PUT requests - update votes
      r.put do
        vote_type = r.params["vote_type"]

        if Feedback.where(filename: filename, ip_address: user_ip).count == 0
          Feedback.insert(
            filename: filename,
            ip_address: user_ip,
            user_vote_type: vote_type,
            created_at: Time.now,
            updated_at: Time.now
          )
        else
          Feedback.where(filename: filename, ip_address: user_ip)
                  .update(vote_type: vote_type, updated_at: Time.now)
        end

        # Return updated vote display
        upvotes = Feedback.where(filename: filename, vote_type: "upvote").count
        downvotes = Feedback.where(filename: filename, vote_type: "downvote").count

        render "votes_display",
          filename: filename,
          user_vote_type: vote_type,
          upvotes: upvotes,
          downvotes: downvotes
      end
    end
  end
end

