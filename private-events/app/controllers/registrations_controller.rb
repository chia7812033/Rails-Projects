class RegistrationsController < ApplicationController
  def create
    @registration = Registration.new(:attended_event_id => params[:attended_event])
    @registration.attendee_id = current_user.id
    @event = @registration.attended_event
    if @registration.save
      redirect_to @event
    else
      redirect_to root_path, status: :unprocessable_entity
    end
  end

  def destroy
    if Registration.exists?(:attended_event_id => params[:attended_event].to_i, :attendee_id => current_user.id)
      @registration = Registration.find_by(:attended_event_id => params[:attended_event].to_i, :attendee_id => current_user.id)
      @event = @registration.attended_event
      @registration.destroy
      redirect_to @event
    else
      render json: { error: 'Unable to delete User. '}, status: 400
    end
  end
end
