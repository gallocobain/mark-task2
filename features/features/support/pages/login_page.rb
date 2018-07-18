

class LoginPage < SitePrism::Page
   set_url '/'  

   element :input_email, '#login_email'
   element :input_senha, '#login_password'
   element :btn_logar, '#btLogin'
   element :alert, '.alert-login'
   element :clique, 'a[href="/register"]'

   def logar(email,senha)
      input_email.set email
      input_senha.set senha
      btn_logar.click

   end

end