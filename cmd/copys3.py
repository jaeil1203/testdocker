# python 3
import os

sync_command = f"aws s3 sync s3://" + os.environ["source"]+"/ s3://"+os.environ["destination"]+"/"
os.system(sync_command)