.class final enum Lcom/android/server/location/nsflp/NSLocationMonitor$ALGORITHM_TYPE;
.super Ljava/lang/Enum;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/location/nsflp/NSLocationMonitor$ALGORITHM_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/location/nsflp/NSLocationMonitor$ALGORITHM_TYPE;

.field public static final enum NEW:Lcom/android/server/location/nsflp/NSLocationMonitor$ALGORITHM_TYPE;

.field public static final enum NOT_SUPPORT:Lcom/android/server/location/nsflp/NSLocationMonitor$ALGORITHM_TYPE;

.field public static final enum OLD:Lcom/android/server/location/nsflp/NSLocationMonitor$ALGORITHM_TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/android/server/location/nsflp/NSLocationMonitor$ALGORITHM_TYPE;

    const-string/jumbo v1, "NOT_SUPPORT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/location/nsflp/NSLocationMonitor$ALGORITHM_TYPE;->NOT_SUPPORT:Lcom/android/server/location/nsflp/NSLocationMonitor$ALGORITHM_TYPE;

    new-instance v1, Lcom/android/server/location/nsflp/NSLocationMonitor$ALGORITHM_TYPE;

    const-string/jumbo v2, "OLD"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/server/location/nsflp/NSLocationMonitor$ALGORITHM_TYPE;->OLD:Lcom/android/server/location/nsflp/NSLocationMonitor$ALGORITHM_TYPE;

    new-instance v2, Lcom/android/server/location/nsflp/NSLocationMonitor$ALGORITHM_TYPE;

    const-string/jumbo v3, "NEW"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/android/server/location/nsflp/NSLocationMonitor$ALGORITHM_TYPE;->NEW:Lcom/android/server/location/nsflp/NSLocationMonitor$ALGORITHM_TYPE;

    filled-new-array {v0, v1, v2}, [Lcom/android/server/location/nsflp/NSLocationMonitor$ALGORITHM_TYPE;

    move-result-object v0

    sput-object v0, Lcom/android/server/location/nsflp/NSLocationMonitor$ALGORITHM_TYPE;->$VALUES:[Lcom/android/server/location/nsflp/NSLocationMonitor$ALGORITHM_TYPE;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/location/nsflp/NSLocationMonitor$ALGORITHM_TYPE;
    .locals 1

    const-class v0, Lcom/android/server/location/nsflp/NSLocationMonitor$ALGORITHM_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/location/nsflp/NSLocationMonitor$ALGORITHM_TYPE;

    return-object p0
.end method

.method public static values()[Lcom/android/server/location/nsflp/NSLocationMonitor$ALGORITHM_TYPE;
    .locals 1

    sget-object v0, Lcom/android/server/location/nsflp/NSLocationMonitor$ALGORITHM_TYPE;->$VALUES:[Lcom/android/server/location/nsflp/NSLocationMonitor$ALGORITHM_TYPE;

    invoke-virtual {v0}, [Lcom/android/server/location/nsflp/NSLocationMonitor$ALGORITHM_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/location/nsflp/NSLocationMonitor$ALGORITHM_TYPE;

    return-object v0
.end method
