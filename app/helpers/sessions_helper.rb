module SessionsHelper
  
	# def sign_in(uoa)
 #    if uoa.is_a? Analyst
 #      remember_token = Analyst.new_remember_token
 #    else
 #      remember_token = User.new_remember_token
 #    end

 #    cookies.permanent[:remember_token] = remember_token
    
 #    if uoa.is_a? Analyst
 #      uoa.update_attribute(:remember_token, Analyst.digest(remember_token))
 #      self.current_analyst = uoa
 #    else
 #      uoa.update_attribute(:remember_token, User.digest(remember_token))
 #      self.current_user = uoa
 #    end
 #  end

 #  def signed_in?
 #  	!current_user.nil?
 #  end

 #  def analyst_signed_in?
 #    !current_analyst.nil?
 #  end

 #  def sign_out
 #    current_user.update_attribute(:remember_token, User.digest(User.new_remember_token))
 #    cookies.delete(:remember_token)
 #    self.current_user = nil
 #  end

 #  def analyst_sign_out
 #    current_analyst.update_attribute(:remember_token, Analyst.digest(Analyst.new_remember_token))
 #    cookies.delete(:remember_token)
 #    self.current_analyst = nil
 #  end

 #  def current_user=(user)
 #  	@current_user = user
 #  end

 #  def current_analyst=(analyst)
 #    @current_analyst = analyst
 #  end

 #  def current_user
 #  	remember_token = User.digest(cookies[:remember_token])
 #  	@current_user ||= User.find_by(remember_token: remember_token)
 #  end

 #  def current_analyst
 #    remember_token = Analyst.digest(cookies[:remember_token])
 #    @current_analyst ||= Analyst.find_by(remember_token: remember_token)
 #  end

 #  def current_user?(user)
 #    user == current_user
 #  end

 #  def current_analyst?(analyst)
 #    analyst == current_analyst
 #  end

 #  def signed_in_user
 #    unless signed_in?
 #      store_location
 #      redirect_to signin_url, notice: "Please sign in."
 #    end
 #  end

 #  def signed_in_analyst
 #    unless analyst_signed_in?
 #      store_location
 #      redirect_to signin_url, notice: "Please sign in."
 #    end
 #  end

 #   def signed_in_user_or_analyst
 #    unless signed_in? || analyst_signed_in?
 #      store_location
 #      redirect_to signin_url, notice: "Please sign in."
 #    end
 #  end

 #  def redirect_back_or(default)
 #    redirect_to(session[:return_to] || default)
 #    session.delete(:return_to)
 #  end

 #  def store_location
 #    session[:return_to] = request.url if request.get?
 #  end
  
end