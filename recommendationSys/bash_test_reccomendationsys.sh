#!/bin/bash

# Set the base URL for the recommendation system API
BASE_URL="http://localhost:5000"

# Function to send a POST request to the API
send_post_request() {
    ENDPOINT="$1"
    DATA="$2"
    curl -X POST "$BASE_URL/$ENDPOINT" -H "Content-Type: application/json" -d "$DATA"
}

# Function to send a GET request to the API
send_get_request() {
    ENDPOINT="$1"
    curl -X GET "$BASE_URL/$ENDPOINT"
}

# Example usage:

# Get personalized recommendations for user_id 123 and product_id 456
send_post_request "recommend" '{"user_id": 123, "product_id": 456, "num_recommendations": 5}'

# Get general recommendations
send_get_request "general_recommend"

# Get user history-based recommendations for user_id 123
send_post_request "user_history_recommend" '{"user_id": 123, "num_recommendations": 5}'

# Get user preferences-based recommendations for user_id 123
send_post_request "user_preferences_recommend" '{"user_id": 123, "num_recommendations": 5}'

# Get popular products
send_get_request "popular_products"

# Get new products
send_get_request "new_products"
