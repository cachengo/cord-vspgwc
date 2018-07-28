export IMAGE_TAG=$(cat VERSION)

docker manifest create --amend cachengo/vspgwc-synchronizer:$IMAGE_TAG cachengo/vspgwc-synchronizer-x86_64:$IMAGE_TAG cachengo/vspgwc-synchronizer-aarch64:$IMAGE_TAG
docker manifest push cachengo/vspgwc-synchronizer:$IMAGE_TAG
