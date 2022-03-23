# app/models/page.rb
# ©José Bonnet
class Page < ApplicationRecord
  self.primary_key = :slug

  validates :title, :body, presence: true
  validates :slug, :uniqueness => { case_sensitive: false }
  validate :slug_not_changed

  before_create :set_slug

  def to_param
    slug
  end

  private
  # from https://www.bigbinary.com/learn-rubyonrails-book/adding-slug-to-task
  def set_slug
    title_slug = title.parameterize
    latest_task_slug = Page.where( "slug LIKE ? or slug LIKE ?", "#{title_slug}", "#{title_slug}-%").order("LENGTH(slug) DESC", slug: :desc).first&.slug
    slug_count = 0
    if latest_task_slug.present?
      slug_count = latest_task_slug.split("-").last.to_i
      only_one_slug_exists = slug_count == 0
      slug_count = 1 if only_one_slug_exists
    end
    slug_candidate = slug_count.positive? ? "#{title_slug}-#{slug_count + 1}" : title_slug
    self.slug = slug_candidate
  end

  def slug_not_changed
    if slug_changed? && self.persisted?
      errors.add(:slug, 'is immutable!')
    end
  end
end

