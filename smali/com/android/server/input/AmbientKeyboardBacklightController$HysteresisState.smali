.class final enum Lcom/android/server/input/AmbientKeyboardBacklightController$HysteresisState;
.super Ljava/lang/Enum;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/input/AmbientKeyboardBacklightController$HysteresisState;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/input/AmbientKeyboardBacklightController$HysteresisState;

.field public static final enum DECREASING:Lcom/android/server/input/AmbientKeyboardBacklightController$HysteresisState;

.field public static final enum IMMEDIATE:Lcom/android/server/input/AmbientKeyboardBacklightController$HysteresisState;

.field public static final enum INCREASING:Lcom/android/server/input/AmbientKeyboardBacklightController$HysteresisState;

.field public static final enum STABLE:Lcom/android/server/input/AmbientKeyboardBacklightController$HysteresisState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/android/server/input/AmbientKeyboardBacklightController$HysteresisState;

    const-string/jumbo v1, "STABLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/input/AmbientKeyboardBacklightController$HysteresisState;->STABLE:Lcom/android/server/input/AmbientKeyboardBacklightController$HysteresisState;

    new-instance v1, Lcom/android/server/input/AmbientKeyboardBacklightController$HysteresisState;

    const-string v2, "DECREASING"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/server/input/AmbientKeyboardBacklightController$HysteresisState;->DECREASING:Lcom/android/server/input/AmbientKeyboardBacklightController$HysteresisState;

    new-instance v2, Lcom/android/server/input/AmbientKeyboardBacklightController$HysteresisState;

    const-string v3, "INCREASING"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/android/server/input/AmbientKeyboardBacklightController$HysteresisState;->INCREASING:Lcom/android/server/input/AmbientKeyboardBacklightController$HysteresisState;

    new-instance v3, Lcom/android/server/input/AmbientKeyboardBacklightController$HysteresisState;

    const-string v4, "IMMEDIATE"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/server/input/AmbientKeyboardBacklightController$HysteresisState;->IMMEDIATE:Lcom/android/server/input/AmbientKeyboardBacklightController$HysteresisState;

    filled-new-array {v0, v1, v2, v3}, [Lcom/android/server/input/AmbientKeyboardBacklightController$HysteresisState;

    move-result-object v0

    sput-object v0, Lcom/android/server/input/AmbientKeyboardBacklightController$HysteresisState;->$VALUES:[Lcom/android/server/input/AmbientKeyboardBacklightController$HysteresisState;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/input/AmbientKeyboardBacklightController$HysteresisState;
    .locals 1

    const-class v0, Lcom/android/server/input/AmbientKeyboardBacklightController$HysteresisState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/input/AmbientKeyboardBacklightController$HysteresisState;

    return-object p0
.end method

.method public static values()[Lcom/android/server/input/AmbientKeyboardBacklightController$HysteresisState;
    .locals 1

    sget-object v0, Lcom/android/server/input/AmbientKeyboardBacklightController$HysteresisState;->$VALUES:[Lcom/android/server/input/AmbientKeyboardBacklightController$HysteresisState;

    invoke-virtual {v0}, [Lcom/android/server/input/AmbientKeyboardBacklightController$HysteresisState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/input/AmbientKeyboardBacklightController$HysteresisState;

    return-object v0
.end method
