class UserMailer < ApplicationMailer
    def new_product_email(product,user)
      @product =Product.last
      @user = @product.user
      mail(to:@user.email, subject: "Product Deatils")
    end
end
