class TodolistsController < ApplicationController
  before_action :set_todolist, only: [:show, :edit, :update, :destroy]

  # GET /todolists
  # GET /todolists.json
  def index
    @todolists = Todolist.all
  end

  # GET /todolists/1
  # GET /todolists/1.json
  def show
  end

  # GET /todolists/new
  def new
    @todolist = Todolist.new
  end

  # GET /todolists/1/edit
  def edit
  end

  # POST /todolists
  # POST /todolists.json
  def create
    @todolist = Todolist.new(todolist_params)

    respond_to do |format|
      if @todolist.save
        format.html { redirect_to @todolist, notice: 'Todolist was successfully created.' }
        format.json { render action: 'show', status: :created, location: @todolist }
      else
        format.html { render action: 'new' }
        format.json { render json: @todolist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /todolists/1
  # PATCH/PUT /todolists/1.json
  def update
    respond_to do |format|
      if @todolist.update(todolist_params)
        format.html { redirect_to @todolist, notice: 'Todolist was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @todolist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /todolists/1
  # DELETE /todolists/1.json
  def destroy
    @todolist.destroy
    respond_to do |format|
      format.html { redirect_to todolists_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_todolist
      @todolist = Todolist.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def todolist_params
      params.require(:todolist).permit(:name, :read, :effort, :assigned_to, :created_at, :due_date)
    end
end
