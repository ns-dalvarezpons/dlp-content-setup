# Source: https://netskope.atlassian.net/wiki/spaces/DataSecurityTeam/pages/4728488101/Compiling+DataPlane+with+Rosetta+2+on+Mac+M3
FROM ubuntu:20.04
RUN pwd
RUN ls -la

# ENV DEBIAN_FRONTEND=noninteractive
# RUN apt-get update && \
#     apt-get upgrade -y && \
#     apt-get install -y \
#     build-essential \
#     wget \
#     unzip \
#     git \
#     vim \
#     gcc \
#     g++ \
#     ssh \
#     autoconf \
#     automake \
#     libtool \
#     make \
#     sudo \
#     pkg-config \
#     libffi-dev \
#     software-properties-common \
#     && rm -rf /var/lib/apt/lists/*
# RUN add-apt-repository universe && \
#     apt-get update && \
#     apt-get install -y python3.8 python3.8-dev python3.8-venv python3-pip && \
#     rm -rf /var/lib/apt/lists/*
# RUN useradd -ms /bin/bash dev
# # Warning:  password hardcoded
# # RUN echo "dev:test123" | chpasswd
# # RUN usermod -aG sudo dev
# WORKDIR /home/dev/dataplane
# USER dev
# RUN git config --global --add safe.directory /home/dev/dataplane
# CMD ["/bin/bash"]

# Failed tests: 11
# FAIL: dlpcache_incrptctx_test [0 s]
# FAIL: dlp_svc_cfg_test [2 s]
# FAIL: rcidx_filters [1 s]
# FAIL: libs/dlp/svc/test/dlp_ims_post/wrappers/dlp_ims_post_test-cache.sh [60 s]
# FAIL: libs/dlp/te_svc/test/te_request_test/wrappers/te_request_test_1.sh [0 s]
# FAIL: libs/dlp/te_svc/test/te_request_test/wrappers/te_request_test_2.sh [0 s]
# FAIL: libs/dlp/te_svc/test/te_request_test/wrappers/te_request_test_3.sh [0 s]
# FAIL: libs/dlp/svc/test/dlp_ims_post/wrappers/dlp_ims_post_test-ims.sh [60 s]
# FAIL: libs/dlp/svc/test/dlp_ims_post/wrappers/dlp_ims_post_test-original.sh [60 s]
# FAIL: libs/dlp/svc/test/dlp_ims_post/wrappers/dlp_ims_post_test-rest.sh [61 s]
# FAIL: dlp_fp_lookup_test [60 s]

# TODO: add lines to /etc/apt/sources.list
# RUN apt-get install -y \
#     binfmt-support \
#     libc6:amd64 \
#     libc6-dev:amd64 \
#     zlib1g:amd64 \
#     zlib1g-dev:amd64 \
#     libgcrypt20-dev:amd64 \
#     libstdc++6:amd64 \
#     gdb:amd64
# After these packages -> Failed tests: 11


# TODO: after setting symbolic links.
# -> Failed tests: 9
# FAIL:  9
# FAIL: rcidx_filters [1 s] -> fixed db.close() on rcidx_filters line 314

# FAIL: libs/dlp/svc/test/dlp_ims_post/wrappers/dlp_ims_post_test-cache.sh [60 s]
# FAIL: libs/dlp/svc/test/dlp_ims_post/wrappers/dlp_ims_post_test-ims.sh [61 s]
# FAIL: libs/dlp/svc/test/dlp_ims_post/wrappers/dlp_ims_post_test-original.sh [60 s]
# FAIL: libs/dlp/svc/test/dlp_ims_post/wrappers/dlp_ims_post_test-rest.sh [60 s]
# > make -j 8 dlp_ims_post_test && ./dlp_ims_post_test --port-suffix=2


# FAIL: libs/dlp/te_svc/test/te_request_test/wrappers/te_request_test_1.sh [1 s]
# FAIL: libs/dlp/te_svc/test/te_request_test/wrappers/te_request_test_2.sh [0 s]
# FAIL: libs/dlp/te_svc/test/te_request_test/wrappers/te_request_test_3.sh [0 s]
# > make -j 8 te_request_test && ./te_request_test --port-suffix=2
# Executed isolated, it passes: [  PASSED  ] 27 tests from 1 test suite ran. (205077 ms total)


# FAIL: dlp_fp_lookup_test [60 s] -> if executed isolated, it passes
# > make -j 8 dlp_fp_lookup_test && ./dlp_fp_lookup_test


# After db.close() on rcidx_filters line 314
# -> Failed tests: 8
