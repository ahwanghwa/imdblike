class SearchMoviesQuery < BaseQuery
  def initialize(scope = Movie.all)
    @scope = scope
  end

  def call(ctx:)
    ctx.keys.reduce(@scope) { |acc, key| ctx[key].present? ? send("filter_by_#{key}", acc, ctx[key]) : acc }
  end

  private

  def filter_by_title(scope, title)
    scope.where('lower(title) ilike ?', "%#{title.downcase}%")
  end

  def filter_by_category(scope, category)
    id = Category.where('lower(title) = ?', category.downcase)[0].id
    scope.where('category_id = ?', id)
  end
end
