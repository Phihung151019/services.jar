.class public final enum Lcom/android/server/credentials/metrics/ApiStatus;
.super Ljava/lang/Enum;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/credentials/metrics/ApiStatus;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/credentials/metrics/ApiStatus;

.field public static final enum BINDER_DIED:Lcom/android/server/credentials/metrics/ApiStatus;

.field public static final enum CLIENT_CANCELED:Lcom/android/server/credentials/metrics/ApiStatus;

.field public static final enum FAILURE:Lcom/android/server/credentials/metrics/ApiStatus;

.field public static final enum SUCCESS:Lcom/android/server/credentials/metrics/ApiStatus;

.field public static final enum USER_CANCELED:Lcom/android/server/credentials/metrics/ApiStatus;


# instance fields
.field private final mInnerMetricCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/android/server/credentials/metrics/ApiStatus;

    const-string/jumbo v1, "SUCCESS"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/credentials/metrics/ApiStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/credentials/metrics/ApiStatus;->SUCCESS:Lcom/android/server/credentials/metrics/ApiStatus;

    new-instance v1, Lcom/android/server/credentials/metrics/ApiStatus;

    const-string v2, "FAILURE"

    const/4 v4, 0x2

    invoke-direct {v1, v2, v3, v4}, Lcom/android/server/credentials/metrics/ApiStatus;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/server/credentials/metrics/ApiStatus;->FAILURE:Lcom/android/server/credentials/metrics/ApiStatus;

    new-instance v2, Lcom/android/server/credentials/metrics/ApiStatus;

    const-string v3, "CLIENT_CANCELED"

    const/4 v5, 0x4

    invoke-direct {v2, v3, v4, v5}, Lcom/android/server/credentials/metrics/ApiStatus;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/server/credentials/metrics/ApiStatus;->CLIENT_CANCELED:Lcom/android/server/credentials/metrics/ApiStatus;

    new-instance v3, Lcom/android/server/credentials/metrics/ApiStatus;

    const-string/jumbo v4, "USER_CANCELED"

    const/4 v6, 0x3

    invoke-direct {v3, v4, v6, v6}, Lcom/android/server/credentials/metrics/ApiStatus;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/android/server/credentials/metrics/ApiStatus;->USER_CANCELED:Lcom/android/server/credentials/metrics/ApiStatus;

    new-instance v4, Lcom/android/server/credentials/metrics/ApiStatus;

    const-string v6, "BINDER_DIED"

    const/4 v7, 0x5

    invoke-direct {v4, v6, v5, v7}, Lcom/android/server/credentials/metrics/ApiStatus;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/server/credentials/metrics/ApiStatus;->BINDER_DIED:Lcom/android/server/credentials/metrics/ApiStatus;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/android/server/credentials/metrics/ApiStatus;

    move-result-object v0

    sput-object v0, Lcom/android/server/credentials/metrics/ApiStatus;->$VALUES:[Lcom/android/server/credentials/metrics/ApiStatus;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/android/server/credentials/metrics/ApiStatus;->mInnerMetricCode:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/credentials/metrics/ApiStatus;
    .locals 1

    const-class v0, Lcom/android/server/credentials/metrics/ApiStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/credentials/metrics/ApiStatus;

    return-object p0
.end method

.method public static values()[Lcom/android/server/credentials/metrics/ApiStatus;
    .locals 1

    sget-object v0, Lcom/android/server/credentials/metrics/ApiStatus;->$VALUES:[Lcom/android/server/credentials/metrics/ApiStatus;

    invoke-virtual {v0}, [Lcom/android/server/credentials/metrics/ApiStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/credentials/metrics/ApiStatus;

    return-object v0
.end method


# virtual methods
.method public final getMetricCode()I
    .locals 0

    iget p0, p0, Lcom/android/server/credentials/metrics/ApiStatus;->mInnerMetricCode:I

    return p0
.end method
