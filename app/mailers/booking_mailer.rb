class BookingMailer < ApplicationMailer
  def creation_confirmation(transaction)
    @transaction = transaction
    mail(
      to:       Post.find(@transaction.post_id).user.email,
      subject:  "Transaction created!"
    )
  end
end
