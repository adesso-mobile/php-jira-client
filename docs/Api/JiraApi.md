# JiraClient\JiraApi

All URIs are relative to *http://localhost/api/2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addAttachment**](JiraApi.md#addAttachment) | **POST** /issue/{issueIdOrKey}/attachments | Add one or more attachments to an issue
[**createIssue**](JiraApi.md#createIssue) | **POST** /issue | Creates an issue or a sub-task from a JSON representation
[**findUsers**](JiraApi.md#findUsers) | **GET** /user/search | Returns a list of users that match the search string. This resource cannot be accessed anonymously.



## addAttachment

> addAttachment($issue_id_or_key, $file, $x_atlassian_token)

Add one or more attachments to an issue

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

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **issue_id_or_key** | **string**|  |
 **file** | **\SplFileObject****\SplFileObject**| The attachment to upload |
 **x_atlassian_token** | **string**|  | [optional] [default to &#39;no-check&#39;]

### Return type

void (empty response body)

### Authorization

[crowdAuth](../../README.md#crowdAuth)

### HTTP request headers

- **Content-Type**: multipart/form-data
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../../README.md#documentation-for-models)
[[Back to README]](../../README.md)


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


## findUsers

> \JiraClient\Model\JiraUser[] findUsers($username, $start_at, $max_results, $include_active, $include_inactive)

Returns a list of users that match the search string. This resource cannot be accessed anonymously.

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
$username = 'username_example'; // string | A query string used to search username, name or e-mail address
$start_at = 0; // int | the index of the first user to return (0-based)
$max_results = 50; // int | the maximum number of users to return (defaults to 50). The maximum allowed value is 1000. If you specify a value that is higher than this number, your search results will be truncated.
$include_active = true; // bool | 
$include_inactive = false; // bool | 

try {
    $result = $apiInstance->findUsers($username, $start_at, $max_results, $include_active, $include_inactive);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling JiraApi->findUsers: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **string**| A query string used to search username, name or e-mail address |
 **start_at** | **int**| the index of the first user to return (0-based) | [optional] [default to 0]
 **max_results** | **int**| the maximum number of users to return (defaults to 50). The maximum allowed value is 1000. If you specify a value that is higher than this number, your search results will be truncated. | [optional] [default to 50]
 **include_active** | **bool**|  | [optional] [default to true]
 **include_inactive** | **bool**|  | [optional] [default to false]

### Return type

[**\JiraClient\Model\JiraUser[]**](../Model/JiraUser.md)

### Authorization

[crowdAuth](../../README.md#crowdAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../../README.md#documentation-for-models)
[[Back to README]](../../README.md)

