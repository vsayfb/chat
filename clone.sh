#!/bin/bash

repos=(
  "https://github.com/vsayfb/api-gateway-for-chat-app.git"
  "https://github.com/vsayfb/user-service-for-chat-app.git"
  "https://github.com/vsayfb/authentication-service-for-chat-app.git"
  "https://github.com/vsayfb/room-service-for-chat-app.git"
  "https://github.com/vsayfb/message-service-for-chat-app.git"
)

for repo in "${repos[@]}"; do
  git clone "$repo" "$(pwd)/$(basename "$repo" .git)" &
done

wait

echo "All repositories have been cloned."
