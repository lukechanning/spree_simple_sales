Deface::Override.new(:virtual_path => 'spree/admin/products/_form',
  :name => 'add_sale_price_to_product_edit',
  :insert_after => "[data-hook='admin_product_form_price']",
  :text => "
    <%= f.field_container :sale_price do %>
      <%= f.label :sale_price, raw(Spree.t(:sale_price)) %>
      <%= f.text_field :sale_price, class: 'form-control', :value =>
        number_to_currency(@product.sale_price, :unit => '') %>
      <%= f.error_message_on :sale_price %>
    <% end %>
  ")