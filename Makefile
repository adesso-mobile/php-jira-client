build: ./swagger-jira-client.yaml
	openapi-generator generate \
		-i ./swagger-jira-client.yaml \
		-g php \
		-o ./ \
		--additional-properties invokerPackage=JiraClient \
		--additional-properties packageName=php-jira-client \
		--git-user-id=adesso-mobile \
		--git-repo-id=php-jira-client
