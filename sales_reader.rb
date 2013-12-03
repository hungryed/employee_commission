class SaleReader
  attr_accessor :sales

 def initialize(filename)
  @filename = filename
  @sales = []
  read_sales
 end

 def read_sales
  CSV.foreach(@filename, headers:true, header_converters: :symbol) do |row|
    sale = {
      employee: row[:last_name],
      sale_amount: row[:gross_sale_value]
    }
    @sales << sale
  end
 end

end
