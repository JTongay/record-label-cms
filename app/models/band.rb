class Band < ApplicationRecord
  has_and_belongs_to_many :musicians
  has_and_belongs_to_many :albums
  accepts_nested_attributes_for :albums, allow_destroy: true
  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/

  enum us_states:
           {
               :AK=>"Alaska",
               :AL=>"Alabama",
               :AR=>"Arkansas",
               :AZ=>"Arizona",
               :CA=>"California",
               :CO=>"Colorado",
               :CT=>"Connecticut",
               :DC=>"District of Columbia",
               :DE=>"Delaware",
               :FL=>"Florida",
               :GA=>"Georgia",
               :HI=>"Hawaii",
               :IA=>"Iowa",
               :ID=>"Idaho",
               :IL=>"Illinois",
               :IN=>"Indiana",
               :KS=>"Kansas",
               :KY=>"Kentucky",
               :LA=>"Louisiana",
               :MA=>"Massachusetts",
               :MD=>"Maryland",
               :ME=>"Maine",
               :MI=>"Michigan",
               :MN=>"Minnesota",
               :MO=>"Missouri",
               :MS=>"Mississippi",
               :MT=>"Montana",
               :NC=>"North Carolina",
               :ND=>"North Dakota",
               :NE=>"Nebraska",
               :NH=>"New Hampshire",
               :NJ=>"New Jersey",
               :NM=>"New Mexico",
               :NV=>"Nevada",
               :NY=>"New York",
               :OH=>"Ohio",
               :OK=>"Oklahoma",
               :OR=>"Oregon",
               :PA=>"Pennsylvania",
               :RI=>"Rhode Island",
               :SC=>"South Carolina",
               :SD=>"South Dakota",
               :TN=>"Tennessee",
               :TX=>"Texas",
               :UT=>"Utah",
               :VA=>"Virginia",
               :VT=>"Vermont",
               :WA=>"Washington",
               :WI=>"Wisconsin",
               :WV=>"West Virginia",
               :WY=>"Wyoming"
           }
end
