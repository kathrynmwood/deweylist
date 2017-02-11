class AddRolesToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :admin_role, :boolean, default: false
    add_column :users, :curator_role, :boolean, default: false
    add_column :users, :user_role, :boolean, default: true

    # Initialize first account
    User.create! do |u|
        u.email       = 'admin@test.com'
        u.password    = 'password'
        u.admin_role  = true
    end

    User.create! do |u|
        u.email        = 'curator@test.com'
        u.password     = 'password'
        u.curator_role = true
  end
end
