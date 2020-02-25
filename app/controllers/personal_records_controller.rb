class PersonalRecordsController < ApplicationController
  before_action :set_personal_record, only: [:edit, :update, :destroy]
  before_action :set_user, only: [:index, :new, :create]

  def index
    @personal_records = PersonalRecord.all
  end

  def new
    @personal_record = PersonalRecord.new
  end

  def edit
  end

  def create
    @personal_record = @user.personal_records.new(personal_record_params)

    respond_to do |format|
      if @personal_record.save
        format.html { redirect_to user_personal_records_url(@personal_record.user), notice: 'Personal record was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @personal_record.update(personal_record_params)
        format.html { redirect_to user_personal_records_url(@personal_record.user), notice: 'Personal record was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    user = @personal_record.destroy.user
    respond_to do |format|
      format.html { redirect_to user_personal_records_url(user), notice: 'Personal record was successfully destroyed.' }
    end
  end

  private
    def set_personal_record
      @personal_record = PersonalRecord.find(params[:id])
    end

    def set_user
      @user = User.find(params[:user_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def personal_record_params
      params.require(:personal_record).permit(:distance, :time, :date)
    end
end
