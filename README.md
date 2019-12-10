# php-jira-client

This is the jira rest resources endpoint documentation

This PHP package is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: 8.3.2
- Build package: org.openapitools.codegen.languages.PhpClientCodegen

## Requirements

PHP 5.5 and later

## Installation & Usage

### Composer

To install the bindings via [Composer](http://getcomposer.org/), add the following to `composer.json`:

```json
{
  "repositories": [
    {
      "type": "vcs",
      "url": "https://github.com/adesso-mobile/php-jira-client.git"
    }
  ],
  "require": {
    "adesso-mobile/php-jira-client": "*@dev"
  }
}
```

Then run `composer install`

### Manual Installation

Download the files and include `autoload.php`:

```php
    require_once('/path/to/php-jira-client/vendor/autoload.php');
```

## Tests

To run the unit tests:

```bash
composer install
./vendor/bin/phpunit
```

## Getting Started

Please follow the [installation procedure](#installation--usage) and then run the following:

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



// Configure HTTP basic authorization: crowdAuth
$config = JiraClient\Configuration::getDefaultConfiguration()
              ->setUsername('YOUR_USERNAME')
              ->setPassword('YOUR_PASSWORD');


$apiInstance = new JiraClient\Api\JiraApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$issue_id_or_key = 'issue_id_or_key_example'; // string | 
$file = "/path/to/file.txt"; // \SplFileObject | The attachment to upload
$x_atlassian_token = 'no-check'; // string | 

try {
    $apiInstance->addAttachment($issue_id_or_key, $file, $x_atlassian_token);
} catch (Exception $e) {
    echo 'Exception when calling JiraApi->addAttachment: ', $e->getMessage(), PHP_EOL;
}

?>
```

## Documentation for API Endpoints

All URIs are relative to *http://localhost/api/2*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*JiraApi* | [**addAttachment**](docs/Api/JiraApi.md#addattachment) | **POST** /issue/{issueIdOrKey}/attachments | Add one or more attachments to an issue
*JiraApi* | [**createIssue**](docs/Api/JiraApi.md#createissue) | **POST** /issue | Creates an issue or a sub-task from a JSON representation
*JiraApi* | [**findUsers**](docs/Api/JiraApi.md#findusers) | **GET** /user/search | Returns a list of users that match the search string. This resource cannot be accessed anonymously.


## Documentation For Models

 - [JiraCreatedIssue](docs/Model/JiraCreatedIssue.md)
 - [JiraIssueCreationProperties](docs/Model/JiraIssueCreationProperties.md)
 - [JiraIssueFields](docs/Model/JiraIssueFields.md)
 - [JiraIssueFieldsAssignee](docs/Model/JiraIssueFieldsAssignee.md)
 - [JiraIssueFieldsIssuetype](docs/Model/JiraIssueFieldsIssuetype.md)
 - [JiraIssueFieldsPriority](docs/Model/JiraIssueFieldsPriority.md)
 - [JiraIssueFieldsProject](docs/Model/JiraIssueFieldsProject.md)
 - [JiraIssueFieldsReporter](docs/Model/JiraIssueFieldsReporter.md)
 - [JiraUser](docs/Model/JiraUser.md)


## Documentation For Authorization



## crowdAuth


- **Type**: HTTP basic authentication


## Author



