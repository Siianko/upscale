class NotificationsMailer < ApplicationMailer
    default from: 'upscale@upscale.nu'

    def task_started
        @doer = params[:doer]
        @task = params[:task]
        mail(to: @task.user.email, subject: "Good news! #{@doer.name} just accepted your task: #{@task.title}")
    end
end
