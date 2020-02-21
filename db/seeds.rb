# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

permissions =[
    {
        name: 'Manajemen Tahun', #Penamaan gasan permission nya
        resource: 'year', #nama file di model harus sama
        action: 'index', #nama function di controller
        description: 'Manajemen data tahun', #gasan penjelasan aja
        page: true, #ini akan bisa di akses di menu atau tidak
        path: 'years_path' #path di rails route
    },
    {
        name: 'Create Tahun', #Penamaan gasan permission nya
        resource: 'year', #nama file di model harus sama
        action: 'new', #nama function di controller
        description: 'Tambah data tahun', #gasan penjelasan aja
        page: false, #ini akan bisa di akses di menu atau tidak
        path: 'new_year_path' #path di rails route
    },
]