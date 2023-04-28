const std = @import("std");

const Metadata = extern struct {
    name: [*:0]const u8,
    cli: bool,
};

export fn get_metadata() *const Metadata {
    const METADATA = Metadata{
        .name = "my-zig-plugin",
        .cli = true,
    };
    return &METADATA;
}
