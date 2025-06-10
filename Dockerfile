FROM gcr.io/distroless/static-debian11@sha256:1dbe426d60caed5d19597532a2d74c8056cd7b1674042b88f7328690b5ead8ed

ARG TARGETARCH
COPY --chmod=755 packsquash-${TARGETARCH} /usr/bin/packsquash

WORKDIR /

ENTRYPOINT ["packsquash"]

# ================ ARNICA SECURITY ANNOTATION BLOCK START ================
LABEL org.opencontainers.image.source="https://github.com/jaswanti-gitgoat-prod/Books"
LABEL org.opencontainers.image.path="Dockerfile"
# These automated labels, added by the security team, enhance traceability and security.
# For more details, see: https://docs.arnica.io/arnica-documentation/developers/adding-oci-tags-to-docker-images.
# To exclude this file, please replace this change with: #arnica-ignore followed by the dismissal reason.
# ================ ARNICA SECURITY ANNOTATION BLOCK END ================
