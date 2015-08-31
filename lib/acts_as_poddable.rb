module ActsAsPoddable
    def acts_as_poddable
      class_eval do
        has_many :pods, :through => :poddings, :as => :poddable
        has_many :poddings, as: :poddable, dependent: :destroy, class_name: '::Refinery::Pods::Podding'
      end
    end
end