class PagesController < ApplicationController
  def home
    @users = User.all
    @blogs = Blog.order("created_at DESC").limit(3)
  end

  def contact
  end

  def history
  end

  def our_pastor
  end

  def our_church
  end

  def give
  end
end
