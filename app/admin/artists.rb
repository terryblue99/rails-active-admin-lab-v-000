ActiveAdmin.register Artist do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end
  permit_params :name
  actions :all, except: [:destroy]

  controller do

    actions :index, :show

    def new
      super do |format|
        redirect_to artist_url and return if resource.valid?
      end
    end

    def edit
      super do |format|
        redirect_to artist_url and return if resource.valid?
      end
    end
  end

end
