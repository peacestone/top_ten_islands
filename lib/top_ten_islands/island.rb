class TopTenIslands::Island

  attr_accessor :name, :url, :discription

  ALL = []

  def initialize(name=nil, url=nil, discription=nil)
    @name = name
    @url = url
    ALL.push(self)
  end

  def get_discription
    @discription ||= TopTenIslands::Scraper.get_island_discription(@url)
  end

  def self.all
    ALL
  end


end
