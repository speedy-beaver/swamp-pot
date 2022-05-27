# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <https://www.gnu.org/licenses/>.

FROM ubuntu:latest
RUN apt-get -y update
RUN DEBIAN_FRONTEND=noninteractive TZ=Europe/Stockholm apt-get -y install tzdata
RUN apt-get install -y mutt

ENV SUBJECT "My Subject"
ENV ATTACHEMENT "some.epub"
ENV RECIPIENT "test@example.com"
ENV FROM "test@example.com"
ENV REALNAME "Test Example"
ENV SMTPURL "smtp://test@example.com@example.com:25/"
ENV SMTPPASS "admin123"

VOLUME /tmp/attachement

#CMD ["bash","-c","echo | mutt -e \"set ssl_starttls=no; ssl_force_tls=no; from=$FROM ; realname=$REALNAME; smtp_url=$SMTPURL ; smtp_pass=$SMTPPASS \" -s \"$SUBJECT\" -a $ATTACHEMENT -- $RECIPIENT"]
CMD ["bash","-c","echo | mutt -e \"set ssl_starttls=no; set ssl_force_tls=no; set from=$FROM ; set realname=$REALNAME; set smtp_url=$SMTPURL ; set smtp_pass=$SMTPPASS \" -s \"$SUBJECT\" -a $ATTACHEMENT -- $RECIPIENT"]
