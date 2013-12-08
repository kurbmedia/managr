class InstallManagr < ActiveRecord::Migration
  def change
    create_table :managr_preferences do |t|
      t.string        :key
      t.string        :value
      t.string        :value_type, default: 'string'
      t.timestamps
    end
    
    Managr.create_defaults!
    
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
    
    create_table :manager_taggings do |t|
      t.belongs_to  :tag
      t.belongs_to  :taggable, polymorphic: true
      t.timestamps
    end
    
    create_table :managr_tasks do |t|
      t.string      :title
      t.text        :summary
      t.boolean     :complete, default: false
      t.belongs_to  :category
      t.timestamps
    end
    
    create_table :managr_scheduled_items do |t|
      t.string     :name
      t.text       :summary
      t.belongs_to :item, polymorphic: true 
      t.datetime   :starts_on
      t.datetime   :ends_on
      t.boolean    :complete, default: false
    end
  end
end
