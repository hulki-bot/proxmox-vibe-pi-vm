#!/usr/bin/env bash
set -euo pipefail

VMID=""
MODE="virtio"

usage() {
  cat <<USAGE
Usage: $0 --vmid <id> [--mode virtio|std|serial]
USAGE
}

while [[ $# -gt 0 ]]; do
  case "$1" in
    --vmid) VMID="$2"; shift 2 ;;
    --mode) MODE="$2"; shift 2 ;;
    -h|--help) usage; exit 0 ;;
    *) echo "Unknown option: $1"; usage; exit 1 ;;
  esac
done

if [[ -z "$VMID" ]]; then
  echo "ERROR: --vmid is required"
  exit 1
fi

case "$MODE" in
  virtio|std) VGA="$MODE" ;;
  serial) VGA="serial0" ;;
  *) echo "ERROR: mode must be one of virtio|std|serial"; exit 1 ;;
esac

qm stop "$VMID" --timeout 30 || true
qm set "$VMID" --vga "$VGA"
qm start "$VMID"

echo "Set VM $VMID console mode to $MODE (vga=$VGA)."
