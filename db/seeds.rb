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
        name: 'Baru Tahun', #Penamaan gasan permission nya
        resource: 'year', #nama file di model harus sama
        action: 'new', #nama function di controller
        description: 'Tambah data tahun', #gasan penjelasan aja
        page: false, #ini akan bisa di akses di menu atau tidak
        path: 'new_year_path' #path di rails route
    },

    {
        name: 'Show Tahun', #Penamaan gasan permission nya
        resource: 'year', #nama file di model harus sama
        action: 'show', #nama function di controller
        description: 'Lihat data tahun', #gasan penjelasan aja
        page: false, #ini akan bisa di akses di menu atau tidak
        path: 'year_path' #path di rails route
    },
    {
        name: 'Update Tahun', #Penamaan gasan permission nya
        resource: 'year', #nama file di model harus sama
        action: 'edit', #nama function di controller
        description: 'Update data tahun', #gasan penjelasan aja
        page: false, #ini akan bisa di akses di menu atau tidak
        path: 'edit_year_path' #path di rails route
    },
    {
        name: 'Buang Tahun', #Penamaan gasan permission nya
        resource: 'year', #nama file di model harus sama
        action: 'destroy', #nama function di controller
        description: 'Delete data tahun', #gasan penjelasan aja
        page: false, #ini akan bisa di akses di menu atau tidak
        path: 'year_path' #path di rails route
    },

    {
        name: 'Manajemen Action Plan', #Penamaan gasan permission nya
        resource: 'action_plan', #nama file di model harus sama
        action: 'index', #nama function di controller
        description: 'Manajemen data Action Plan', #gasan penjelasan aja
        page: true, #ini akan bisa di akses di menu atau tidak
        path: 'year_action_plans_path' #path di rails route
    },
    {
        name: 'Baru Action Plan', #Penamaan gasan permission nya
        resource: 'action_plan', #nama file di model harus sama
        action: 'new', #nama function di controller
        description: 'Tambah data Action Plan', #gasan penjelasan aja
        page: false, #ini akan bisa di akses di menu atau tidak
        path: 'new_year_action_plan_path' #path di rails route
    },
    {
        name: 'Update Action Plan', #Penamaan gasan permission nya
        resource: 'action_plan', #nama file di model harus sama
        action: 'edit', #nama function di controller
        description: 'Update data Action Plan', #gasan penjelasan aja
        page: false, #ini akan bisa di akses di menu atau tidak
        path: 'edit_year_action_plan_path' #path di rails route
    },
    {
        name: 'Show Action Plan', #Penamaan gasan permission nya
        resource: 'action_plan', #nama file di model harus sama
        action: 'show', #nama function di controller
        description: 'Show data Action Plan', #gasan penjelasan aja
        page: false, #ini akan bisa di akses di menu atau tidak
        path: 'year_action_plan_path' #path di rails route
    },
    {
        name: 'Buang Action Plan', #Penamaan gasan permission nya
        resource: 'action_plan', #nama file di model harus sama
        action: 'destroy', #nama function di controller
        description: 'Delete data Action Plan', #gasan penjelasan aja
        page: false, #ini akan bisa di akses di menu atau tidak
        path: 'year_action_plan_path' #path di rails route
    },

    {
        name: 'Manajemen City', #Penamaan gasan permission nya
        resource: 'city', #nama file di model harus sama
        action: 'index', #nama function di controller
        description: 'Manajemen data Kota', #gasan penjelasan aja
        page: true, #ini akan bisa di akses di menu atau tidak
        path: 'cities_path' #path di rails route
    },
    {
        name: 'Baru City', #Penamaan gasan permission nya
        resource: 'city', #nama file di model harus sama
        action: 'new', #nama function di controller
        description: 'Tambah data Kota', #gasan penjelasan aja
        page: false, #ini akan bisa di akses di menu atau tidak
        path: 'new_city_path' #path di rails route
    },
    {
        name: 'Update City', #Penamaan gasan permission nya
        resource: 'city', #nama file di model harus sama
        action: 'edit', #nama function di controller
        description: 'Update data Kota', #gasan penjelasan aja
        page: false, #ini akan bisa di akses di menu atau tidak
        path: 'edit_city_path' #path di rails route
    },

    {
        name: 'Show City', #Penamaan gasan permission nya
        resource: 'city', #nama file di model harus sama
        action: 'show', #nama function di controller
        description: 'Lihat data Kota', #gasan penjelasan aja
        page: false, #ini akan bisa di akses di menu atau tidak
        path: 'city_path' #path di rails route
    },
    {
        name: 'Buang Kota', #Penamaan gasan permission nya
        resource: 'city', #nama file di model harus sama
        action: 'destroy', #nama function di controller
        description: 'Delete data kota', #gasan penjelasan aja
        page: false, #ini akan bisa di akses di menu atau tidak
        path: 'city_path' #path di rails route
    },

    {
        name: 'Manajemen Permission', #Penamaan gasan permission nya
        resource: 'permission', #nama file di model harus sama
        action: 'index', #nama function di controller
        description: 'Manajemen data Permission', #gasan penjelasan aja
        page: true, #ini akan bisa di akses di menu atau tidak
        path: 'permissions_path' #path di rails route
    },
    {
        name: 'Baru Permission', #Penamaan gasan permission nya
        resource: 'permission', #nama file di model harus sama
        action: 'new', #nama function di controller
        description: 'Tambah data permission', #gasan penjelasan aja
        page: false, #ini akan bisa di akses di menu atau tidak
        path: 'new_permission_path' #path di rails route
    },

    {
        name: 'Show Permission', #Penamaan gasan permission nya
        resource: 'permission', #nama file di model harus sama
        action: 'show', #nama function di controller
        description: 'Update data permission', #gasan penjelasan aja
        page: false, #ini akan bisa di akses di menu atau tidak
        path: 'permission_path' #path di rails route
    },
    {
        name: 'Update Permission', #Penamaan gasan permission nya
        resource: 'permission', #nama file di model harus sama
        action: 'edit', #nama function di controller
        description: 'Update data permission', #gasan penjelasan aja
        page: false, #ini akan bisa di akses di menu atau tidak
        path: 'edit_permission_path' #path di rails route
    },
    {
        name: 'Buang Permission', #Penamaan gasan permission nya
        resource: 'permission', #nama file di model harus sama
        action: 'destroy', #nama function di controller
        description: 'Delete data permission', #gasan penjelasan aja
        page: false, #ini akan bisa di akses di menu atau tidak
        path: 'permission_path' #path di rails route
    },
    
    {
        name: 'Manajemen Role', #Penamaan gasan permission nya
        resource: 'role', #nama file di model harus sama
        action: 'index', #nama function di controller
        description: 'Manajemen data role', #gasan penjelasan aja
        page: true, #ini akan bisa di akses di menu atau tidak
        path: 'roles_path' #path di rails route
    },
    {
        name: 'Baru Role', #Penamaan gasan permission nya
        resource: 'role', #nama file di model harus sama
        action: 'new', #nama function di controller
        description: 'Tambah data role', #gasan penjelasan aja
        page: false, #ini akan bisa di akses di menu atau tidak
        path: 'new_role_path' #path di rails route
    },
    {
        name: 'Update Role', #Penamaan gasan permission nya
        resource: 'role', #nama file di model harus sama
        action: 'edit', #nama function di controller
        description: 'Update data role', #gasan penjelasan aja
        page: false, #ini akan bisa di akses di menu atau tidak
        path: 'edit_role_path' #path di rails route
    },

    {
        name: 'Show Role', #Penamaan gasan permission nya
        resource: 'role', #nama file di model harus sama
        action: 'show', #nama function di controller
        description: 'Lihat data role', #gasan penjelasan aja
        page: false, #ini akan bisa di akses di menu atau tidak
        path: 'role_path' #path di rails route
    },
    {
        name: 'Buang Role', #Penamaan gasan permission nya
        resource: 'role', #nama file di model harus sama
        action: 'destroy', #nama function di controller
        description: 'Delete data Role', #gasan penjelasan aja
        page: false, #ini akan bisa di akses di menu atau tidak
        path: 'role_path' #path di rails route
    },

    {
        name: 'Manajemen User', #Penamaan gasan permission nya
        resource: 'user', #nama file di model harus sama
        action: 'index', #nama function di controller
        description: 'Manajemen data pengguna', #gasan penjelasan aja
        page: true, #ini akan bisa di akses di menu atau tidak
        path: 'users_path' #path di rails route
    },
    {
        name: 'Baru User', #Penamaan gasan permission nya
        resource: 'user', #nama file di model harus sama
        action: 'new', #nama function di controller
        description: 'Tambah data Pengguna', #gasan penjelasan aja
        page: false, #ini akan bisa di akses di menu atau tidak
        path: 'new_user_path' #path di rails route
    },
    {
        name: 'Update User', #Penamaan gasan permission nya
        resource: 'user', #nama file di model harus sama
        action: 'edit', #nama function di controller
        description: 'Update data Pengguna', #gasan penjelasan aja
        page: false, #ini akan bisa di akses di menu atau tidak
        path: 'edit_user_path' #path di rails route
    },

    {
        name: 'Show User', #Penamaan gasan permission nya
        resource: 'user', #nama file di model harus sama
        action: 'show', #nama function di controller
        description: 'Lihat data Pengguna', #gasan penjelasan aja
        page: false, #ini akan bisa di akses di menu atau tidak
        path: 'user_path' #path di rails route
    },
    {
        name: 'Buang User', #Penamaan gasan permission nya
        resource: 'user', #nama file di model harus sama
        action: 'destroy', #nama function di controller
        description: 'Delete data Pengguna', #gasan penjelasan aja
        page: false, #ini akan bisa di akses di menu atau tidak
        path: 'user_path' #path di rails route
    },

    {
        name: 'Dashboard City', #Penamaan gasan permission nya
        resource: 'dashboard_city', #nama file di model harus sama
        action: 'index', #nama function di controller
        description: 'Dashboard City', #gasan penjelasan aja
        page: true, #ini akan bisa di akses di menu atau tidak
        path: 'dashboard_cities_path' #path di rails route
    },
    {
        name: 'Ubah City Untuk Pengguna', #Penamaan gasan permission nya
        resource: 'dashboard_city', #nama file di model harus sama
        action: 'update', #nama function di controller
        description: 'Ubah City', #gasan penjelasan aja
        page: false, #ini akan bisa di akses di menu atau tidak
        path: 'dashboard_city_path' #path di rails route
    },
    {
        name: 'Dashboard Year', #Penamaan gasan permission nya
        resource: 'dashboard_year', #nama file di model harus sama
        action: 'index', #nama function di controller
        description: 'Dashboard Years', #gasan penjelasan aja
        page: true, #ini akan bisa di akses di menu atau tidak
        path: 'dashboard_city_years_path' #path di rails route
    },
]

puts "Create Permissions"
 permissions.each do |permission|
      add_permissions= Permission.create(permission)
      p permission
 end

 roles=[{name_role: "Superadmin"},{name_role: "Admin"}]


 puts "Create Role"
 roles.each do |role|
        add_roles=Role.create(role)
 end

roles = Role.all
permissions = Permission.all

puts "Create Role Permissions"
roles.each do |role|
    permissions.each do |permission|
        role_permission = RolePermission.new
        role_permission.role=role
        role_permission.permission=permission
        role_permission.save
    end
end

puts "Create City"


city= "Kota Banjarmasin"

image_path = "#{Rails.root}/db/kota_banjarmasin.png"
image_file = File.new(image_path)

add_city = City.create(
    city: city,
    logo_city: image_file
)

puts "Create User"

city=City.first
role=Role.first

add_user = User.create(
        city_id: city.id,
        role_id: role.id,
        username: "runcode",
        email: "runcode.id@gmail.com",
        name: "runcode",
        password: "@runcode.id"
    )
