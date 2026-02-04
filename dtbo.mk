DTBO_PREBUILT := $(DEVICE_PATH)/prebuilt/dtbo.img

$(BOARD_PREBUILT_DTBOIMAGE): $(DTBO_PREBUILT)
	@echo "Using prebuilt dtbo.img (trimmed)"
	mkdir -p $(dir $@)
	SRC="$(DTBO_PREBUILT)" DST="$@" python3 -c 'import os, pathlib; src=pathlib.Path(os.environ["SRC"]); dst=pathlib.Path(os.environ["DST"]); data=src.read_bytes(); trimmed=data.rstrip(b"\x00"); dst.write_bytes(trimmed if trimmed else data); print(f"Trimmed dtbo: {len(data)} -> {len(trimmed)} bytes")'
