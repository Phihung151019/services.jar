.class public final enum Lcom/android/server/broadcastradio/aidl/Utils$FrequencyBand;
.super Ljava/lang/Enum;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/broadcastradio/aidl/Utils$FrequencyBand;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/broadcastradio/aidl/Utils$FrequencyBand;

.field public static final enum AM_LW:Lcom/android/server/broadcastradio/aidl/Utils$FrequencyBand;

.field public static final enum AM_MW:Lcom/android/server/broadcastradio/aidl/Utils$FrequencyBand;

.field public static final enum AM_SW:Lcom/android/server/broadcastradio/aidl/Utils$FrequencyBand;

.field public static final enum FM:Lcom/android/server/broadcastradio/aidl/Utils$FrequencyBand;

.field public static final enum UNKNOWN:Lcom/android/server/broadcastradio/aidl/Utils$FrequencyBand;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/android/server/broadcastradio/aidl/Utils$FrequencyBand;

    const-string/jumbo v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/broadcastradio/aidl/Utils$FrequencyBand;->UNKNOWN:Lcom/android/server/broadcastradio/aidl/Utils$FrequencyBand;

    new-instance v1, Lcom/android/server/broadcastradio/aidl/Utils$FrequencyBand;

    const-string v2, "FM"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/server/broadcastradio/aidl/Utils$FrequencyBand;->FM:Lcom/android/server/broadcastradio/aidl/Utils$FrequencyBand;

    new-instance v2, Lcom/android/server/broadcastradio/aidl/Utils$FrequencyBand;

    const-string v3, "AM_LW"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/android/server/broadcastradio/aidl/Utils$FrequencyBand;->AM_LW:Lcom/android/server/broadcastradio/aidl/Utils$FrequencyBand;

    new-instance v3, Lcom/android/server/broadcastradio/aidl/Utils$FrequencyBand;

    const-string v4, "AM_MW"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/server/broadcastradio/aidl/Utils$FrequencyBand;->AM_MW:Lcom/android/server/broadcastradio/aidl/Utils$FrequencyBand;

    new-instance v4, Lcom/android/server/broadcastradio/aidl/Utils$FrequencyBand;

    const-string v5, "AM_SW"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/android/server/broadcastradio/aidl/Utils$FrequencyBand;->AM_SW:Lcom/android/server/broadcastradio/aidl/Utils$FrequencyBand;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/android/server/broadcastradio/aidl/Utils$FrequencyBand;

    move-result-object v0

    sput-object v0, Lcom/android/server/broadcastradio/aidl/Utils$FrequencyBand;->$VALUES:[Lcom/android/server/broadcastradio/aidl/Utils$FrequencyBand;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/broadcastradio/aidl/Utils$FrequencyBand;
    .locals 1

    const-class v0, Lcom/android/server/broadcastradio/aidl/Utils$FrequencyBand;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/broadcastradio/aidl/Utils$FrequencyBand;

    return-object p0
.end method

.method public static values()[Lcom/android/server/broadcastradio/aidl/Utils$FrequencyBand;
    .locals 1

    sget-object v0, Lcom/android/server/broadcastradio/aidl/Utils$FrequencyBand;->$VALUES:[Lcom/android/server/broadcastradio/aidl/Utils$FrequencyBand;

    invoke-virtual {v0}, [Lcom/android/server/broadcastradio/aidl/Utils$FrequencyBand;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/broadcastradio/aidl/Utils$FrequencyBand;

    return-object v0
.end method
