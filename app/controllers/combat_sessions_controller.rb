class CombatSessionsController < ApplicationController
  before_action :set_combat_session, only: %i[ show edit update destroy ]

  # GET /combat_sessions or /combat_sessions.json
  def index
    @combat_sessions = CombatSession.all
  end

  # GET /combat_sessions/1 or /combat_sessions/1.json
  def show
  end

  # GET /combat_sessions/new
  def new
    @combat_session = CombatSession.new
  end

  # GET /combat_sessions/1/edit
  def edit
  end

  # POST /combat_sessions or /combat_sessions.json
  def create
    @combat_session = CombatSession.new(combat_session_params)

    respond_to do |format|
      if @combat_session.save
        format.html { redirect_to @combat_session, notice: "Combat session was successfully created." }
        format.json { render :show, status: :created, location: @combat_session }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @combat_session.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /combat_sessions/1 or /combat_sessions/1.json
  def update
    respond_to do |format|
      if @combat_session.update(combat_session_params)
        format.html { redirect_to @combat_session, notice: "Combat session was successfully updated." }
        format.json { render :show, status: :ok, location: @combat_session }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @combat_session.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /combat_sessions/1 or /combat_sessions/1.json
  def destroy
    @combat_session.destroy!

    respond_to do |format|
      format.html { redirect_to combat_sessions_path, status: :see_other, notice: "Combat session was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_combat_session
      @combat_session = CombatSession.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def combat_session_params
      params.expect(combat_session: [ :started_at, :ended_at, :executed_on ])
    end
end
