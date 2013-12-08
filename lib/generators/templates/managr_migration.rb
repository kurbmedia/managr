class InstallManagr < ActiveRecord::Migration
  def change
    create_table :managr_preferences do |t|
      t.string        :key
      t.string        :value
      t.string        :value_type, default: 'string'
      t.timestamps
    end
    
    Managr.create_defaults!
    
    create_table(:managr_users) do |t|
      t.string        :first_name
      t.string        :last_name
      t.string        :email,              null: false, default: ""
      t.string        :phone
      t.string        :encrypted_password, null: false, default: ""
      t.string        :reset_password_token
      t.datetime      :reset_password_sent_at
      t.datetime      :remember_created_at

      t.integer       :sign_in_count, default: 0, null: false
      t.datetime      :current_sign_in_at
      t.datetime      :last_sign_in_at
      t.string        :current_sign_in_ip
      t.string        :last_sign_in_ip
                      
      t.integer       :failed_attempts, default: 0, null: false
      t.string        :unlock_token
      t.datetime      :locked_at
      
      t.timestamps
    end
    
    create_table :managr_categories do |t|
      t.string       :name
      t.string       :color
      t.string       :type
      t.timestamps
    end
    
    create_table :managr_tags do |t|
      t.string      :name
      t.string      :color
      t.timestamps
    end
    
    create_table :managr_taggings do |t|
      t.belongs_to  :tag
      t.belongs_to  :taggable, polymorphic: true
      t.timestamps
    end
    
    create_table :managr_tasks do |t|
      t.string      :title
      t.text        :summary
      t.boolean     :complete, default: false
      t.belongs_to  :category
      t.belongs_to  :creator
      t.timestamps
    end
    
    create_table :managr_assignments do |t|
      t.belongs_to  :user
      t.belongs_to  :assignable, polymorphic: true
      t.timestamps
    end
    
    create_table :managr_scheduled_items do |t|
      t.string     :name
      t.text       :summary
      t.belongs_to :user
      t.belongs_to :item, polymorphic: true 
      t.datetime   :starts_on
      t.datetime   :ends_on
      t.boolean    :complete, default: false
    end
    
    add_index :managr_users, :email,                unique: true
    add_index :managr_users, :reset_password_token, unique: true
    add_index :managr_users, :unlock_token,         unique: true
  end
  
end