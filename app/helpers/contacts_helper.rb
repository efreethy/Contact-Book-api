module ContactsHelper

  private

  def contact_params
    params.require(:contact).permit(:email, :user_id)
  end
end
