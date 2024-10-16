# NAME

HealthCheck::Diagnostic::RemoteHealth - Get results from an HTTP HealthCheck

# VERSION

version v0.1.2

# SYNOPSIS

Returns the decoded JSON object from a HTTP HealthCheck endpoint.

    $health_check->register(
        HealthCheck::Diagnostic::RemoteHealth->new(
            url => "https://example.com/healthz",
        )
    );

# DESCRIPTION

Takes in a `url` to a HealthCheck JSON endpoint
and checks to see if a connection can be made.
If the connection fails or the JSON object cannot be decoded,
the `status` is set to "CRITICAL".
If both the connection succeeds and the JSON object is successfully decoded,
it returns the decoded JSON object from the remote endpoint.

# ATTRIBUTES

This diagnostic inherits all attributes from
[HealthCheck::Diagnostic::WebRequest](https://metacpan.org/pod/HealthCheck%3A%3ADiagnostic%3A%3AWebRequest) in addition to its own.
`status_code` is by default set to "200, 503".

## url

The URL to the remote HealthCheck JSON endpoint. This typically ends in
"_/healthz_".

# DEPENDENCIES

- [HealthCheck::Diagnostic::WebRequest](https://metacpan.org/pod/HealthCheck%3A%3ADiagnostic%3A%3AWebRequest)
- [JSON](https://metacpan.org/pod/JSON)

# AUTHOR

Grant Street Group <developers@grantstreet.com>

# COPYRIGHT AND LICENSE

This software is Copyright (c) 2021 - 2024 by Grant Street Group.

This is free software, licensed under:

    The Artistic License 2.0 (GPL Compatible)
