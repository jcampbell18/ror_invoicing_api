# frozen_string_literal: true
module Types
  class QueryType < Types::BaseObject
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    def bid_invoices
      BidInvoice.all
    end




    field :images,
          [Types::ImageType],
          null: false,
          description: 'Returns a list of images'

    def images
      Image.all
    end



    field :expense_items,
          [Types::ExpenseItemType],
          null: false,
          description: 'Returns a list of expense_items'

    def expense_items
      ExpenseItem.all
    end

    field :line_items,
          [Types::LineItemType],
          null: false,
          description: 'Returns a list of line_items'

    def line_items
      LineItem.all
    end

    field :project_sites,
          [Types::ProjectSiteType],
          null: false,
          description: 'Returns a list of project_sites'

    def project_sites
      ProjectSite.all
    end

    field :mileages,
          [Types::MileageType],
          null: false,
          description: 'Returns a list of mileages'

    def mileages
      Mileage.all
    end

    field :expenses,
          [Types::ExpenseType],
          null: false,
          description: 'Returns a list of expenses'

    def expenses
      Expense.all
    end

    field :bids,
          [Types::BidType],
          null: false,
          description: 'Returns a list of bids'

    def bids
      Bid.all
    end

    field :invoices,
          [Types::InvoiceType],
          null: false,
          description: 'Returns a list of invoices'

    def invoices
      Invoice.all
    end

    field :invoice_reports,
          [Types::InvoiceReportType],
          null: false,
          description: 'Returns a list of invoice_reports'

    def invoice_reports
      InvoiceReport.all
    end

    field :line_item_groups,
          [Types::BidInvoiceType],
          null: false,
          description: 'Returns a list of line_item_groups'

    def line_item_groups
      LineItemGroup.all
    end

    field :image_companies,
          [Types::ImageCompanyType],
          null: false,
          description: 'Returns a list of image_companies'

    def image_companies
      ImageCompany.all
    end

    field :image_users,
          [Types::ImageUserType],
          null: false,
          description: 'Returns a list of image_users'

    def image_users
      ImageUser.all
    end

    field :image_invoices,
          [Types::ImageInvoiceType],
          null: false,
          description: 'Returns a list of image_invoices'

    def image_invoices
      ImageInvoice.all
    end

    field :image_expenses,
          [Types::ImageExpenseType],
          null: false,
          description: 'Returns a list of image_expenses'

    def image_expenses
      ImageExpense.all
    end

    field :invoice_expenses,
          [Types::InvoiceExpenseType],
          null: false,
          description: 'Returns a list of invoice_expenses'

    def invoice_expenses
      InvoiceExpense.all
    end

    field :expense_item_groups,
          [Types::ExpenseItemGroupType],
          null: false,
          description: 'Returns a list of expense_item_groups'

    def expense_item_groups
      ExpenseItemGroup.all
    end

    field :invoice_mileages,
          [Types::InvoiceMileageType],
          null: false,
          description: 'Returns a list of invoice_mileages'

    def invoice_mileages
      InvoiceMileage.all
    end

    # -------------------------------------------------------------

    field :bid_statuses,
          [Types::BidStatusType],
          null: false,
          description: 'Returns a list of bid_statuses'

    def bid_statuses
      BidStatus.all
    end

    field :bid_status,
          [Types::BidStatusType],
          null: false,
          description: 'Returns a list of bid_statuses' do
      argument :id, ID, required: true
    end

    def bid_status
      BidStatus.where(id: id).first
    end

    field :clients,
          [Types::CompanyType],
          null: false,
          description: 'Returns a list of clients from companies'

    def clients
      Company.where(company_category_id: 1).all
    end

    field :company_categories,
          [Types::CompanyCategoryType],
          null: false,
          description: 'Returns a list of company categories'

    def company_categories
      CompanyCategory.all
    end

    field :company_category,
          [Types::CompanyCategoryType],
          null: false,
          description: 'Returns a company category by ID' do
      argument :id, ID, required: true
    end

    def company_category(id:)
      CompanyCategory.where(id: id).first
    end

    field :companies, [Types::CompanyType],
          null: false,
          description: 'Returns a list of companies'

    def companies
      Company.preload(:company_category, :state)
    end

    field :company,
          [Types::CompanyType],
          null: false,
          description: 'Returns a company by ID'

    def company
      Company.preload(:company_category, :state)
    end

    field :expense_categories,
          [Types::ExpenseCategoryType],
          null: false,
          description: 'Returns a list of expense_categories'

    def expense_categories
      ExpenseCategory.all
    end

    field :expense_category,
          [Types::ExpenseCategoryType],
          null: false,
          description: 'Returns a list of expense_categories' do
      argument :id, ID, required: true
    end

    def expense_category
      ExpenseCategory.where(id: id).first
    end

    field :owners,
          [Types::CompanyType],
          null: false,
          description: 'Returns a list of vendors from companies'

    def owners
      Company.where(company_category_id: 3).all
    end

    field :skus,
          [Types::SkuType],
          null: false,
          description: 'Returns a list of skus'

    def skus
      Sku.all
    end

    field :sku,
          [Types::SkuType],
          null: false,
          description: 'Returns a list of skus' do
      argument :id, ID, required: true
    end

    def sku(id:)
      Sku.where(id: id).first
    end

    field :states, [Types::StateType],
          null: false,
          description: 'Returns a list of states'

    def states
      State.all
    end

    field :state, [Types::StateType],
          null: false,
          description: 'Returns a state by ID' do
      argument :id, ID, required: true
    end

    def state(id:)
      State.where(id: id).first
    end

    field :terms,
          [Types::TermType],
          null: false,
          description: 'Returns a list of terms'

    def terms
      Term.all
    end

    field :term,
          [Types::TermType],
          null: false,
          description: 'Returns a list of terms' do
      argument :id, ID, required: true
    end

    def term(id:)
      Term.where(id: id).first
    end

    field :user_categories,
          [Types::UserCategoryType],
          null: false,
          description: 'Returns a list of user_categories'

    def user_categories
      UserCategory.all
    end

    field :user_category,
          [Types::UserCategoryType],
          null: false,
          description: 'Returns a list of user_categories' do
      argument :id, ID, required: true
    end

    def user_category
      UserCategory.where(id: id).first
    end

    field :users,
          [Types::UserType],
          null: false,
          description: 'Returns a list of users'

    def users
      User.all
    end

    field :user,
          [Types::UserType],
          null: false,
          description: 'Returns a list of users' do
      argument :id, ID, required: true
    end

    def user
      User.where(id: id).first
    end

    field :vehicles,
          [Types::VehicleType],
          null: false,
          description: 'Returns a list of vehicles'

    def vehicles
      Vehicle.all
    end

    field :vehicle,
          [Types::VehicleType],
          null: false,
          description: 'Returns a list of vehicles' do
      argument :id, ID, required: true
    end

    def vehicle(id:)
      Vehicle.where(id: id).first
    end

    field :vendors,
          [Types::CompanyType],
          null: false,
          description: 'Returns a list of vendors from companies'

    def vendors
      Company.where(company_category_id: 2).all
    end
  end
end
