# frozen_string_literal: true

# Tables without foreign keys
# State.create(name: 'Alaska', abbreviation: 'AK')
# State.create(name: 'Alabama', abbreviation: 'AL')
# State.create(name: 'Arizona', abbreviation: 'AZ')
# State.create(name: 'Arkansas', abbreviation: 'AR')
# State.create(name: 'California', abbreviation: 'CA')
# State.create(name: 'Colorado', abbreviation: 'CO')
# State.create(name: 'Connecticut', abbreviation: 'CT')
# State.create(name: 'Delaware', abbreviation: 'DE')
# State.create(name: 'District of Columbia', abbreviation: 'DC')
# State.create(name: 'Florida', abbreviation: 'FL')
# State.create(name: 'Georgia', abbreviation: 'GA')
# State.create(name: 'Hawaii', abbreviation: 'HI')
# State.create(name: 'Idaho', abbreviation: 'ID')
# State.create(name: 'Illinois', abbreviation: 'IL')
# State.create(name: 'Indiana', abbreviation: 'IN')
# State.create(name: 'Iowa', abbreviation: 'IA')
# State.create(name: 'Kansas', abbreviation: 'KS')
# State.create(name: 'Kentucky', abbreviation: 'KY')
# State.create(name: 'Louisiana', abbreviation: 'LA')
# State.create(name: 'Maine', abbreviation: 'ME')
# State.create(name: 'Maryland', abbreviation: 'MD')
# State.create(name: 'Massachusetts', abbreviation: 'MA')
# State.create(name: 'Michigan', abbreviation: 'MI')
# State.create(name: 'Minnesota', abbreviation: 'MN')
# State.create(name: 'Mississippi', abbreviation: 'MS')
# State.create(name: 'Missouri', abbreviation: 'MO')
# State.create(name: 'Montana', abbreviation: 'MT')
# State.create(name: 'Nebraska', abbreviation: 'NE')
# State.create(name: 'Nevada', abbreviation: 'NV')
# State.create(name: 'New Hampshire', abbreviation: 'NH')
# State.create(name: 'New Jersey', abbreviation: 'NJ')
# State.create(name: 'New Mexico', abbreviation: 'NM')
# State.create(name: 'New York', abbreviation: 'NY')
# State.create(name: 'North Carolina', abbreviation: 'NC')
# State.create(name: 'North Dakota', abbreviation: 'ND')
# State.create(name: 'Ohio', abbreviation: 'OH')
# State.create(name: 'Oklahoma', abbreviation: 'OK')
# State.create(name: 'Oregon', abbreviation: 'OR')
# State.create(name: 'Pennsylvania', abbreviation: 'PA')
# State.create(name: 'Puerto Rico', abbreviation: 'PR')
# State.create(name: 'Rhode Island', abbreviation: 'RI')
# State.create(name: 'South Carolina', abbreviation: 'SC')
# State.create(name: 'South Dakota', abbreviation: 'SD')
# State.create(name: 'Tennessee', abbreviation: 'TN')
# State.create(name: 'Texas', abbreviation: 'TX')
# State.create(name: 'Utah', abbreviation: 'UT')
# State.create(name: 'Vermont', abbreviation: 'VT')
# State.create(name: 'Virginia', abbreviation: 'VA')
# State.create(name: 'Washington', abbreviation: 'WA')
# State.create(name: 'West Virginia', abbreviation: 'WV')
# State.create(name: 'Wisconsin', abbreviation: 'WI')
# State.create(name: 'Wyoming', abbreviation: 'WY')
#
# BidStatus.create(name: 'waiting')
# BidStatus.create(name: 'approved')
# BidStatus.create(name: 'denied')
# BidStatus.create(name: 'expired')
#
# UserCategory.create(name: 'admin', description: 'Administrator Privileges')
# UserCategory.create(name: 'guest', description: 'Limited Privileges')
# UserCategory.create(name: 'client', description: 'Client Privileges')
#
# Term.create(name: 'Due on Receipt')
# Term.create(name: 'Net 15')
# Term.create(name: 'Net 30')
# Term.create(name: 'Net 45')
# Term.create(name: 'Net 60')
# Term.create(name: 'Net 90')
#
# CompanyCategory.create(name: 'Client')
# CompanyCategory.create(name: 'Vendor')
# CompanyCategory.create(name: 'Owner')
#
# Image.create(
#   name: 'Phoneix Reconstruction LLC',
#   url: 'company1.jpg'
# )
# Image.create(
#   name: 'Keller Williams',
#   url: 'company2.jpg'
# )
# Image.create(
#   name: 'Jason Campbell',
#   url: 'user1.jpg'
# )
# Image.create(
#   name: 'Doc Nicolson',
#   url: 'user2.jpg'
# )
# Image.create(
#   name: 'Invoice',
#   url: 'invoice.jpg'
# )
# Image.create(
#   name: 'Home Depot',
#   url: 'expense.jpg'
# )
#
# Vehicle.create(
#   manufacturer_year: '1994',
#   make: 'Subaru',
#   model: 'Legacy',
#   sub_model: 'L',
#   engine: '2.2L 2212 CC H4',
#   notes: '5 Door Station Wagon (AWD)'
# )
# Vehicle.create(
#   manufacturer_year: '1981',
#   make: 'Ford',
#   model: 'F-150',
#   sub_model: 'Custom',
#   engine: '4.9L 300 CID L6 ',
#   notes: '1/2 Ton Pickup (2WD - rear wheel drive)'
# )
# Vehicle.create(
#   manufacturer_year: '2003',
#   make: 'GMC',
#   model: 'Yukon',
#   sub_model: 'Denali XL',
#   engine: '6.0L V-8',
#   notes: 'AWD'
# )
#
# Sku.create(name: 'Winterize', description: '')
# Sku.create(name: 'Lock Replacement', description: '')
# Sku.create(name: 'Trash Out', description: '')
# Sku.create(name: 'Demolition', description: '')
# Sku.create(name: 'Repair', description: '')
# Sku.create(name: 'Snow Removal', description: 'Shovel Walkway, Driveway, Paths')
# Sku.create(name: 'Installation', description: 'Installation')
# Sku.create(name: 'Lawn Maintenance', description: 'Lawn Maintenance')
# Sku.create(name: 'Interior Cleaning', description: 'Interior Cleaning')
# Sku.create(name: 'Exterior Cleaning', description: 'Minor Exterior Cleaning')
# Sku.create(name: 'Mold Remediation', description: 'Mold Removal/Remediation')
# Sku.create(name: 'De-Winterize', description: '')
# Sku.create(name: 'Electronic Device Configuration', description: 'recode garage door opener')
# Sku.create(name: 'Materials', description: 'Supply Materials for a company')
# Sku.create(name: 'Short-term Loan', description: 'Short-term Loan')
#
# ExpenseCategory.create(
#   name: 'Assets (Depreciation)',
#   description: 'Tools or Equipment over $100 (include tax and shipping)'
# )
# ExpenseCategory.create(
#   name: 'Vehicle Gas',
#   description: 'Gasoline for Vehicle'
# )
# ExpenseCategory.create(
#   name: 'Vehicle Tires',
#   description: 'Tires for Vehicle'
# )
# ExpenseCategory.create(
#   name: 'Vehicle Repair',
#   description: 'Brakes, Engine, Transmission, etc'
# )
# ExpenseCategory.create(
#   name: 'Vehicle Maintenance',
#   description: 'Oil change, Oil/Air Filter, Light Bulbs, etc'
# )
# ExpenseCategory.create(
#   name: 'Supplies',
#   description: 'Small Tools, Drill Bits, Screws, Hoses, Cords, Nails, Safety Equipment, Protective Clothes, etc'
# )
# ExpenseCategory.create(
#   name: 'Materials',
#   description: 'Lumber, Hardware, etc'
# )
# ExpenseCategory.create(
#   name: 'Communication',
#   description: 'Second Phone Line, Long Distance, Cell Phone Service'
# )
# ExpenseCategory.create(
#   name: 'Home Office',
#   description: 'Mortgage Interest, Rent, Utilities, Homeowner/Renters Insurance'
# )
# ExpenseCategory.create(
#   name: 'Taxes and Licenses',
#   description: 'Payroll, Business Licenses, Permits'
# )
# ExpenseCategory.create(
#   name: 'Advertising',
#   description: 'Business Cards, PhoneBook Ads, Web Ads, Flyers, Brochures'
# )
# ExpenseCategory.create(
#   name: 'Business Travel',
#   description: 'Air Fare, Hotel, Rental Car'
# )
# ExpenseCategory.create(
#   name: 'Insurance Payments',
#   description: 'Liability Insurance'
# )
# ExpenseCategory.create(
#   name: 'Rental Payments',
#   description: 'Equipment such as computers, tools, warehouse space or land'
# )
# ExpenseCategory.create(
#   name: 'Legal and Professional Fees',
#   description: 'Fees for business-related legal matters'
# )
# ExpenseCategory.create(
#   name: 'Commissions',
#   description: 'Finder\'s Fees, Sales Commissions, Legal Referrals'
# )
# ExpenseCategory.create(
#   name: 'Contract Labor',
#   description: 'Sub- and independent Contractors, Additional Project Support'
# )
# ExpenseCategory.create(
#   name: 'Repairs and Maintenance',
#   description: 'Painting, Plumbing, Electrical, Computer Services'
# )
# ExpenseCategory.create(
#   name: 'Utilities (for Business, not Personal)',
#   description: 'Gas, Electricity, Water, Trash, Alarm Monitoring'
# )
# ExpenseCategory.create(
#   name: 'Other Office Expenses',
#   description: 'Pickup and Delivery Services, Data Backup'
# )
# ExpenseCategory.create(
#   name: 'Miscellaneous Expenses',
#   description: 'Answering Services, Bank Charges, Business-related Gifts'
# )
# ExpenseCategory.create(
#   name: 'Equipment Gas',
#   description: 'Gasoline for Equipment'
# )
# ExpenseCategory.create(
#   name: 'Vehicle Oil',
#   description: 'Oil for Vehicle'
# )
# ExpenseCategory.create(
#   name: 'Waste Disposal',
#   description: 'Waste Disposal'
# )
# ExpenseCategory.create(
#   name: 'Vehicle Insurance',
#   description: 'Auto Insurance'
# )
# ExpenseCategory.create(
#   name: 'Vehicle Registration/License',
#   description: 'Registration/Licensing Fees'
# )
# ExpenseCategory.create(
#   name: 'Vehicle - Garage Rent',
#   description: 'Garage Rent'
# )
# ExpenseCategory.create(
#   name: 'Vehicle - Other Expense',
#   description: 'Towing, Tools for Vehicle, Car Wash'
# )
# ExpenseCategory.create(
#   name: 'Office Supplies',
#   description: 'Memberships, Books, Pencils, Paper'
# )
#
# ExpenseItem.create(
#   quantity: 2,
#   name: '2 x 4 x 8',
#   amount: 2.01,
#   subtotal: 4.02,
#   tax: 0.00,
#   total: 4.02
# )
# ExpenseItem.create(
#   quantity: 2,
#   name: '2 x 4 x 10',
#   amount: 3.01,
#   subtotal: 6.02,
#   tax: 0.00,
#   total: 6.02
# )
# ExpenseItem.create(
#   quantity: 2,
#   name: '2 x 4 x 12',
#   amount: 4.01,
#   subtotal: 8.02,
#   tax: 0.00,
#   total: 8.02
# )
#
# # Tables with foreign keys
# LineItem.create(
#   sku_id: 5,
#   description: 'Build and Install Railing for South &amp East Decking',
#   amount: 800.00
# )
# LineItem.create(
#   sku_id: 3,
#   description: 'Remove garbage inside and outside of commercial structure.',
#   amount: 675.00
# )
# LineItem.create(
#   sku_id: 2,
#   description: 'Replace door locks',
#   amount: 10.00
# )
# LineItem.create(
#   sku_id: 6,
#   description: 'Snow Shovel',
#   amount: 50.00
# )
#
# ProjectSite.create(
#   address: '36124 N Milan Elk Rd',
#   city: 'Chattoroy',
#   state_id: 49,
#   zipcode: '99003',
#   access_code: '2610',
#   map_url: 'http://maps.google.com/maps?oe=utf-8&rls=org.mozilla:en-US:official&client=firefox-a&q=36124+N+Milan+Elk+Rd,+Chattaroy,+WA+99003&um=1&ie=UTF-8&hq=&hnear=0x5361f85ddc29a92b:0x951d12627d29840c,36124+N+Milan+Elk+Rd,+Chattaroy,+WA+99003&gl=us&ei=vMLiTfurNKvQiAL0l7WoBg&sa=X&oi=geocode_result&ct=title&resnum=1&ved=0CCEQ8gEwAA'
# )
# ProjectSite.create(
#   address: '1852 N Driskill',
#   city: 'Newport', state_id: 49,
#   zipcode: '99156',
#   access_code: '6467',
#   map_url: ''
# )
# ProjectSite.create(
#   address: '4072 Garden Spot Rd',
#   city: 'Loon Lake',
#   state_id: 49,
#   zipcode: '99148',
#   access_code: '0',
#   map_url: ''
# )
# ProjectSite.create(
#   address: '224 W Carlisle Ave',
#   city: 'Spokane',
#   state_id: 49,
#   zipcode: '99205',
#   access_code: '0',
#   map_url: 'http://maps.google.com/maps?q=224+w+carlisle,+spokane,+wa+99205&oe=utf-8&rls=org.mozilla:en-US:official&client=firefox-a&um=1&ie=UTF-8&hq=&hnear=0x549e18e3b7bda66b:0x3ac117a72e370e8,224+W+Carlisle+Ave,+Spokane,+WA+99205&gl=us&ei=8LH-TfPkNOHmiAL_tMy7CA&sa=X&oi=geocode_result&ct=title&resnum=1&ved=0CBkQ8gEwAA'
# )
# ProjectSite.create(
#   address: '24515 S Pine Springs Rd',
#   city: 'Cheney',
#   state_id: 49,
#   zipcode: '99004',
#   access_code: '6987',
#   map_url: ''
# )
# ProjectSite.create(
#   address: '104 W Broadway St',
#   city: 'St. John',
#   state_id: 49,
#   zipcode: '99171',
#   access_code: '7149',
#   map_url: 'http://maps.google.com/maps?f=q&source=s_q&hl=en&geocode=&q=104+w+broadway,+st.+john,+wa+99171&aq=&gl=us&ie=UTF8&hq=&hnear=104+W+Broadway+St,+St+John,+Whitman,+Washington+99171&t=h&z=16'
# )

