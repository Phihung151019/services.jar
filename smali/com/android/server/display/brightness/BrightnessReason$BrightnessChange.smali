.class public final Lcom/android/server/display/brightness/BrightnessReason$BrightnessChange;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final adjustedBrightness:I

.field public final modifier:I

.field public final synthetic this$0:Lcom/android/server/display/brightness/BrightnessReason;


# direct methods
.method public constructor <init>(Lcom/android/server/display/brightness/BrightnessReason;IF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/brightness/BrightnessReason$BrightnessChange;->this$0:Lcom/android/server/display/brightness/BrightnessReason;

    iput p2, p0, Lcom/android/server/display/brightness/BrightnessReason$BrightnessChange;->modifier:I

    invoke-static {p3}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessFloatToInt(F)I

    move-result p1

    iput p1, p0, Lcom/android/server/display/brightness/BrightnessReason$BrightnessChange;->adjustedBrightness:I

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/server/display/brightness/BrightnessReason$BrightnessChange;->this$0:Lcom/android/server/display/brightness/BrightnessReason;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/server/display/brightness/BrightnessReason$BrightnessChange;->modifier:I

    if-eq v1, v0, :cond_1

    const/4 v0, 0x2

    if-eq v1, v0, :cond_0

    sparse-switch v1, :sswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "0x"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Landroid/hardware/audio/common/V2_0/AudioChannelMask$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_0
    const-string/jumbo v0, "battery_critical_low"

    goto :goto_0

    :sswitch_1
    const-string/jumbo v0, "hdr_limit"

    goto :goto_0

    :sswitch_2
    const-string/jumbo v0, "freezing_brightness_mode"

    goto :goto_0

    :sswitch_3
    const-string/jumbo v0, "screen_curtain"

    goto :goto_0

    :sswitch_4
    const-string/jumbo v0, "cover_display_demo"

    goto :goto_0

    :sswitch_5
    const-string/jumbo v0, "restore_manual"

    goto :goto_0

    :sswitch_6
    const-string/jumbo v0, "force_dim"

    goto :goto_0

    :sswitch_7
    const-string/jumbo v0, "doze_maximum"

    goto :goto_0

    :sswitch_8
    const-string/jumbo v0, "curtain"

    goto :goto_0

    :sswitch_9
    const-string/jumbo v0, "outdoor"

    goto :goto_0

    :sswitch_a
    const-string/jumbo v0, "hbm_block"

    goto :goto_0

    :sswitch_b
    const-string/jumbo v0, "cover_limit"

    goto :goto_0

    :sswitch_c
    const-string/jumbo v0, "ab_limit"

    goto :goto_0

    :sswitch_d
    const-string/jumbo v0, "mb_limit"

    goto :goto_0

    :sswitch_e
    const-string/jumbo v0, "scale_factor"

    goto :goto_0

    :sswitch_f
    const-string/jumbo v0, "throttled"

    goto :goto_0

    :sswitch_10
    const-string/jumbo v0, "hdr"

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "low_pwr"

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "dim"

    :goto_0
    iget p0, p0, Lcom/android/server/display/brightness/BrightnessReason$BrightnessChange;->adjustedBrightness:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, " -> %s[%d]"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_10
        0x8 -> :sswitch_f
        0x80 -> :sswitch_e
        0x100 -> :sswitch_d
        0x200 -> :sswitch_c
        0x400 -> :sswitch_b
        0x800 -> :sswitch_a
        0x1000 -> :sswitch_9
        0x2000 -> :sswitch_8
        0x4000 -> :sswitch_7
        0x8000 -> :sswitch_6
        0x10000 -> :sswitch_5
        0x20000 -> :sswitch_4
        0x40000 -> :sswitch_3
        0x80000 -> :sswitch_2
        0x100000 -> :sswitch_1
        0x200000 -> :sswitch_0
    .end sparse-switch
.end method
