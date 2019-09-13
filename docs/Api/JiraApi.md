# JiraClient\JiraApi

All URIs are relative to *http://localhost/api/2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createIssue**](JiraApi.md#createIssue) | **POST** /issue | Creates an issue or a sub-task from a JSON representation



## createIssue

> \JiraClient\Model\JiraCreatedIssue createIssue($update_history, $issue)

Creates an issue or a sub-task from a JSON representation

### Example

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
$update_history = false; // bool | if true then the user's project history is updated
$issue = new \JiraClient\Model\JiraIssueCreationProperties(); // \JiraClient\Model\JiraIssueCreationProperties | The specification of the issue to create

try {
    $result = $apiInstance->createIssue($update_history, $issue);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling JiraApi->createIssue: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **update_history** | **bool**| if true then the user&#39;s project history is updated | [optional] [default to false]
 **issue** | [**\JiraClient\Model\JiraIssueCreationProperties**](../Model/JiraIssueCreationProperties.md)| The specification of the issue to create | [optional]

### Return type

[**\JiraClient\Model\JiraCreatedIssue**](../Model/JiraCreatedIssue.md)

### Authorization

[crowdAuth](../../README.md#crowdAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../../README.md#documentation-for-models)
[[Back to README]](../../README.md)

