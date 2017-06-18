class TodoController < ApplicationController
    def index
        @todos = Todo.all
    end
    def show
        @todo = Todo.find_by_id(params[:id])
    end
    def update
        t = Todo.find_by_id(params['id'])
        t.description = params['description']
        t.save
        redirect_to "/todo/show/#{t.id}"
    end
    def create
        t = Todo.new
        t.description = params['description']
        t.save
        redirect_to "/todo/show/#{ t.id }"
    end
    def new
    end
    def edit
        @todo = Todo.find_by_id(params[:id])
    end
    def destroy
        t = Todo.find_by_id(params[:id])
        t.destroy
        redirect_to "/todo/index"
    end
    #def show
    #todo_id = params[:id]
   # The ... signifies that there is more code in this section, but is not shown in the example for the sake of brevity
    #end
  
    #def show
    #todo_id = '1'
  
    #if todo_id == '1' # Remember, the `==` conditional operator is used to check if two things are equal to each other.
        # @todo.description = " feed the cats"
    #end
  
    #end
    #def show
    #todo_id = '2'
    #@todo = Todo.find_by_id(params['id'])
    #if todo_id == '1'
        # @todo.description = "feed the cats "
  

    #elsif todo_id == '2'
        # @todo.description = "go for a run"
    #end
    #end
    
end