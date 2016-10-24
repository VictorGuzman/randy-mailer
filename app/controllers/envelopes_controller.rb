class EnvelopesController < ApplicationController
  before_action :set_envelope, only: [:show, :update, :destroy]

  def index
    render json: {}
  end

  def show
    render json: {}
  end

  def create
    @envelope = Envelope.new(envelope_params)

    if @envelope.save
      # Sends email to user when envelope is created.
      EnvelopeMailer.envelope_email(@envelope).deliver

      render json: { sent: true }, status: :created, location: @envelope
    else
      render json: { sent: false, errors: @envelope.errors },
             status: :unprocessable_entity
    end
  end

  def update
    render json: {}
  end

  def destroy
    @envelope.destroy

    head :no_content
  end

  private

    def set_envelope
      @envelope = Envelope.find(params[:id])
    end

    def envelope_params
      params.require(:envelope).permit(:subject, :body, :recipients)
    end
end
