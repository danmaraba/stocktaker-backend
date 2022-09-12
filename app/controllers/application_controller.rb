class ApplicationController < Sinatra::Base
    set :default_content_type, 'application/json'

    #Add Routes
    get '/products' do
        products = Product.all
        products.to_json
    end

    post '/products' do 
        product = Product.create(
            name: params[:name],
            price: params[:price],
            category: params[:category]
        )
        product.to_json
    end

    patch '/products/:id' do
        product = Product.find(params[:id]);
        product.update(
            name: params[:name],
            price: params[:price],
            category: params[:category]
        )
        product.to_json
    end
    
    delete '/products/:id' do
        product = Product.find(params[:id]);
        product.destroy
    end

end