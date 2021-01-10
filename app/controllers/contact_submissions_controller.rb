class ContactSubmissionsController < ApplicationController
  def new
    @contact_submission = ContactSubmission.new
  end

  def create
    @contact_submission = ContactSubmission.new(contact_submission_params)
    if @contact_submission.save
      flash[:success] = "Thank you for contacting us. We'll get back to you ASAP!"
      ContactSubmissionsMailer.with(contact_submission: @contact_submission).new_submission.deliver_later
      redirect_to signed_out_root_path
    else
      render action: "new"
    end
  end

  private

  def contact_submission_params
    params.require(:contact_submission).permit(
      :name,
      :email,
      :company,
      :organization,
      :phone,
      :message
    )
  end
end
