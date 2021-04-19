module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    field :states,
          [Types::StateType],
          null: false,
          description: 'Returns a list of states'

    field :bid_statuses,
          [Types::BidStatusType],
          null: false,
          description: 'Returns a list of bid_statuses'

    field :user_categories,
          [Types::UserCategoryType],
          null: false,
          description: 'Returns a list of user_categories'

    field :company_categories,
          [Types::CompanyCategoryType],
          null: false,
          description: 'Returns a list of company_categories'

    field :images,
          [Types::ImageType],
          null: false,
          description: 'Returns a list of images'

    field :terms,
          [Types::TermType],
          null: false,
          description: 'Returns a list of terms'

    field :vehicles,
          [Types::VehicleType],
          null: false,
          description: 'Returns a list of vehicles'

    field :skus,
          [Types::SkuType],
          null: false,
          description: 'Returns a list of skus'

    field :expense_categories,
          [Types::ExpenseCategoryType],
          null: false,
          description: 'Returns a list of expense_categories'

    field :expense_items,
          [Types::ExpenseItemType],
          null: false,
          description: 'Returns a list of expense_items'

    field :line_items,
          [Types::LineItemType],
          null: false,
          description: 'Returns a list of line_items'

    field :project_sites,
          [Types::ProjectSiteType],
          null: false,
          description: 'Returns a list of project_sites'

    field :companies,
          [Types::CompanyType],
          null: false,
          description: 'Returns a list of companies'

    field :mileages,
          [Types::MileageType],
          null: false,
          description: 'Returns a list of mileages'

    field :expenses,
          [Types::ExpenseType],
          null: false,
          description: 'Returns a list of expenses'

    field :users,
          [Types::UserType],
          null: false,
          description: 'Returns a list of users'

    field :bids,
          [Types::BidType],
          null: false,
          description: 'Returns a list of bids'

    field :invoices,
          [Types::InvoiceType],
          null: false,
          description: 'Returns a list of invoices'

    field :invoice_reports,
          [Types::InvoiceReportType],
          null: false,
          description: 'Returns a list of invoice_reports'

    field :line_item_groups,
          [Types::BidInvoiceType],
          null: false,
          description: 'Returns a list of line_item_groups'

    field :companies,
          [Types::LineItemGroupType],
          null: false,
          description: 'Returns a list of companies'

    field :image_companies,
          [Types::ImageCompanyType],
          null: false,
          description: 'Returns a list of image_companies'

    field :image_users,
          [Types::ImageUserType],
          null: false,
          description: 'Returns a list of image_users'

    field :image_invoices,
          [Types::ImageInvoiceType],
          null: false,
          description: 'Returns a list of image_invoices'

    field :image_expenses,
          [Types::ImageExpenseType],
          null: false,
          description: 'Returns a list of image_expenses'

    field :invoice_expenses,
          [Types::InvoiceExpenseType],
          null: false,
          description: 'Returns a list of invoice_expenses'

    field :expense_item_groups,
          [Types::ExpenseItemGroupType],
          null: false,
          description: 'Returns a list of expense_item_groups'

    field :invoice_mileages,
          [Types::InvoiceMileageType],
          null: false,
          description: 'Returns a list of invoice_mileages'

    def states
      State.all
    end

    def bid_statuses
      BidStatus.all
    end

    def user_categories
      UserCategory.all
    end

    def company_categories
      CompanyCategory.all
    end

    def images
      Image.all
    end

    def terms
      Term.all
    end

    def vehicles
      Vehicle.all
    end

    def skus
      Sku.all
    end

    def expense_categories
      ExpenseCategory.all
    end

    def expense_items
      ExpenseItem.all
    end

    def line_items
      LineItem.all
    end

    def project_sites
      ProjectSite.all
    end

    def companies
      Company.all
    end

    def mileages
      Mileage.all
    end

    def expenses
      Expense.all
    end

    def users
      User.all
    end

    def bids
      Bid.all
    end

    def invoices
      Invoice.all
    end

    def invoice_reports
      InvoiceReport.all
    end

    def bid_invoices
      BidInvoice.all
    end

    def line_item_groups
      LineItemGroup.all
    end

    def image_companies
      ImageCompany.all
    end

    def image_users
      ImageUser.all
    end

    def image_invoices
      ImageInvoice.all
    end

    def image_expenses
      ImageExpense.all
    end

    def invoice_expenses
      InvoiceExpense.all
    end

    def expense_item_groups
      ExpenseItemGroup.all
    end

    def invoice_mileages
      InvoiceMileage.all
    end
  end
end
