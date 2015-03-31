class Search < Struct.new(:query, :options)
  include PgSearch

  DEFAULT_SEARCH_ON = [:name, :languages]

  # convinience method
  def self.for(*args)
    new(*args).call
  end

  def initialize(query, options = {})
    super
  end

  def call
    call_pg
  end

  def scope_for_search
    build_search_scope
    @scope_for_search
  end

  # This builder and its methods should be extracted to
  # SearchQueryBuilder
  def build_search_scope
    return if @scope_for_search

    parts = options.fetch(:on) { DEFAULT_SEARCH_ON }

    @scope_for_search = {
      associated_against: {},
      against: Set.new
    }

    parts.each do |part|
      add_against(*pg_scope_for(part))
    end
  end

  def pg_scope_for(part)
    case part
    when :name
      [
        [:name, :surname, :old_surname]
      ]
    when :surname
      [
        [:surname, :old_surname]
      ]
    when :languages
      [
        [:name],
        on: :languages
      ]
    else
      fail "Unknown part #{part} used in search"
    end
  end

private

  def add_against(attributes, options = {})
    attributes = prioritized_attributes(attributes, options[:on])
    if options[:on]
      # this implementation only allows for one scope part per association
      # Want to chnage this? Make sure to merge here or something
      @scope_for_search[:associated_against][options[:on]] = attributes
    else
      @scope_for_search[:against].merge(attributes)
    end
  end

  def prioritized_attributes(attributes, association)
    attributes.map do |attribute_name|
      [attribute_name, priority_for(attribute_name, association)]
    end
  end

  # Implemet weighting here. If you want priority per part,
  # do it on that level and pass the priority directly to the add_against
  # method.
  def priority_for(attribute_name, association)
    %w(A B C D).sample
  end

  def call_pg
    ScopeOptions.new(
      Configuration.new(
        {
          query: query
        }.merge!(scope_for_search),
        User
      )
    ).apply(User)
  end

end
