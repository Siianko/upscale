require "rails_helper"
#include ActiveJob::TestHelper

#RSpec.describe NotificationsMailer, type: :mailer do
#    describe "notify" do
#      let(:email) { NotificationsMailer.task }
#    end

#  it "renders the headers" do
#    expect(email.subject).to eq("Good news! #{@doer.name} just accepted your task: #{@task.title}")
#    expect(email.to).to eq([@task.user.email])
#    expect(email.from).to eq(["upscale@upscale.nu"])
#  end

#  it 'renders the body' do
#    expect(email.body.encoded).to match("Hello #{@task.user.name} #{@doer.name} just accepted your task. Reach out to him/her on
#   #{@doer.email} The Upscale Team")
#  end

#end



RSpec.describe NotificationsMailer, type: :mailer do
    let(:task) { create(:task) }
    let(:user) { create(:user, email: 'pablito@test.com', name: 'Pablito') }
    subject do
      NotificationsMailer.with(doer: user, task: task).task_started.deliver_now
    end

  it "sets the subject" do
    expect(subject.subject).to eq "Good news! #{user.name} just accepted your task: #{task.title}"
  end

  it "sets the sender" do
    expect(subject.from).to eq ["upscale@upscale.nu"]
  end

  it "sets the receiver" do
    expect(subject.to).to eq ["pablo@test.com"]
  end

  it "sets the body" do
    expect(subject.body.encoded).to match("Hello Pablo Pablito just accepted your task. Reach out to him/her on pablito@test.com") 
  end

end
