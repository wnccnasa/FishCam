#!/bin/bash

# Install the web_stream systemd service
SERVICE_FILE="sensor_ts.service"
SERVICE_PATH="/home/pi/fishcam/.venv/bin/python /etc/systemd/system/$SERVICE_FILE"

echo "Copying $SERVICE_FILE to $SERVICE_PATH..."
sudo cp "$SERVICE_FILE" "$SERVICE_PATH"

echo "Reloading systemd daemon..."
sudo systemctl daemon-reload

echo "Enabling $SERVICE_FILE..."
sudo systemctl enable "$SERVICE_FILE"

echo "Starting $SERVICE_FILE..."
sudo systemctl start "$SERVICE_FILE"

echo "Service installed and started."
