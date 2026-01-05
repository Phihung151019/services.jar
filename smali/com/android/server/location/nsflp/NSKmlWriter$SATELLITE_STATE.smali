.class final enum Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;
.super Ljava/lang/Enum;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;

.field public static final enum DEEP_INDOOR:Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;

.field public static final enum MILD_INDOOR:Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;

.field public static final enum NO_SATELLITE:Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;

.field public static final enum OUTDOOR:Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;

.field public static final enum SHADOW:Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;


# instance fields
.field private simpleKeyword:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;

    const-string/jumbo v1, "in"

    const-string v2, "INIT"

    const/4 v3, 0x0

    invoke-direct {v0, v3, v2, v1}, Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;

    const-string/jumbo v2, "no"

    const-string/jumbo v3, "NO_SATELLITE"

    const/4 v4, 0x1

    invoke-direct {v1, v4, v3, v2}, Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;->NO_SATELLITE:Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;

    new-instance v2, Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;

    const-string/jumbo v3, "sh"

    const-string/jumbo v4, "SHADOW"

    const/4 v5, 0x2

    invoke-direct {v2, v5, v4, v3}, Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;->SHADOW:Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;

    new-instance v3, Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;

    const-string/jumbo v4, "di"

    const-string v5, "DEEP_INDOOR"

    const/4 v6, 0x3

    invoke-direct {v3, v6, v5, v4}, Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;->DEEP_INDOOR:Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;

    new-instance v4, Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;

    const-string/jumbo v5, "mi"

    const-string/jumbo v6, "MILD_INDOOR"

    const/4 v7, 0x4

    invoke-direct {v4, v7, v6, v5}, Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v4, Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;->MILD_INDOOR:Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;

    new-instance v5, Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;

    const-string/jumbo v6, "od"

    const-string/jumbo v7, "OUTDOOR"

    const/4 v8, 0x5

    invoke-direct {v5, v8, v7, v6}, Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v5, Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;->OUTDOOR:Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;

    filled-new-array/range {v0 .. v5}, [Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;

    move-result-object v0

    sput-object v0, Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;->$VALUES:[Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;->simpleKeyword:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;
    .locals 1

    const-class v0, Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;

    return-object p0
.end method

.method public static values()[Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;
    .locals 1

    sget-object v0, Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;->$VALUES:[Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;

    invoke-virtual {v0}, [Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;

    return-object v0
.end method
