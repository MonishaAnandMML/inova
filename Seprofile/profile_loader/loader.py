import config
import os
import shutil
import argparse


### Loader function
def loader():
    if args.service_name+'_profile' in config.profile_path:
        for file in config.profile_path[args.service_name+'_profile']:
            shutil.copy(os.path.join(src_profile,file), dest_profile + '/')
    else:
        print('ERROR. Unable to find the profiles for this service in configs')

    if args.service_name+'_platform' in config.profile_path:
        for file in config.profile_path[args.service_name+'_platform']:
            shutil.copy(os.path.join(src_platform,file), dest_platform + '/')


if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("service_name", help="Allowed values se_services, endpoint_handler, message_processor")

    args = parser.parse_args()
    dest_profile = '../../../../profile_store'
    dest_platform = '../../../../platform_store'

    src_profile = '../profile_store'
    src_platform = '../platform_store'

    ### Create profiles directory to store the profiles:
    if os.path.exists(dest_profile):
        shutil.rmtree(dest_profile)
    if not os.path.exists(dest_profile):
        os.makedirs(dest_profile)

    if os.path.exists(dest_platform):
        shutil.rmtree(dest_platform)
    if not os.path.exists(dest_platform):
        os.makedirs(dest_platform)
    loader()

