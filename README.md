# swamp-pot
Mutt mail client in a container


Call with:
docker run -e FROM=test@example.com -e REALNAME=Test -e SMTPURL="smtp://test@example.com@example.com:25/" -e SMTPPASS="admin123" -e RECIPIENT=recipient@example.com -e SUBJECT="Test from container" -it --rm swamp-pot
