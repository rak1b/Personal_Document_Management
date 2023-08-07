
# from django.db.models.signals import post_save, m2m_changed
# from django.dispatch import receiver
# from utility.models import Page
# import base64
# def print_log(header,err):
#     import logging
#     logger = logging.getLogger('django')
#     logger.error(header)
#     logger.error(err)



# def UpdateBlobURL(sender, instance, created, **kwargs):
#     print("---------UpdateBlobURL  Signal---------")
#     video_file_path = instance.video.document.path
#     print("instance.blub_url12121",instance.blob_url)
#     if len(instance.blob_url) < 50:
#         try:
#             with open(video_file_path, 'rb') as video_file:
#                 video_data = video_file.read()
#                 video_base64 = base64.b64encode(video_data).decode('utf-8')
#                 blob_url = f'data:video/mp4;base64,{video_base64}'
#                 instance.blob_url = blob_url
#                 instance.save()
#         except Exception as e:
#             print(f"Error converting video to blob: {e}")
#             return None


# post_save.connect(UpdateBlobURL, sender=Page)