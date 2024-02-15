
# Recommendation System API Usage

This Bash script demonstrates how to interact with the Recommendation System API. It provides functions to send POST and GET requests to the API endpoints for retrieving recommendations.

## Prerequisites

- [Curl](https://curl.se/): Command-line tool for transferring data with URLs
- [jq](https://stedolan.github.io/jq/): Command-line JSON processor (optional for parsing JSON responses)

## Usage

1. Set the base URL for the Recommendation System API in the `BASE_URL` variable.
2. Use the `send_post_request` function to send a POST request to the API.
3. Use the `send_get_request` function to send a GET request to the API.

## Example Usage

### Get personalized recommendations

```bash
send_post_request "recommend" '{"user_id": 123, "product_id": 456, "num_recommendations": 5}'
```

### Get general recommendations

```bash
send_get_request "general_recommend"
```

### Get user history-based recommendations

```bash
send_post_request "user_history_recommend" '{"user_id": 123, "num_recommendations": 5}'
```

### Get user preferences-based recommendations

```bash
send_post_request "user_preferences_recommend" '{"user_id": 123, "num_recommendations": 5}'
```

### Get popular products

```bash
send_get_request "popular_products"
```

### Get new products

```bash
send_get_request "new_products"
```
