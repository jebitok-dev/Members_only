module ApplicationHelper
  def show_sign_up_or_in
    out = ''
    if user_signed_in?
      out << link_to('Log out', destroy_user_session_path, method: :delete, class: 'button is-link is-inverted')
    else
      out << link_to('Sign in', new_user_session_path, class: 'button is-link is-inverted')
      out << link_to('Sign up', new_user_registration_path, class: 'button is-link is-inverted')
    end
    out.html_safe
  end

  def show_author(post)
    out = ''
    out << "<strong> #{post.user.email} </strong><br />" if user_signed_in?
    out.html_safe
  end

  def create_post
    out = ''
    out << render('posts/form') if user_signed_in?
    out.html_safe
  end
end