Company.create(
  company_category_id: 3,
  name: 'Phoenix Reconstruction',
  address: '7925 N Scott Rd',
  city: 'Spokane',
  state_id: 49,
  zipcode: '99217',
  phone: '5092178893',
  fax: '',
  website_url: 'phoenix-reconstruction.com'
)
Company.create(
  company_category_id: 1,
  name: 'Keller Williams',
  address: '802 N Washington St',
  city: 'Spokane',
  state_id: 49,
  zipcode: '99201',
  phone: '5099914085',
  fax: '5094584001',
  website_url: 'fivestarspokane.com'
)
Company.create(
  company_category_id: 2,
  name: 'Home Depot (Valley)',
  address: '5617 E Sprague Ave.',
  city: 'Spokane Valley',
  state_id: 49,
  zipcode: '99212',
  phone: '5095348588',
  fax: '',
  website_url: ''
)
Company.create(
  company_category_id: 3,
  name: 'Home Depot (Northside)',
  address: '9116 N Newport Highway',
  city: 'Spokane',
  state_id: 49,
  zipcode: '99218',
  phone: '5094668991',
  fax: '',
  website_url: ''
)
Company.create(
  company_category_id: 3,
  name: 'Home Depot (Liberty Lake)',
  address: '21701 East Country Vista Dr.',
  city: 'Liberty Lake',
  state_id: 49,
  zipcode: '99019',
  phone: '5098910613',
  fax: '',
  website_url: ''
)

