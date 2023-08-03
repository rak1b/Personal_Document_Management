from django.db.models.signals import pre_save, post_save
from coreapp.models import User
def create_dashboard_notification(sender, instance, created, *args, **kwargs):
    if created:
        from utility.models import DashboardNotification
        create_user_obj = DashboardNotification.objects.create(user_id=instance.id)

post_save.connect(create_dashboard_notification, sender=User)
