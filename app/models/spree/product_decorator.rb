# Add product packages relation

Spree::Product.class_eval do
  has_many :product_packages, dependent: :destroy

  accepts_nested_attributes_for :product_packages, allow_destroy: true, reject_if: ->(pp) { pp[:weight].blank? || Integer(pp[:weight]) < 1 }

  def has_product_packages?
    product_packages.any?
  end
end
