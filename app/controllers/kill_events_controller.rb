class KillEventsController < ApplicationController
  before_action :set_kill_event, only: %i[ show edit update destroy ]

  # GET /kill_events or /kill_events.json
  def index
    @kill_events = KillEvent.all
  end

  # GET /kill_events/1 or /kill_events/1.json
  def show
  end

  # GET /kill_events/new
  def new
    @kill_event = KillEvent.new
  end

  # GET /kill_events/1/edit
  def edit
  end

  # POST /kill_events or /kill_events.json
  def create
    @kill_event = KillEvent.new(kill_event_params)

    respond_to do |format|
      if @kill_event.save
        format.html { redirect_to @kill_event, notice: "Kill event was successfully created." }
        format.json { render :show, status: :created, location: @kill_event }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @kill_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /kill_events/1 or /kill_events/1.json
  def update
    respond_to do |format|
      if @kill_event.update(kill_event_params)
        format.html { redirect_to @kill_event, notice: "Kill event was successfully updated." }
        format.json { render :show, status: :ok, location: @kill_event }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @kill_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /kill_events/1 or /kill_events/1.json
  def destroy
    @kill_event.destroy!

    respond_to do |format|
      format.html { redirect_to kill_events_path, status: :see_other, notice: "Kill event was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_kill_event
      @kill_event = KillEvent.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def kill_event_params
      params.expect(kill_event: [ :combat_session_id, :killer_id, :victim_id ])
    end
end
