#!/bin/bash

if [ ! -f bootstraped ]; then
  rake errbit:bootstrap && > bootstraped
fi

exec "$@"
