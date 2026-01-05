.class public abstract synthetic Lcom/android/server/hdmi/HdmiControlService$38;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final synthetic $SwitchMap$android$sysprop$HdmiProperties$cec_device_types_values:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Landroid/sysprop/HdmiProperties$cec_device_types_values;->values()[Landroid/sysprop/HdmiProperties$cec_device_types_values;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/server/hdmi/HdmiControlService$38;->$SwitchMap$android$sysprop$HdmiProperties$cec_device_types_values:[I

    :try_start_0
    sget-object v1, Landroid/sysprop/HdmiProperties$cec_device_types_values;->TV:Landroid/sysprop/HdmiProperties$cec_device_types_values;

    invoke-virtual {v1}, Landroid/sysprop/HdmiProperties$cec_device_types_values;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/android/server/hdmi/HdmiControlService$38;->$SwitchMap$android$sysprop$HdmiProperties$cec_device_types_values:[I

    sget-object v1, Landroid/sysprop/HdmiProperties$cec_device_types_values;->RECORDING_DEVICE:Landroid/sysprop/HdmiProperties$cec_device_types_values;

    invoke-virtual {v1}, Landroid/sysprop/HdmiProperties$cec_device_types_values;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/android/server/hdmi/HdmiControlService$38;->$SwitchMap$android$sysprop$HdmiProperties$cec_device_types_values:[I

    sget-object v1, Landroid/sysprop/HdmiProperties$cec_device_types_values;->RESERVED:Landroid/sysprop/HdmiProperties$cec_device_types_values;

    invoke-virtual {v1}, Landroid/sysprop/HdmiProperties$cec_device_types_values;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcom/android/server/hdmi/HdmiControlService$38;->$SwitchMap$android$sysprop$HdmiProperties$cec_device_types_values:[I

    sget-object v1, Landroid/sysprop/HdmiProperties$cec_device_types_values;->TUNER:Landroid/sysprop/HdmiProperties$cec_device_types_values;

    invoke-virtual {v1}, Landroid/sysprop/HdmiProperties$cec_device_types_values;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v0, Lcom/android/server/hdmi/HdmiControlService$38;->$SwitchMap$android$sysprop$HdmiProperties$cec_device_types_values:[I

    sget-object v1, Landroid/sysprop/HdmiProperties$cec_device_types_values;->PLAYBACK_DEVICE:Landroid/sysprop/HdmiProperties$cec_device_types_values;

    invoke-virtual {v1}, Landroid/sysprop/HdmiProperties$cec_device_types_values;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v0, Lcom/android/server/hdmi/HdmiControlService$38;->$SwitchMap$android$sysprop$HdmiProperties$cec_device_types_values:[I

    sget-object v1, Landroid/sysprop/HdmiProperties$cec_device_types_values;->AUDIO_SYSTEM:Landroid/sysprop/HdmiProperties$cec_device_types_values;

    invoke-virtual {v1}, Landroid/sysprop/HdmiProperties$cec_device_types_values;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v0, Lcom/android/server/hdmi/HdmiControlService$38;->$SwitchMap$android$sysprop$HdmiProperties$cec_device_types_values:[I

    sget-object v1, Landroid/sysprop/HdmiProperties$cec_device_types_values;->PURE_CEC_SWITCH:Landroid/sysprop/HdmiProperties$cec_device_types_values;

    invoke-virtual {v1}, Landroid/sysprop/HdmiProperties$cec_device_types_values;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v0, Lcom/android/server/hdmi/HdmiControlService$38;->$SwitchMap$android$sysprop$HdmiProperties$cec_device_types_values:[I

    sget-object v1, Landroid/sysprop/HdmiProperties$cec_device_types_values;->VIDEO_PROCESSOR:Landroid/sysprop/HdmiProperties$cec_device_types_values;

    invoke-virtual {v1}, Landroid/sysprop/HdmiProperties$cec_device_types_values;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    return-void
.end method
