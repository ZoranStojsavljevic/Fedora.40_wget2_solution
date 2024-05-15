### wget2_discussions
https://gitlab.com/gnuwget/wget2/-/issues/661#note_1911520943

Last two important messages:

```
Romain Geissler
@Romain-Geissler-1A · 1 week ago

Well the issue of middlebox having wrong config, or in our case
firewall being unable to support this is an issue which is not
solved easily. I remember when TLS 1.3 was out many discussions
have emerged to try to make TLS 1.3 look as much as TLS 1.2 based
on the number of reject from middlebox TLS implementers were
witnessing. And changing these middlebox usually takes years.

The way I see it (as a user) is that the problem shall be reported
to you as wget maintainer, and then you choose: either to disable
it by default directly in wget2, either to advise Fedora folks to
disable via config. But I didn't want to submit the wgetrc change
in Fedora before actually asking you ! ;) So I will try to package
this on fedora side (for now this wgetrc fix, we did it only in our
internal Fedora image in my own company).
```
```
Tim Rühsen
@rockdaboot · 1 week ago
Owner

Well the issue of middlebox having wrong config, or in our case firewall
being unable to support this is an issue which is not solved easily. I
remember when TLS 1.3 was out many discussions have emerged to try to
make TLS 1.3 look as much as TLS 1.2 based on the number of reject from
middlebox TLS implementers were witnessing. And changing these middlebox
usually takes years.

I absolutely see this and agree with you. But my standpoint is that if we
don't push for a technology (= using it), nobody will ever change the
middleboxes (because no TFO client = no need to change). Rolling out a
client that uses TFO by default at least raises awareness for required
changes at the vendor side.

If I were a Fedora decision maker, I'd definitely think otherwise, and UX
would be one of my top concerns. Practically, this implies either not using
wget2 at all or installing a conservative config file by default (or
maintaining a patch). "Power-users" can override any of these options
globally or on a per user level (even on a per-process level) - but if this
goes wrong, Fedora wouldn't be held responsible.
```
