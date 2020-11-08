ProductOrder.destroy_all
Order.destroy_all
User.destroy_all
Sku.destroy_all 
ProductOptionValue.destroy_all 
ProductOption.destroy_all 
Product.destroy_all 


jd = User.create(
    username: 'jd',
    firstname: 'justin',
    lastname: 'brewer-hofmann',
    password: '1234',
    email: 'jd@me.com'
)

tvOne = Product.create(
    name: 'bravia',
    rating: 3.5,
    category: 'tv',
    frontimg: '',
    sideimg: '',
    backimg: '',
    brand: 'sony',
    additional_specs: 'sony stuff, whole bunch of stuff'
)

phoneOne = Product.create(
    name: 'iphone 12',
    rating: 3.5,
    category: 'phone',
    frontimg: '',
    sideimg: '',
    backimg: '',
    brand: 'apple',
    additional_specs: 'apple stuff and things, whole bunch of stuff about apples'
)

usbOne = Product.create(
    name: 'usb drive',
    rating: 2.0,
    category: 'accessory',
    frontimg: '',
    sideimg: '',
    backimg: '',
    brand: 'hp',
    additional_specs: 'harddrive stuff about harddrives or something'
)

usbTwo = Product.create(
    name: 'usb drive',
    rating: 4.0,
    category: 'accessory',
    frontimg: '',
    sideimg: '',
    backimg: '',
    brand: 'glyph',
    additional_specs: 'other harddrive stuff about harddrives or glyphs something'
)

opOne = ProductOption.create(
    name: 'size',
    product_id: tvOne.id
)
opTwo = ProductOption.create(
    name: 'color',
    product_id: phoneOne.id
)

opValOne = ProductOptionValue.create(
    name: '64inch',
    product_option_id: opOne.id
)

opValTwo = ProductOptionValue.create(
    name: '50inch',
    product_option_id: opOne.id
)

opValThree = ProductOptionValue.create(
    name: 'red',
    product_option_id: opTwo.id
)
opValFour = ProductOptionValue.create(
    name: 'blue',
    product_option_id: opTwo.id
)
opValFive = ProductOptionValue.create(
    name: 'black',
    product_option_id: opTwo.id
)


skuOne = Sku.create(
    name: 'sony tv 64inch',
    price: 899.99,
    product_id: tvOne.id,
    product_option_id: opOne.id,
    product_option_value_id: opValOne.id,
)


orderOne = Order.create(
    user_id: jd.id
)

ProductOrder.create(
    sku_id: skuOne.id,
    order_id: orderOne.id
)




# for each phone product:
#   create product_option: 'storage'
#   create product_option_values for [16,32, 64]

# tvs 
# bravia // size // 43, 50, 64
# for each tv product:
    # create product_option: 'size'
    # create product_option_value: 42, 50, 64

# tablets 
# for each tablet product:
    #   create product_option: 'storage'
    #   create product_option_values for [132, 256, 512]

# computer 
# for each computer :
    #   create product_option: 'storage'
    #   create product_option_values for [300gb, 500gb, 1tb]

# monitor
# for each monitor product:
    # create product_option: 'size'
    # create product_option_value: 19, 22, 28


harddrive_array = [ usbOne, usbTwo]

def create_harddrive_options(product_array) 
    option_values = [
        {
            size: "250gb",
            price: 25.00
        },
        {
            size: "500gb",
            price: 35.00
        }
    ] 
    
    product_array.each do |product|
        option = ProductOption.create(
            name: "storage",
            product_id: product.id
        )
        option_values.each do |value|
            option_value = ProductOptionValue.create(
                name: value[:size],
                product_option_id: option.id
            )
            Sku.create(
                name: "#{product.brand} #{product.name} #{option_value.name}",
                price: value[:price],
                product_id: product.id,
                product_option_id: option.id,
                product_option_value_id: option_value.id,
                )
        end
    end
end 

create_harddrive_options(harddrive_array)