Mileage.create(
  vehicle_id: 1,
  drive_date: '2021-02-21',
  start_mileage: 187_673,
  end_mileage: 187_747,
  total_mileage: 74
)
Mileage.create(
  vehicle_id: 1,
  drive_date: '2021-02-21',
  start_mileage: 187_747,
  end_mileage: 187_757,
  total_mileage: 10
)

Expense.create(
  expense_category_id: 1,
  company_id: 3,
  expense_date: '2021-03-01',
  total: 20.00
)

User.create(
  user_category_id: 3,
  company_id: 1,
  email: 'jcryuu@gmail.com',
  password: '',
  salt: '',
  first_name: 'Jason',
  last_name: 'Campbell',
  phone: '5092178893',
  phone_extension: ''
)
User.create(
  user_category_id: 2,
  company_id: 2,
  email: 'doc@fivestarspokane.com',
  password: '',
  salt: '',
  first_name: 'Doc',
  last_name: 'Nicolson',
  phone: '5099914085',
  phone_extension: ''
)

Bid.create(
  bid_status_id: 2,
  project_site_id: 1,
  company_id: 2,
  bid_date: '2020-02-01',
  total: 800.00
)
Bid.create(
  bid_status_id: 3,
  project_site_id: 2,
  company_id: 2,
  bid_date: '2020-02-01',
  total: 675.00
)
Bid.create(
  bid_status_id: 2,
  project_site_id: 3,
  company_id: 2,
  bid_date: '2020-02-01',
  total: 450.00
)

