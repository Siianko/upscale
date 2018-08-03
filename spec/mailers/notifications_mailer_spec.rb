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

  it "Check for Hello, name and email in the body of the message" do
  expect(subject.body).to match("Hello")
  expect(subject.body).to match("Pablo")
  expect(subject.body).to match("pablito@test.com")
  end

end