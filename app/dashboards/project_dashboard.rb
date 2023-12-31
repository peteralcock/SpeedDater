require "administrate/base_dashboard"

class ProjectDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    id: Field::Number,
    description: Field::Text,
    developers: Field::HasMany,
    end_date: Field::DateTime,
    is_complete: Field::Boolean,
    lead_developer: Field::BelongsTo,
    manager_id: Field::Number,
    number_of_sprints: Field::Number,
    name: Field::String,
    pairings: Field::HasMany,
    priority: Field::Number,
    source_url: Field::String,
    sprints: Field::HasMany,
    start_date: Field::DateTime,
    status: Field::String,
    user_id: Field::Number,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = %i[
    priority
    name
    developers
    sprints
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = %i[
    name
    description
    lead_developer
    developers
    start_date
    end_date
    number_of_sprints
    is_complete
    pairings
    priority
    sprints
    status
    created_at
    updated_at
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = %i[
    name
    description
    start_date
    end_date
    number_of_sprints
    is_complete
    priority
    source_url
    status
  ].freeze

  # COLLECTION_FILTERS
  # a hash that defines filters that can be used while searching via the search
  # field of the dashboard.
  #
  # For example to add an option to search for open resources by typing "open:"
  # in the search field:
  #
  #   COLLECTION_FILTERS = {
  #     open: ->(resources) { resources.where(open: true) }
  #   }.freeze
  COLLECTION_FILTERS = {}.freeze

  # Overwrite this method to customize how projects are displayed
  # across all pages of the admin dashboard.
  #
  def display_resource(project)
     "OPERATION: #{project.name}"
  end
end
