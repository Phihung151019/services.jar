.class final enum Lcom/android/server/audio/AudioService$BypassReason;
.super Ljava/lang/Enum;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/audio/AudioService$BypassReason;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/audio/AudioService$BypassReason;

.field public static final enum ALL_SOUND_MUTE:Lcom/android/server/audio/AudioService$BypassReason;

.field public static final enum CANNOT_UNMUTE_SILENT_VIBRATE:Lcom/android/server/audio/AudioService$BypassReason;

.field public static final enum CONSUME_ADJUST_SAME:Lcom/android/server/audio/AudioService$BypassReason;

.field public static final enum DISPLAY_VOLUME_CONTROL:Lcom/android/server/audio/AudioService$BypassReason;

.field public static final enum LE_BROADCAST:Lcom/android/server/audio/AudioService$BypassReason;

.field public static final enum MEDIA_VOLUME_STEP_ON:Lcom/android/server/audio/AudioService$BypassReason;

.field public static final enum MULTISOUND:Lcom/android/server/audio/AudioService$BypassReason;

.field public static final enum NO_BYPASS:Lcom/android/server/audio/AudioService$BypassReason;

.field public static final enum SKIP_VOLUME_PANEL_NOT_VISIBLE:Lcom/android/server/audio/AudioService$BypassReason;

.field public static final enum SKIP_WARNING_POPUP_VISIBLE:Lcom/android/server/audio/AudioService$BypassReason;

.field public static final enum VOLUME_LIMITER:Lcom/android/server/audio/AudioService$BypassReason;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    new-instance v0, Lcom/android/server/audio/AudioService$BypassReason;

    const-string/jumbo v1, "NO_BYPASS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/audio/AudioService$BypassReason;->NO_BYPASS:Lcom/android/server/audio/AudioService$BypassReason;

    new-instance v1, Lcom/android/server/audio/AudioService$BypassReason;

    const-string v2, "DISPLAY_VOLUME_CONTROL"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/server/audio/AudioService$BypassReason;->DISPLAY_VOLUME_CONTROL:Lcom/android/server/audio/AudioService$BypassReason;

    new-instance v2, Lcom/android/server/audio/AudioService$BypassReason;

    const-string v3, "CANNOT_UNMUTE_SILENT_VIBRATE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/android/server/audio/AudioService$BypassReason;->CANNOT_UNMUTE_SILENT_VIBRATE:Lcom/android/server/audio/AudioService$BypassReason;

    new-instance v3, Lcom/android/server/audio/AudioService$BypassReason;

    const-string v4, "ALL_SOUND_MUTE"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/server/audio/AudioService$BypassReason;->ALL_SOUND_MUTE:Lcom/android/server/audio/AudioService$BypassReason;

    new-instance v4, Lcom/android/server/audio/AudioService$BypassReason;

    const-string/jumbo v5, "TMS_CONNECT"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v5, Lcom/android/server/audio/AudioService$BypassReason;

    const-string v6, "CONSUME_ADJUST_SAME"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/android/server/audio/AudioService$BypassReason;->CONSUME_ADJUST_SAME:Lcom/android/server/audio/AudioService$BypassReason;

    new-instance v6, Lcom/android/server/audio/AudioService$BypassReason;

    const-string/jumbo v7, "MULTISOUND"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/android/server/audio/AudioService$BypassReason;->MULTISOUND:Lcom/android/server/audio/AudioService$BypassReason;

    new-instance v7, Lcom/android/server/audio/AudioService$BypassReason;

    const-string/jumbo v8, "MEDIA_VOLUME_STEP_ON"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/android/server/audio/AudioService$BypassReason;->MEDIA_VOLUME_STEP_ON:Lcom/android/server/audio/AudioService$BypassReason;

    new-instance v8, Lcom/android/server/audio/AudioService$BypassReason;

    const-string/jumbo v9, "SKIP_WARNING_POPUP_VISIBLE"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/android/server/audio/AudioService$BypassReason;->SKIP_WARNING_POPUP_VISIBLE:Lcom/android/server/audio/AudioService$BypassReason;

    new-instance v9, Lcom/android/server/audio/AudioService$BypassReason;

    const-string/jumbo v10, "SKIP_VOLUME_PANEL_NOT_VISIBLE"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/android/server/audio/AudioService$BypassReason;->SKIP_VOLUME_PANEL_NOT_VISIBLE:Lcom/android/server/audio/AudioService$BypassReason;

    new-instance v10, Lcom/android/server/audio/AudioService$BypassReason;

    const-string/jumbo v11, "VOLUME_LIMITER"

    const/16 v12, 0xa

    invoke-direct {v10, v11, v12}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/android/server/audio/AudioService$BypassReason;->VOLUME_LIMITER:Lcom/android/server/audio/AudioService$BypassReason;

    new-instance v11, Lcom/android/server/audio/AudioService$BypassReason;

    const-string v12, "LE_BROADCAST"

    const/16 v13, 0xb

    invoke-direct {v11, v12, v13}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/android/server/audio/AudioService$BypassReason;->LE_BROADCAST:Lcom/android/server/audio/AudioService$BypassReason;

    filled-new-array/range {v0 .. v11}, [Lcom/android/server/audio/AudioService$BypassReason;

    move-result-object v0

    sput-object v0, Lcom/android/server/audio/AudioService$BypassReason;->$VALUES:[Lcom/android/server/audio/AudioService$BypassReason;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/audio/AudioService$BypassReason;
    .locals 1

    const-class v0, Lcom/android/server/audio/AudioService$BypassReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/audio/AudioService$BypassReason;

    return-object p0
.end method

.method public static values()[Lcom/android/server/audio/AudioService$BypassReason;
    .locals 1

    sget-object v0, Lcom/android/server/audio/AudioService$BypassReason;->$VALUES:[Lcom/android/server/audio/AudioService$BypassReason;

    invoke-virtual {v0}, [Lcom/android/server/audio/AudioService$BypassReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/audio/AudioService$BypassReason;

    return-object v0
.end method
