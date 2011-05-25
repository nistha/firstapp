class AddTestData < ActiveRecord::Migration
  def self.up

	Product.delete_all
	Product.create(:title => 'Pragmatic Ver Control', 
		:description =>
			%{<p>
			This book has recipe to do, do and do.
			</p>},
		:image_url => 'images/svn.jpg',
		:price => 28.5)
  end

  def self.down
	Product.delete_all
  end
end
