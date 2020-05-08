Rails.application.routes.draw do
    get 'automorph/input'
    get 'automorph/output'
    get 'automorph/error'
    root 'automorph#input'
end
