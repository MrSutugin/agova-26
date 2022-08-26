require "csv"

Dir.glob("#{Rails.root}/db/data/*.csv") do |file|
  next if [".", ".."].include?(file)

  CSV.read(file, headers: true).each do |row|
    region = Region.find_or_create_by!(
      federal_district: row["federal_district"],
      geoname_code: row["geoname_code"],
      geoname_name: row["geoname_name"],
      iso_code: row["iso_code"],
      name: row["name"],
      name_with_type: row["name_with_type"],
      okato: row["okato"],
      oktmo: row["oktmo"],
      postal_code: row["postal_code"],
      tax_office: row["tax_office"],
      timezone: row["timezone"],
      r_type: row["type"],
      created_at: row["created_at"],
      updated_at: row["updated_at"],
      fias_id: row["fias_id"],
      geoname_id: row["geoname_id"],
      kladr_id: row["kladr_id"]
    )
  end
end

require "faker"
10.times do
  Category.create(
      name: Faker::Job.unique.field
  )
end
