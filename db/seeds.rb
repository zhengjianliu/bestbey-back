ProductOrder.destroy_all
Order.destroy_all
User.destroy_all
Sku.destroy_all
ProductOptionValue.destroy_all
ProductOption.destroy_all
Product.destroy_all


# ******* test user ********

jd = User.create(
    username: 'jd',
    firstname: 'justin',
    lastname: 'brewer-hofmann',
    password: '1234',
    email: 'jd@me.com'
)



def create_product_options(option_values, product, option_name)
    option = ProductOption.create(
        name: option_name,
        product_id: product.id
    )
    option_values.each do |value|
        option_value = ProductOptionValue.create(
            name: value[:option_value],
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

# ******** phones ********

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
iphone12_options = [
        {
            option_value: "32gb",
            price: 749.00
        },
        {
            option_value: "64gb",
            price: 799.00
        },
        {
            option_value: "128gb",
            price: 849.00
        }
    ]
    create_product_options(iphone12_options, phoneOne, "storage")

phoneTwo = Product.create(
    name: 'iphone 11',
    rating: 3.5,
    category: 'phone',
    frontimg: 'https://pisces.bbystatic.com/image2/BestBuy_US/images/products/6341/6341340cv11d.jpg',
    sideimg: 'https://pisces.bbystatic.com/image2/BestBuy_US/images/products/6341/6341340cv12d.jpg',
    backimg: 'https://pisces.bbystatic.com/image2/BestBuy_US/images/products/6341/6341340cv13d.jpg',
    brand: 'apple',
    additional_specs:
    'Shoot 4K videos, beautiful portraits, and sweeping landscapes with the all-new dual-camera system. Capture your best low-light photos with Night mode. See true-to-life color in your photos, videos, and games on the 6.1-inch Liquid Retina display. Experience unprecedented performance with A13 Bionic for gaming, augmented reality (AR), and photography. Do more and charge less with all-day battery life. And worry less with water resistance up to 2 meters for 30 minutes.'
)
iphone11_options = [
        {
            option_value: "64gb",
            price: 599.00
        },
        {
            option_value: "128gb",
            price: 649.00
        }
    ]
    create_product_options(iphone11_options, phoneTwo, "storage")

phoneThree = Product.create(
    name: 'Galaxy S20 FE 5G',
    rating: 3.25,
    category: 'phone',
    frontimg: 'https://pisces.bbystatic.com/image2/BestBuy_US/images/products/6426/6426276_sd.jpg;maxHeight=640;maxWidth=550',
    sideimg: 'https://pisces.bbystatic.com/image2/BestBuy_US/images/products/6426/6426276cv15d.jpg',
    backimg: 'https://pisces.bbystatic.com/image2/BestBuy_US/images/products/6426/6426276cv13d.jpg',
    brand: 'samsung',
    additional_specs:
    'The standout in the crowd, the one with relentless passion. The one that stays true to yourself and connected to those around you. You deserve a phone that delivers industry-leading tech and allows you to express yourself in way you choose. With bold color options, pro-grade camera, 120Hz display and an all-day intelligent battery¹ that charges up in minutes², the Galaxy S20 FE 5G delivers uncompromised innovation. This is unexpected. ¹Based on average battery life under typical usage conditions. Average expected performance based on typical use. Actual battery life depends on factors such as network, features selected, frequency of calls, and voice, data, and other application usage patterns. Results may vary. ²When using 25W charger, sold separately.'
)
phoneThree_options = [
        {
            option_value: "64gb",
            price: 499.00
        },
        {
            option_value: "128gb",
            price: 549.00
        }
    ]
create_product_options(phoneThree_options, phoneThree, "storage")

phoneFour = Product.create(
    name: 'Galaxy Note20 Ultra 5G',
    rating: 3.75,
    category: 'phone',
    frontimg: 'https://pisces.bbystatic.com/image2/BestBuy_US/images/products/6420/6420842_sd.jpg',
    sideimg: 'https://pisces.bbystatic.com/image2/BestBuy_US/images/products/6420/6420842ld.jpg',
    backimg: 'https://pisces.bbystatic.com/image2/BestBuy_US/images/products/6420/6420842cv19d.jpg',
    brand: 'samsung',
    additional_specs:
    "The power to work. The power to play. This isn't the time to slow down, this is the time to forge ahead and take the opportunities that come your way. You don’t need a smartphone. You need a power phone. One as beautiful as it is intelligent with a pen that is mightier, a battery that doesn't leave you hanging and is as well-connected as you. Samsung Galaxy Note20 Ultra 5G Unlocked takes power to the next level with cutting-edge technology, letting you master whatever you choose to do next."
)
phoneFour_options = [
        {
            option_value: "128gb",
            price: 1049.99
        },
        {
            option_value: "512gb",
            price: 1199.99
        }
    ]
create_product_options(phoneFour_options, phoneFour, "storage")

# ********** tvs ***********


tvOne = Product.create(
    name: 'Class X750H Series',
    rating: 3.5,
    category: 'tv',
    frontimg: 'https://pisces.bbystatic.com/image2/BestBuy_US/images/products/6400/6400728_sd.jpg;maxHeight=640;maxWidth=550',
    sideimg: 'https://pisces.bbystatic.com/image2/BestBuy_US/images/products/6400/6400728_rd.jpg',
    backimg: 'https://pisces.bbystatic.com/image2/BestBuy_US/images/products/6400/6400728_bd.jpg',
    brand: 'Sony',
    additional_specs: '
    Stay entertained with this Sony 4K smart TV. The 4K HDR screen provides a crystal-clear picture that brings your favorite movies and films to life, and the Android TV operating system is intuitive and easy to use. This Sony 4K smart TV features a Bass Reflex speaker for a rich, well-defined sound.'
)
tvOne_options = [
        {
            option_value: '43"',
            price: 499.00
        },
        {
            option_value: '55"',
            price: 549.00
        },
        {
            option_value: '65"',
            price: 629.00
        }
    ]
create_product_options(tvOne_options, tvOne, "size" )

tvTwo = Product.create(
    name: 'Class UN7000 Series LED 4K UHD Smart webOS TV',
    rating: 3.5,
    category: 'tv',
    frontimg: 'https://pisces.bbystatic.com/image2/BestBuy_US/images/products/6417/6417302_sd.jpg',
    sideimg: 'https://pisces.bbystatic.com/image2/BestBuy_US/images/products/6417/6417302cv13d.jpg',
    backimg: 'https://pisces.bbystatic.com/image2/BestBuy_US/images/products/6417/6417302cv16d.jpg',
    brand: 'LG',
    additional_specs:
    'LG UHD TV is your ticket to a stunning picture. Get easy access to new and popular apps like Disney+, the Apple TV app, Sling and more. Elevate entertainment with surround sound, auto picture settings of Filmmaker Mode™ and convenient updates of Sports Alert.'
)
tvTwo_options = [
        {
            option_value: '43"',
            price: 249.99
        },
        {
            option_value: '50"',
            price: 299.99
        },
        {
            option_value: '65"',
            price: 499.99
        }
    ]
create_product_options(tvTwo_options, tvTwo, "size" )

tvThree = Product.create(
    name: 'Class 4 Series LED 4K UHD Smart Android TV',
    rating: 2.75,
    category: 'tv',
    frontimg: 'https://pisces.bbystatic.com/image2/BestBuy_US/images/products/6422/6422761_sd.jpg',
    sideimg: 'https://pisces.bbystatic.com/image2/BestBuy_US/images/products/6422/6422761ld.jpg',
    backimg: 'https://pisces.bbystatic.com/image2/BestBuy_US/images/products/6422/6422761cv11d.jpg',
    brand: 'TCL',
    additional_specs:
    'The 4-Series 4K TCL Android TV delivers stunning Ultra HD picture quality with four times the resolution of Full HD for enhanced clarity and detail, as well as endless entertainment with thousands of streaming apps. Watch your entertainment favorites in one place, with seamless access to over 700,000 movies and TV episodes, your cable box, gaming console, and other devices—all from a simple, speedy home screen. Enjoy entertainment, get answers, and control devices around your home using the built-in Google Assistant. Plus, with Chromecast built-in, you can easily cast movies, shows, and photos from your Android or iOS device to your TCL Android TV. Connect all your favorite devices with the multiple HDMI inputs. Cord cutters can access free, over-the-air HD content with the built-in tuner or watch live TV from popular cable-replacement services like YouTube TV, Sling, Hulu and more.'
)
tvThree_options = [
        {
            option_value: '50"',
            price: 229.99
        },
        {
            option_value: '55"',
            price: 249.99
        },
        {
            option_value: '75"',
            price: 799.99
        }
    ]
create_product_options(tvThree_options, tvThree, "size" )

# ******** accessories *********

harddriveOne = Product.create(
    name: 'easystore External USB 3.0 Portable Hard Drive - Black',
    rating: 2.5,
    category: 'accessory',
    frontimg: 'https://pisces.bbystatic.com/image2/BestBuy_US/images/products/6406/6406513_sd.jpg;maxHeight=640;maxWidth=550',
    sideimg: 'https://pisces.bbystatic.com/image2/BestBuy_US/images/products/6406/6406513cv11d.jpg',
    backimg: 'https://pisces.bbystatic.com/image2/BestBuy_US/images/products/6406/6406513cv13d.jpg',
    brand: 'WD',
    additional_specs: '
    Expand your PC storage with this WD easystore external desktop drive. The capacity accommodates an expanding media library, while the USB 3.0 interface offers data transfer speeds of up to 5GB/sec. for rapid file sharing. This WD easystore external desktop drive features an automatic backup software to ensure your files remain safe.'
)
harddriveOne_options = [
        {
            option_value: "1tb",
            price: 49.99
        },
        {
            option_value: "2tb",
            price: 62.99
        }
    ]
create_product_options(harddriveOne_options, harddriveOne, "storage")

<<<<<<< HEAD
# ***** test user case below *******
#
# skuOne = Sku.all.find { |sku| sku.name == 'sony Class X750H Series 43"'}
#
# orderOne = Order.create(
#     user_id: jd.id
# )

=======

harddriveTwo = Product.create(
    name: 'Rugged External USB Type-C Portable Hard Drive - Orange/Silver',
    rating: 3.4,
    category: 'accessory',
    frontimg: 'https://pisces.bbystatic.com/image2/BestBuy_US/images/products/6083/6083500_sd.jpg;maxHeight=640;maxWidth=550',
    sideimg: 'https://pisces.bbystatic.com/image2/BestBuy_US/images/products/6083/6083500ld.jpg',
    backimg: 'https://pisces.bbystatic.com/image2/BestBuy_US/images/products/6083/6083500cv11d.jpg',
    brand: 'LaCie',
    additional_specs: "Transport digital files securely with this LaCie Rugged portable drive. It's resistant to crushing and withstands drops from up to 4 feet, and its USB 3.1 interface provides high-speed file transfers to and from USB-C devices. The included USB-C to USB-A cable of this LaCie Rugged portable drive enables backward compatibility with USB 2.0 and 1.0 computers."
)
harddriveTwo_options = [
        {
            option_value: "2tb",
            price: 99.99
        },
        {
            option_value: "5tb",
            price: 169.99
        }
    ] 
create_product_options(harddriveTwo_options, harddriveTwo, "storage")


harddriveThree = Product.create(
    name: 'Expansion External USB 3.0 Portable Hard Drive - Black',
    rating: 3.4,
    category: 'accessory',
    frontimg: 'https://pisces.bbystatic.com/image2/BestBuy_US/images/products/7028/7028043_sd.jpg;maxHeight=640;maxWidth=550',
    sideimg: 'https://pisces.bbystatic.com/image2/BestBuy_US/images/products/7028/7028043cv11d.jpg;maxHeight=640;maxWidth=550',
    backimg: 'https://pisces.bbystatic.com/image2/BestBuy_US/images/products/7028/7028043cv12d.jpg;maxHeight=640;maxWidth=550',
    brand: 'Seagate',
    additional_specs: "Seagate Expansion portable hard drive, which features a USB 3.0 interface for easy connection to your existing computer. Data transfer rates up to 4.8 Gbps provide quick operation."
)
harddriveThree_options = [
        {
            option_value: "500gb",
            price: 52.49
        },
        {
            option_value: "1tb",
            price: 49.99
        },
        {
            option_value: "2tb",
            price: 57.49
        },
        {
            option_value: "4tb",
            price: 97.49
        }
    ] 
create_product_options(harddriveThree_options, harddriveThree, "storage")

# ******** Smart Watches ***********

smartWatchOne = Product.create(
    name: 'Apple Watch Nike SE (GPS) 40mm Space Gray Aluminum Case with Anthracite/Black Nike Sport Band - Space Gray',
    rating: 3.8,
    category: 'smart watch',
    frontimg: 'https://pisces.bbystatic.com/image2/BestBuy_US/images/products/6215/6215904_sd.jpg;maxHeight=640;maxWidth=550',
    sideimg: 'https://pisces.bbystatic.com/image2/BestBuy_US/images/products/6215/6215904cv11d.jpg',
    backimg: 'https://pisces.bbystatic.com/image2/BestBuy_US/images/products/6215/6215904cv15d.jpg',
    brand: 'Apple',
    additional_specs: 'With Apple Watch Nike SE, you can track your workouts and listen to Audio Guided Runs with the Nike Run Club app. Sync music for motivation to your watch. Turn on Nike Twilight Mode for enhanced visibility.¹ And choose from exclusive Nike watch faces and bands'
)
smartWatchOne_options = [
        {
            option_value: "40mm",
            price: 279.00
        },
        {
            option_value: "44mm",
            price: 309.00
        }
    ] 
create_product_options(smartWatchOne_options, smartWatchOne, "size")

smartWatchTwo = Product.create(
    name: 'Apple Watch Series 3 (GPS) 38mm Space Gray Aluminum Case with Black Sport Band - Space Gray Aluminum',
    rating: 3.7,
    category: 'smart watch',
    frontimg: 'https://pisces.bbystatic.com/image2/BestBuy_US/images/products/5706/5706618ld.jpg;maxHeight=640;maxWidth=550',
    sideimg: 'https://pisces.bbystatic.com/image2/BestBuy_US/images/products/5706/5706618cv11d.jpg;maxHeight=640;maxWidth=550',
    backimg: 'https://pisces.bbystatic.com/image2/BestBuy_US/images/products/5706/5706618cv11d.jpg',
    brand: 'Apple',
    additional_specs: 'Low and high heart rate notifications. Emergency SOS. New Breathe watch faces. Automatic workout detection. New yoga and hiking workouts. Advanced features for runners like cadence and pace alerts. New head-to-head competitions. Activity sharing with friends. Personalized coaching. Monthly challenges and achievement awards. You can use Walkie-Talkie, make phone calls, and send messages. Listen to Apple Music¹ and Apple Podcasts. And use Siri in all-new ways. Apple Watch Series 3 lets you do it all right from your wrist.'
)
smartWatchTwo_options = [
        {
            option_value: "38mm",
            price: 199.00
        },
        {
            option_value: "40mm",
            price: 229.00
        }
    ] 
create_product_options(smartWatchTwo_options, smartWatchTwo, "size")

smartWatchThree = Product.create(
    name: 'Galaxy Watch Active2 Smartwatch 40mm Aluminum - Cloud Silver',
    rating: 3.7,
    category: 'smart watch',
    frontimg: 'https://pisces.bbystatic.com/image2/BestBuy_US/images/products/6360/6360444_sd.jpg;maxHeight=640;maxWidth=550',
    sideimg: 'https://pisces.bbystatic.com/image2/BestBuy_US/images/products/6360/6360444_rd.jpg',
    backimg: 'https://pisces.bbystatic.com/image2/BestBuy_US/images/products/6360/6360444cv14d.jpg',
    brand: 'Samsung',
    additional_specs: 'Balance work and play with this Samsung Galaxy Active2 smartwatch. Automatic activity tracking with heart rate and sleep monitoring helps you stay mindful of your fitness goals, and LTE connectivity supports hands-free calls and high-speed Internet access. The Super AMOLED display and touch bezel of this Samsung Galaxy Active2 smartwatch enables intuitive operation.'
)
smartWatchThree_options = [
        {
            option_value: "40mm",
            price: 179.00
        },
        {
            option_value: "44mm",
            price: 199.00
        }
    ] 
create_product_options(smartWatchThree_options, smartWatchThree, "size")

smartWatchFour = Product.create(
    name: 'Versa 2 Smartwatch 40mm Aluminum',
    rating: 3.7,
    category: 'smart watch',
    frontimg: 'https://pisces.bbystatic.com/image2/BestBuy_US/images/products/6364/6364308_sd.jpg;maxHeight=640;maxWidth=550',
    sideimg: 'https://pisces.bbystatic.com/image2/BestBuy_US/images/products/6364/6364308_rd.jpg',
    backimg: 'https://pisces.bbystatic.com/image2/BestBuy_US/images/products/6364/6364308_bd.jpg',
    brand: 'Fitbit',
    additional_specs: 'This Fitbit Versa 2™ is a smartwatch that elevates every moment. Use your voice to create alarms, set bedtime reminders, or check the weather with Amazon Alexa built in. Take your look from the gym to the office with its modern and versatile design. See your statistics with an always-on display mode. You can also get Fitbit Pay™, daily sleep quality scores, apps, notifications, 24/7 heart rate and store over 300 songs for an experience that revolves around you.'
)
smartWatchFour_options = [
        {
            option_value: "Petal/Copper Rose",
            price: 179.95
        },
        {
            option_value: "Black/Carbon",
            price: 179.95
        },
        {
            option_value: "Iron Mist",
            price: 199.95
        }
    ] 
create_product_options(smartWatchFour_options, smartWatchFour, "color")

# ***** test user case below *******

# skuOne = Sku.all.find { |sku| sku.name == 'sony Class X750H Series 43"'}

# orderOne = Order.create(
#     user_id: jd.id
# )

>>>>>>> 1949f8405331473bff28c5767f46446d8b534444
# ProductOrder.create(
#     sku_id: skuOne.id,
#     order_id: orderOne.id,
#     quantity: 2
<<<<<<< HEAD
# )
=======
# )
>>>>>>> 1949f8405331473bff28c5767f46446d8b534444
