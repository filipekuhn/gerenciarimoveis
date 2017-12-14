class UserMailer < ApplicationMailer
  default from: 'gerenciarimoveisapp@gmail.com'

  def visitor_email(visitor, property)
    @visitor = visitor
    @property = property
    @url = 'http://filipe.tsi.pro.br/'
    
    mail(to: @visitor.email, subject: 'Confirmação de interesse em imóvel do Gerenciar Imóveis')
  end

  def user_email(visitor, user, property)
    @visitor = visitor
    @user = user
    @property = property

    mail(to: @user.email, subject: 'Visitantes demonstraram interesse em um de seus imóveis' )

  end
end
