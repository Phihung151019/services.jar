.class public final Lcom/android/server/input/InputSettingsObserver;
.super Landroid/database/ContentObserver;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

.field public final mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

.field public final mObservers:Ljava/util/Map;

.field public final mService:Lcom/android/server/input/InputManagerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService$InputManagerHandler;Lcom/android/server/input/InputManagerService;Lcom/android/server/input/NativeInputManagerService$NativeImpl;)V
    .locals 0

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/server/input/InputSettingsObserver;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/input/InputSettingsObserver;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    iput-object p3, p0, Lcom/android/server/input/InputSettingsObserver;->mService:Lcom/android/server/input/InputManagerService;

    iput-object p4, p0, Lcom/android/server/input/InputSettingsObserver;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    const/16 p1, 0x2f

    new-array p1, p1, [Ljava/util/Map$Entry;

    const-string/jumbo p2, "mouse_pointer_size_step"

    invoke-static {p2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    new-instance p3, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda0;

    const/4 p4, 0x0

    invoke-direct {p3, p0, p4}, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/input/InputSettingsObserver;I)V

    invoke-static {p2, p3}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p2

    const/4 p3, 0x0

    aput-object p2, p1, p3

    const-string/jumbo p2, "mouse_pointer_color"

    invoke-static {p2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    new-instance p3, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda0;

    const/4 p4, 0x2

    invoke-direct {p3, p0, p4}, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/input/InputSettingsObserver;I)V

    invoke-static {p2, p3}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p2

    const/4 p3, 0x1

    aput-object p2, p1, p3

    const-string/jumbo p2, "pointer_speed"

    invoke-static {p2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    new-instance p3, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda0;

    const/16 p4, 0xe

    invoke-direct {p3, p0, p4}, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/input/InputSettingsObserver;I)V

    invoke-static {p2, p3}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p2

    const/4 p3, 0x2

    aput-object p2, p1, p3

    const-string/jumbo p2, "mouse_reverse_vertical_scrolling"

    invoke-static {p2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    new-instance p3, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda0;

    const/16 p4, 0x1a

    invoke-direct {p3, p0, p4}, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/input/InputSettingsObserver;I)V

    invoke-static {p2, p3}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p2

    const/4 p3, 0x3

    aput-object p2, p1, p3

    const-string/jumbo p2, "mouse_swap_primary_button"

    invoke-static {p2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    new-instance p3, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda3;

    const/4 p4, 0x5

    invoke-direct {p3, p0, p4}, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/input/InputSettingsObserver;I)V

    invoke-static {p2, p3}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p2

    const/4 p3, 0x4

    aput-object p2, p1, p3

    const-string/jumbo p2, "mouse_scrolling_acceleration"

    invoke-static {p2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    new-instance p3, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda3;

    const/4 p4, 0x6

    invoke-direct {p3, p0, p4}, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/input/InputSettingsObserver;I)V

    invoke-static {p2, p3}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p2

    const/4 p3, 0x5

    aput-object p2, p1, p3

    const-string/jumbo p2, "mouse_pointer_acceleration_enabled"

    invoke-static {p2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    new-instance p3, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda3;

    const/4 p4, 0x7

    invoke-direct {p3, p0, p4}, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/input/InputSettingsObserver;I)V

    invoke-static {p2, p3}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p2

    const/4 p3, 0x6

    aput-object p2, p1, p3

    const-string/jumbo p2, "touchpad_pointer_speed"

    invoke-static {p2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    new-instance p3, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda3;

    const/16 p4, 0x8

    invoke-direct {p3, p0, p4}, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/input/InputSettingsObserver;I)V

    invoke-static {p2, p3}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p2

    const/4 p3, 0x7

    aput-object p2, p1, p3

    const-string/jumbo p2, "touchpad_natural_scrolling"

    invoke-static {p2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    new-instance p3, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda3;

    const/16 p4, 0x9

    invoke-direct {p3, p0, p4}, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/input/InputSettingsObserver;I)V

    invoke-static {p2, p3}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p2

    const/16 p3, 0x8

    aput-object p2, p1, p3

    const-string/jumbo p2, "touchpad_tap_to_click"

    invoke-static {p2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    new-instance p3, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda3;

    const/16 p4, 0xa

    invoke-direct {p3, p0, p4}, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/input/InputSettingsObserver;I)V

    invoke-static {p2, p3}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p2

    const/16 p3, 0x9

    aput-object p2, p1, p3

    const-string/jumbo p2, "touchpad_tap_dragging"

    invoke-static {p2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    new-instance p3, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda0;

    const/16 p4, 0xb

    invoke-direct {p3, p0, p4}, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/input/InputSettingsObserver;I)V

    invoke-static {p2, p3}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p2

    const/16 p3, 0xa

    aput-object p2, p1, p3

    const-string/jumbo p2, "touchpad_visualizer"

    invoke-static {p2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    new-instance p3, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda0;

    const/16 p4, 0x16

    invoke-direct {p3, p0, p4}, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/input/InputSettingsObserver;I)V

    invoke-static {p2, p3}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p2

    const/16 p3, 0xb

    aput-object p2, p1, p3

    const-string/jumbo p2, "touchpad_right_click_zone"

    invoke-static {p2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    new-instance p3, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda3;

    const/4 p4, 0x0

    invoke-direct {p3, p0, p4}, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/input/InputSettingsObserver;I)V

    invoke-static {p2, p3}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p2

    const/16 p3, 0xc

    aput-object p2, p1, p3

    const-string/jumbo p2, "touchpad_system_gestures"

    invoke-static {p2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    new-instance p3, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda3;

    const/16 p4, 0xb

    invoke-direct {p3, p0, p4}, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/input/InputSettingsObserver;I)V

    invoke-static {p2, p3}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p2

    const/16 p3, 0xd

    aput-object p2, p1, p3

    const-string/jumbo p2, "touchpad_acceleration_enabled"

    invoke-static {p2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    new-instance p3, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda3;

    const/16 p4, 0xc

    invoke-direct {p3, p0, p4}, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/input/InputSettingsObserver;I)V

    invoke-static {p2, p3}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p2

    const/16 p3, 0xe

    aput-object p2, p1, p3

    const-string/jumbo p2, "show_touches"

    invoke-static {p2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    new-instance p3, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda3;

    const/16 p4, 0xd

    invoke-direct {p3, p0, p4}, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/input/InputSettingsObserver;I)V

    invoke-static {p2, p3}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p2

    const/16 p3, 0xf

    aput-object p2, p1, p3

    const-string/jumbo p2, "pointer_location"

    invoke-static {p2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    new-instance p3, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda3;

    const/16 p4, 0xe

    invoke-direct {p3, p0, p4}, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/input/InputSettingsObserver;I)V

    invoke-static {p2, p3}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p2

    const/16 p3, 0x10

    aput-object p2, p1, p3

    const-string/jumbo p2, "accessibility_large_pointer_icon"

    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    new-instance p3, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda3;

    const/16 p4, 0xf

    invoke-direct {p3, p0, p4}, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/input/InputSettingsObserver;I)V

    invoke-static {p2, p3}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p2

    const/16 p3, 0x11

    aput-object p2, p1, p3

    const-string/jumbo p2, "long_press_timeout"

    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    new-instance p3, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda3;

    const/16 p4, 0x10

    invoke-direct {p3, p0, p4}, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/input/InputSettingsObserver;I)V

    invoke-static {p2, p3}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p2

    const/16 p3, 0x12

    aput-object p2, p1, p3

    const-string/jumbo p2, "pen_hovering_pointer"

    invoke-static {p2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    new-instance p3, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda0;

    const/4 p4, 0x1

    invoke-direct {p3, p0, p4}, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/input/InputSettingsObserver;I)V

    invoke-static {p2, p3}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p2

    const/16 p3, 0x13

    aput-object p2, p1, p3

    const-string/jumbo p2, "pen_hovering"

    invoke-static {p2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    new-instance p3, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda0;

    const/4 p4, 0x3

    invoke-direct {p3, p0, p4}, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/input/InputSettingsObserver;I)V

    invoke-static {p2, p3}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p2

    const/16 p3, 0x14

    aput-object p2, p1, p3

    const-string/jumbo p2, "cover_test_mode"

    invoke-static {p2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    new-instance p3, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda0;

    const/4 p4, 0x4

    invoke-direct {p3, p0, p4}, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/input/InputSettingsObserver;I)V

    invoke-static {p2, p3}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p2

    const/16 p3, 0x15

    aput-object p2, p1, p3

    const-string/jumbo p2, "primary_mouse_button_option"

    invoke-static {p2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    new-instance p3, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda0;

    const/4 p4, 0x5

    invoke-direct {p3, p0, p4}, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/input/InputSettingsObserver;I)V

    invoke-static {p2, p3}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p2

    const/16 p3, 0x16

    aput-object p2, p1, p3

    const-string/jumbo p2, "mouse_scrolling_speed"

    invoke-static {p2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    new-instance p3, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda0;

    const/4 p4, 0x6

    invoke-direct {p3, p0, p4}, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/input/InputSettingsObserver;I)V

    invoke-static {p2, p3}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p2

    const/16 p3, 0x17

    aput-object p2, p1, p3

    const-string/jumbo p2, "enhance_pointer_precision"

    invoke-static {p2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    new-instance p3, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda0;

    const/4 p4, 0x7

    invoke-direct {p3, p0, p4}, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/input/InputSettingsObserver;I)V

    invoke-static {p2, p3}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p2

    const/16 p3, 0x18

    aput-object p2, p1, p3

    const-string/jumbo p2, "mouse_secondary_button_option"

    invoke-static {p2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    new-instance p3, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda0;

    const/16 p4, 0x8

    invoke-direct {p3, p0, p4}, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/input/InputSettingsObserver;I)V

    invoke-static {p2, p3}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p2

    const/16 p3, 0x19

    aput-object p2, p1, p3

    const-string/jumbo p2, "mouse_middle_button_option"

    invoke-static {p2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    new-instance p3, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda0;

    const/16 p4, 0x9

    invoke-direct {p3, p0, p4}, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/input/InputSettingsObserver;I)V

    invoke-static {p2, p3}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p2

    const/16 p3, 0x1a

    aput-object p2, p1, p3

    const-string/jumbo p2, "mouse_additional_1_option"

    invoke-static {p2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    new-instance p3, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda0;

    const/16 p4, 0xa

    invoke-direct {p3, p0, p4}, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/input/InputSettingsObserver;I)V

    invoke-static {p2, p3}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p2

    const/16 p3, 0x1b

    aput-object p2, p1, p3

    const-string/jumbo p2, "mouse_additional_2_option"

    invoke-static {p2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    new-instance p3, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda0;

    const/16 p4, 0xc

    invoke-direct {p3, p0, p4}, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/input/InputSettingsObserver;I)V

    invoke-static {p2, p3}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p2

    const/16 p3, 0x1c

    aput-object p2, p1, p3

    const-string/jumbo p2, "enabled_accessibility_services"

    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    new-instance p3, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda0;

    const/16 p4, 0xd

    invoke-direct {p3, p0, p4}, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/input/InputSettingsObserver;I)V

    invoke-static {p2, p3}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p2

    const/16 p3, 0x1d

    aput-object p2, p1, p3

    const-string/jumbo p2, "tap_to_click_enabled"

    invoke-static {p2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    new-instance p3, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda0;

    const/16 p4, 0xf

    invoke-direct {p3, p0, p4}, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/input/InputSettingsObserver;I)V

    invoke-static {p2, p3}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p2

    const/16 p3, 0x1e

    aput-object p2, p1, p3

    const-string/jumbo p2, "touchpad_scrolling_direction"

    invoke-static {p2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    new-instance p3, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda0;

    const/16 p4, 0x10

    invoke-direct {p3, p0, p4}, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/input/InputSettingsObserver;I)V

    invoke-static {p2, p3}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p2

    const/16 p3, 0x1f

    aput-object p2, p1, p3

    const-string/jumbo p2, "SPEN_INPUT_MODE_DEX"

    invoke-static {p2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    new-instance p3, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda0;

    const/16 p4, 0x11

    invoke-direct {p3, p0, p4}, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/input/InputSettingsObserver;I)V

    invoke-static {p2, p3}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p2

    const/16 p3, 0x20

    aput-object p2, p1, p3

    const-string/jumbo p2, "maximum_obscuring_opacity_for_touch"

    invoke-static {p2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    new-instance p3, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda0;

    const/16 p4, 0x12

    invoke-direct {p3, p0, p4}, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/input/InputSettingsObserver;I)V

    invoke-static {p2, p3}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p2

    const/16 p3, 0x21

    aput-object p2, p1, p3

    const-string/jumbo p2, "show_key_presses"

    invoke-static {p2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    new-instance p3, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda0;

    const/16 p4, 0x13

    invoke-direct {p3, p0, p4}, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/input/InputSettingsObserver;I)V

    invoke-static {p2, p3}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p2

    const/16 p3, 0x22

    aput-object p2, p1, p3

    const-string/jumbo p2, "key_repeat_timeout"

    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    new-instance p3, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda0;

    const/16 p4, 0x14

    invoke-direct {p3, p0, p4}, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/input/InputSettingsObserver;I)V

    invoke-static {p2, p3}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p2

    const/16 p3, 0x23

    aput-object p2, p1, p3

    const-string/jumbo p2, "key_repeat_delay"

    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    new-instance p3, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda0;

    const/16 p4, 0x15

    invoke-direct {p3, p0, p4}, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/input/InputSettingsObserver;I)V

    invoke-static {p2, p3}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p2

    const/16 p3, 0x24

    aput-object p2, p1, p3

    const-string/jumbo p2, "key_repeat_enabled"

    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    new-instance p3, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda0;

    const/16 p4, 0x17

    invoke-direct {p3, p0, p4}, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/input/InputSettingsObserver;I)V

    invoke-static {p2, p3}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p2

    const/16 p3, 0x25

    aput-object p2, p1, p3

    const-string/jumbo p2, "show_rotary_input"

    invoke-static {p2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    new-instance p3, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda0;

    const/16 p4, 0x18

    invoke-direct {p3, p0, p4}, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/input/InputSettingsObserver;I)V

    invoke-static {p2, p3}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p2

    const/16 p3, 0x26

    aput-object p2, p1, p3

    const-string/jumbo p2, "accessibility_bounce_keys"

    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    new-instance p3, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda0;

    const/16 p4, 0x19

    invoke-direct {p3, p0, p4}, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/input/InputSettingsObserver;I)V

    invoke-static {p2, p3}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p2

    const/16 p3, 0x27

    aput-object p2, p1, p3

    const-string/jumbo p2, "accessibility_slow_keys"

    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    new-instance p3, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda0;

    const/16 p4, 0x1b

    invoke-direct {p3, p0, p4}, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/input/InputSettingsObserver;I)V

    invoke-static {p2, p3}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p2

    const/16 p3, 0x28

    aput-object p2, p1, p3

    const-string/jumbo p2, "accessibility_sticky_keys"

    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    new-instance p3, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda0;

    const/16 p4, 0x1c

    invoke-direct {p3, p0, p4}, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/input/InputSettingsObserver;I)V

    invoke-static {p2, p3}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p2

    const/16 p3, 0x29

    aput-object p2, p1, p3

    const-string/jumbo p2, "stylus_pointer_icon_enabled"

    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    new-instance p3, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda0;

    const/16 p4, 0x1d

    invoke-direct {p3, p0, p4}, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/input/InputSettingsObserver;I)V

    invoke-static {p2, p3}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p2

    const/16 p3, 0x2a

    aput-object p2, p1, p3

    const-string/jumbo p2, "pointer_fill_style"

    invoke-static {p2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    new-instance p3, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda3;

    const/4 p4, 0x1

    invoke-direct {p3, p0, p4}, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/input/InputSettingsObserver;I)V

    invoke-static {p2, p3}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p2

    const/16 p3, 0x2b

    aput-object p2, p1, p3

    const-string/jumbo p2, "pointer_stroke_style"

    invoke-static {p2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    new-instance p3, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda3;

    const/4 p4, 0x2

    invoke-direct {p3, p0, p4}, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/input/InputSettingsObserver;I)V

    invoke-static {p2, p3}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p2

    const/16 p3, 0x2c

    aput-object p2, p1, p3

    const-string/jumbo p2, "pointer_scale"

    invoke-static {p2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    new-instance p3, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda3;

    const/4 p4, 0x3

    invoke-direct {p3, p0, p4}, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/input/InputSettingsObserver;I)V

    invoke-static {p2, p3}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p2

    const/16 p3, 0x2d

    aput-object p2, p1, p3

    const-string/jumbo p2, "touchpad_three_finger_tap_customization"

    invoke-static {p2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    new-instance p3, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda3;

    const/4 p4, 0x4

    invoke-direct {p3, p0, p4}, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/input/InputSettingsObserver;I)V

    invoke-static {p2, p3}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p2

    const/16 p3, 0x2e

    aput-object p2, p1, p3

    invoke-static {p1}, Ljava/util/Map;->ofEntries([Ljava/util/Map$Entry;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/input/InputSettingsObserver;->mObservers:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final getBoolean(Ljava/lang/String;)Z
    .locals 2

    iget-object p0, p0, Lcom/android/server/input/InputSettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, -0x2

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method public final onChange(ZLandroid/net/Uri;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/input/InputSettingsObserver;->mObservers:Ljava/util/Map;

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/function/Consumer;

    const-string/jumbo p1, "setting changed"

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public final updateKeyRepeatInfo()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/input/InputSettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "key_repeat_enabled"

    const/4 v2, 0x1

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iget-object v0, p0, Lcom/android/server/input/InputSettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "key_repeat_timeout"

    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatTimeout()I

    move-result v4

    invoke-static {v0, v1, v4, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/input/InputSettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "key_repeat_delay"

    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatDelay()I

    move-result v5

    invoke-static {v1, v4, v5, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    iget-object p0, p0, Lcom/android/server/input/InputSettingsObserver;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    invoke-interface {p0, v0, v1, v2}, Lcom/android/server/input/NativeInputManagerService;->setKeyRepeatConfiguration(IIZ)V

    return-void
.end method

.method public final updatePointerIconCustomFromSettings()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/input/InputSettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "mouse_pointer_color"

    const v2, 0xffffff

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/input/InputSettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "mouse_pointer_size_step"

    const/4 v4, 0x1

    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "updatePointerIcon color=0x"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "InputManager"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0, v1}, Landroid/view/PointerIcon;->setCustomIcons(IF)V

    iget-object p0, p0, Lcom/android/server/input/InputSettingsObserver;->mService:Lcom/android/server/input/InputManagerService;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/input/InputManagerService;->setCustomPointerIcons(IF)V

    return-void
.end method

.method public final updateShowHoveringFromSettings()V
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/InputSettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "pen_hovering_pointer"

    const/4 v3, -0x2

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Exception getShowHoveringSetting \'false\'"

    const-string v3, "InputManager"

    invoke-static {v3, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/server/input/InputSettingsObserver;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    invoke-interface {p0, v0}, Lcom/android/server/input/NativeInputManagerService;->setShowHovering(Z)V

    return-void
.end method
