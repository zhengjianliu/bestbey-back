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
    price: "899.99",
    product_id: tvOne.id,
    product_option_id: opOne.id,
    product_option_value_id: opValOne.id,
)