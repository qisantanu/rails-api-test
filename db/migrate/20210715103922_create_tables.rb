class CreateTables < ActiveRecord::Migration[6.1]
  def change
    # CREATE TABLE tracking_data (id BIGSERIAL PRIMARY KEY, source_id VARCHAR(36), position_time bigint, data  jsonb);

    # CREATE INDEX tracking_data_source_id_and_position_time ON tracking_data (position_time, source_id);

    # CREATE INDEX tracking_data_source_id ON tracking_data (source_id);

    # CREATE TABLE raw_data (id BIGSERIAL PRIMARY KEY, source_id VARCHAR(36), server_time bigint, data text);

    # CREATE INDEX raw_data_source_id_and_server_time ON raw_data (server_time, source_id);

    # CREATE INDEX raw_data_source_id ON raw_data (source_id);

  end
end
