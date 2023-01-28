FROM registry.access.redhat.com/ubi8/ubi:8.7

RUN dnf install -y 'dnf-command(config-manager)' && \
     dnf config-manager --add-repo https://cli.github.com/packages/rpm/gh-cli.repo
RUN dnf install -y gh