Invoice.create(
  project_site_id: 3,
  term_id: 1,
  company_id: 2,
  start_date: '2021-03-01',
  complete_date: '2021-03-14',
  total: 800.00
)
Invoice.create(
  project_site_id: 3,
  term_id: 1,
  company_id: 2,
  start_date: '2021-03-01',
  complete_date: '2021-03-14',
  total: 800.00
)

InvoiceReport.create(
  invoice_id: 1,
  paid: true,
  paid_date: '2020-03-28',
  paid_checknum: '2006',
  loan_amount: 0.00,
  loan_paid: true,
  project_cost: 18.02,
  interest_amount: 0.00,
  interest_paid: true,
  tax_amount: 120.00,
  net_amount: 661.94
)
InvoiceReport.create(
  invoice_id: 2,
  paid: true,
  paid_date: '2020-03-28',
  paid_checknum: '2006',
  loan_amount: 0.00,
  loan_paid: true,
  project_cost: 0.00,
  interest_amount: 0.00,
  interest_paid: true,
  tax_amount: 120.00,
  net_amount: 680.00
)

# tables with ONLY foreign keys
BidInvoice.create(
  bid_id: 1,
  invoice_id: 1
)

LineItemGroup.create(
  line_item_id: 1,
  bid_invoice_id: 1
)

ImageCompany.create(
  image_id: 1,
  company_id: 1
)
ImageCompany.create(
  image_id: 2,
  company_id: 2
  )

ImageUser.create(
  image_id: 3,
  user_id: 1
)
ImageUser.create(
  image_id: 4,
  user_id: 2
)

ImageInvoice.create(
  image_id: 5,
  invoice_id: 1
)

ImageExpense.create(
  image_id: 6,
  expense_id: 1
)

InvoiceExpense.create(
  invoice_id: 1,
  expense_id: 1
)

ExpenseItemGroup.create(
  expense_id: 1,
  expense_item_id: 1
)
ExpenseItemGroup.create(
  expense_id: 1,
  expense_item_id: 2
)
ExpenseItemGroup.create(
  expense_id: 1,
  expense_item_id: 3
)

InvoiceMileage.create(
  invoice_id: 1,
  mileage_id: 1
)
InvoiceMileage.create(
  invoice_id: 1,
  mileage_id: 2
)