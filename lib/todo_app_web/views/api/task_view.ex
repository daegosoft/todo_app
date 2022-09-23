defmodule TodoAppWeb.API.TaskView do
    use TodoAppWeb, :view
  
    def render("index.json", %{tasks: tasks}) do
        data: rendre_many(t, __MODULE__, "task,json")
    end

    def render("show.json", %{task: task}) do
        %{
            id: task.id,
            description: task.description,
            date_created: task.inserted_at,
            type: "Task"
        }
    end
  end
  