# To deliver this notification:
#
# NewMessageNotification.with(post: @post).deliver_later(current_user)
# NewMessageNotification.with(post: @post).deliver(current_user)

class NewMessageNotification < Noticed::Base
  # Add your delivery methods
  deliver_by :database
  # deliver_by :email, mailer: "UserMailer"
  # deliver_by :slack
  # deliver_by :custom, class: "MyDeliveryMethod"

  # Add required params
  # param :post

  # Define helper methods to make rendering easier.
  def message
    if params[:sender_id] != current_user.id
      "<i class='fa-regular fa-envelope-open' style='color: red;'></i> You have a new message"
    else
      "<i class='fa-regular fa-envelope' style='color: #0e0000;'></i> You sent a new message"
    end
  end

  def url
    chatroom_path(params[:chatroom_id])
  end

  def recipients
    # Add logic to determine the recipients of the notification (e.g., the user who receives the message)
    [user_to_notify]
  end

  private

  def user_to_notify
    # Implement your logic to determine the user who should receive the notification
    # For example, if the current user is the sender, notify the recipient user
    if params[:sender_id] != current_user.id
      # Return the recipient user
      User.find(params[:recipient_id])
    else
      # Return the sender user
      User.find(params[:sender_id])
    end
  end
end
