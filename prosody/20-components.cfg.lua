------ Components ------
-- You can specify components to add hosts that provide special services,
-- like multi-user conferences, and transports.
-- For more information on components, see http://prosody.im/doc/components

---Set up a MUC (multi-user chat) room server on conference.example.com:
Component "conference.0l.de" "muc"

-- Set up a SOCKS5 bytestream proxy for server-proxied file transfers:
Component "proxy.0l.de" "proxy65"

---Set up an external component (default component port is 5347)
--
-- External components allow adding various services, such as gateways/
-- transports to other networks like ICQ, MSN and Yahoo. For more info
-- see: http://prosody.im/doc/components#adding_an_external_component
--
--Component "gateway.example.com"
--      component_secret = "password"

Component "pubsub.0l.de" "pubsub"
        modules_enabled = { "pubsub_twitter", "pubsub_feeds", "pubsub_github" }

        twitter_searches = {
                realtime = "xmpp OR realtime";
                prosody = "prosody xmpp";
        }

        feeds = {
                planet_jabber = "http://planet.jabber.org/atom.xml";
                prosody_blog = "http://blog.prosody.im/feed/atom.xml";
        }