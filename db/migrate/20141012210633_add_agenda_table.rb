class AddAgendaTable < ActiveRecord::Migration
  def change

  	create_table :agendas do |t|
      t.datetime :sunday
      t.string :opening_prayer
      t.string :closing_prayer
      t.string :song
      t.string :directing
  	  t.timestamps

    end

  end
end
