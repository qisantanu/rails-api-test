class CreateLocations < ActiveRecord::Migration[6.1]
  def up
    sql = <<-SQL
      CREATE TABLE locations
(
    id bigint NOT NULL GENERATED ALWAYS AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 9223372036854775807 CACHE 1 ),
    latitude numeric NOT NULL,
    longitude numeric NOT NULL,
    altitude numeric NOT NULL,
    "temperatureC" numeric NOT NULL,
    "temperatureF" numeric NOT NULL,
    "createdOn" timestamp without time zone,
    CONSTRAINT locations_pkey PRIMARY KEY (id)
)
    SQL

    result = ApplicationRecord.connection.exec_query(sql.squish)
  end

  def down

  end
end
