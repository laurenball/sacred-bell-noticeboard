class NoticesController < ApplicationController
  before_action :set_notice, only: [:show, :edit, :update, :destroy]

  def index
    @notices = Notice.all
  end

  def show
  end

  def new
    @notice = Notice.new
    @notice.sessions.build 
  end

  def edit
  end

  def create
    @notice = Notice.new(notice_params)

    respond_to do |format|
      if @notice.save
        format.html { redirect_to @notice, notice: 'Notice was successfully created.' }
        format.json { render :show, status: :created, location: @notice }
        send_notice
      else
        format.html { render :new }
        format.json { render json: @notice.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @notice.update(notice_params)
        format.html { redirect_to @notice, notice: 'Notice was successfully updated.' }
        format.json { render :show, status: :ok, location: @notice }
      else
        format.html { render :edit }
        format.json { render json: @notice.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @notice.destroy
    respond_to do |format|
      format.html { redirect_to notices_url, notice: 'Notice was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  def send_notice
    $bot_runner.primary_channel.send_message('New notice incoming!')
  end

  def set_notice
    @notice = Notice.find(params[:id])
  end

  def notice_params
    params.require(:notice).permit(:title, :sessions, :openings, :author, :notes, :reward, :requester, 
                                   { sessions_attributes: [:date, :time, :location] })
  end
end
