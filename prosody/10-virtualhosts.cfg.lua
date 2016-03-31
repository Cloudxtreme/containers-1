----------- Virtual hosts -----------
-- You need to add a VirtualHost entry for each domain you wish Prosody to serve.
-- Settings under each VirtualHost entry apply *only* to that host.

VirtualHost "0l.de"
	-- Assign this host a certificate for TLS, otherwise it would use the one
	-- set in the global section (if any).
	-- Note that old-style SSL on port 5223 only supports one certificate, and will always
	-- use the global one.
        ssl = {
		key = "/etc/ssl/private/dev_0l_de_startssl.key";
		certificate = "/etc/ssl/owncerts/dev_0l_de_startssl.crt";
		dhparam = "/etc/prosody/certs/dh-2048.pem";
		protocol = "sslv3+";
		-- ciphers = "EECDH+ECDSA+AESGCM:EECDH+aRSA+AESGCM:EECDH+ECDSA+SHA384:EECDH+ECDSA+SHA256:EECDH+aRSA+SHA384:EECDH+aRSA+SHA256:EECDH:EDH+aRSA:!aNULL:!eNULL:!LOW:!3DES:!MD5:!EXP:!PSK:!SRP:!DSS:!RC4:!SEED:!AES128:!CAMELLIA128";
		options = { "no_sslv2",
			    "no_ticket",
			    "no_compression",
			    "cipher_server_preference",
			    "single_dh_use",
			    "single_ecdh_use"
		}
        }

	http_host = "dev.0l.de"

VirtualHost "emu.lu"
        -- Assign this host a certificate for TLS, otherwise it would use the one
        -- set in the global section (if any).
        -- Note that old-style SSL on port 5223 only supports one certificate, and will always
        -- use the global one.