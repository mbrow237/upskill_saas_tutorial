class ContactsController < ApplicationController
    def new
        @contact = Contact.new #loads new page from contact view folder
    end       
    
    def create
        @contact = Contact.new(contact_params)
        if @contact.save
            redirect_to new_contact_path, notice: "Message sent."
        else
            redirct_to new_contact_path, notice: "Error occured."
        end    
    end   
    
    private
        def contact_params
            params.require(:contact).permit(:name, :email, :comments)
        end    
end