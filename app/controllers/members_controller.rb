class MembersController < ApplicationController
  def index
    members = Member.all
    render locals: { members: members}
  end

  def show
    members = Member.all
    member = members.friendly.find(params[:id])

    render locals: { member: member, members: members}
  end

  def new
  end

  def create
  end

  def destroy
  end
end
