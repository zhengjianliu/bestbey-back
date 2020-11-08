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
    name: 'Class X750H Series',
    rating: 3.5,
    category: 'tv',
    frontimg: 'https://pisces.bbystatic.com/image2/BestBuy_US/images/products/6400/6400728_sd.jpg;maxHeight=640;maxWidth=550',
    sideimg: 'https://pisces.bbystatic.com/image2/BestBuy_US/images/products/6400/6400728_rd.jpg',
    backimg: 'https://pisces.bbystatic.com/image2/BestBuy_US/images/products/6400/6400728_bd.jpg',
    brand: 'sony',
    additional_specs: '
    Stay entertained with this Sony 4K smart TV. The 4K HDR screen provides a crystal-clear picture that brings your favorite movies and films to life, and the Android TV operating system is intuitive and easy to use. This Sony 4K smart TV features a Bass Reflex speaker for a rich, well-defined sound.'
)

phoneOne = Product.create(
    name: 'iphone 12',
    rating: 3.5,
    category: 'phone',
    frontimg: 'https://pisces.bbystatic.com/image2/BestBuy_US/images/products/6009/6009897_sd.jpg;maxHeight=640;maxWidth=550',
    sideimg: 'https://pisces.bbystatic.com/image2/BestBuy_US/images/products/6009/6009897cv11d.jpg',
    backimg: 'https://pisces.bbystatic.com/image2/BestBuy_US/images/products/6009/6009897cv12d.jpg',
    brand: 'apple',
    additional_specs: '
    iPhone 12. 5G to download movies on the fly and stream high-quality video. Beautifully bright 6.1-inch Super Retina XDR display. Ceramic Shield with 4x better drop performance. Incredible low-light photography with Night mode on all cameras. Cinema-grade Dolby Vision video recording, editing, and playback. Powerful A14 Bionic chip. And new MagSafe accessories for easy attach and faster wireless charging. Let the fun begin.'
)
phoneTwo = Product.create(
    name: 'iphone 11',
    rating: 3.1,
    category: 'phone',
    frontimg: '',
    sideimg: '',
    backimg: '',
    brand: 'apple',
    additional_specs: 'different apple stuff a whole bunch of stuff about apples, not pears'
)

usbOne = Product.create(
    name: 'easystore External USB 3.0 Portable Hard Drive - Black',
    rating: 2.5,
    category: 'accessory',
    frontimg: 'https://pisces.bbystatic.com/image2/BestBuy_US/images/products/6406/6406513_sd.jpg;maxHeight=640;maxWidth=550',
    sideimg: 'https://pisces.bbystatic.com/image2/BestBuy_US/images/products/6406/6406513cv11d.jpg',
    backimg: 'https://pisces.bbystatic.com/image2/BestBuy_US/images/products/6406/6406513cv13d.jpg',
    brand: 'WD',
    additional_specs: 'harddrive stuff about harddrives or something'
)

# usbTwo = Product.create(
#     name: 'usb drive',
#     rating: 4.0,
#     category: 'accessory',
#     frontimg: '',
#     sideimg: '',
#     backimg: '',
#     brand: 'glyph',
#     additional_specs: 'other harddrive stuff about harddrives or glyphs something'
# )

# opOne = ProductOption.create(
#     name: 'size',
#     product_id: tvOne.id
# )

# opValOne = ProductOptionValue.create(
#     name: '64inch',
#     product_option_id: opOne.id
# )

# opValTwo = ProductOptionValue.create(
#     name: '50inch',
#     product_option_id: opOne.id
# )


# skuOne = Sku.create(
#     name: 'sony tv 64inch',
#     price: 899.99,
#     product_id: tvOne.id,
#     product_option_id: opOne.id,
#     product_option_value_id: opValOne.id,
# )


# orderOne = Order.create(
#     user_id: jd.id
# )

# ProductOrder.create(
#     sku_id: skuOne.id,
#     order_id: orderOne.id
# )

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

def create_phones() 
    phones = Product.all.select{ |product| product.category == "phone"}
    option_values = [
        {
            size: "32gb",
            price: 749.00
        },
        {
            size: "64gb",
            price: 799.00
        },
        {
            size: "128gb",
            price: 849.00
        }
    ] 
    
    phones.each do |product|
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

def create_tvs() 
    tvs = Product.all.select{ |product| product.category == "tv"}
    option_values = [
        {
            size: '43"',
            price: 499.00
        },
        {
            size: '55"',
            price: 549.00
        },
        {
            size: '65"',
            price: 629.00
        }
    ] 
    
    phones.each do |product|
        option = ProductOption.create(
            name: "size",
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

harddrive_array = [ usbOne ]

def create_harddrives(product_array) 
    option_values = [
        {
            size: "1tb",
            price: 49.99
        },
        {
            size: "2tb",
            price: 62.99
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

create_phones()
create_harddrives(harddrive_array)