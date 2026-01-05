.class public final enum Lcom/android/server/credentials/metrics/ProviderStatusForMetrics;
.super Ljava/lang/Enum;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/credentials/metrics/ProviderStatusForMetrics;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/credentials/metrics/ProviderStatusForMetrics;

.field public static final enum FINAL_FAILURE:Lcom/android/server/credentials/metrics/ProviderStatusForMetrics;

.field public static final enum FINAL_SUCCESS:Lcom/android/server/credentials/metrics/ProviderStatusForMetrics;

.field public static final enum QUERY_FAILURE:Lcom/android/server/credentials/metrics/ProviderStatusForMetrics;

.field public static final enum QUERY_SUCCESS:Lcom/android/server/credentials/metrics/ProviderStatusForMetrics;


# instance fields
.field private final mInnerMetricCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/android/server/credentials/metrics/ProviderStatusForMetrics;

    const-string/jumbo v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/server/credentials/metrics/ProviderStatusForMetrics;-><init>(Ljava/lang/String;II)V

    new-instance v1, Lcom/android/server/credentials/metrics/ProviderStatusForMetrics;

    const-string v2, "FINAL_FAILURE"

    const/4 v3, 0x1

    const/4 v4, 0x4

    invoke-direct {v1, v2, v3, v4}, Lcom/android/server/credentials/metrics/ProviderStatusForMetrics;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/server/credentials/metrics/ProviderStatusForMetrics;->FINAL_FAILURE:Lcom/android/server/credentials/metrics/ProviderStatusForMetrics;

    new-instance v2, Lcom/android/server/credentials/metrics/ProviderStatusForMetrics;

    const-string/jumbo v5, "QUERY_FAILURE"

    const/4 v6, 0x2

    const/4 v7, 0x3

    invoke-direct {v2, v5, v6, v7}, Lcom/android/server/credentials/metrics/ProviderStatusForMetrics;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/server/credentials/metrics/ProviderStatusForMetrics;->QUERY_FAILURE:Lcom/android/server/credentials/metrics/ProviderStatusForMetrics;

    new-instance v5, Lcom/android/server/credentials/metrics/ProviderStatusForMetrics;

    const-string v8, "FINAL_SUCCESS"

    invoke-direct {v5, v8, v7, v6}, Lcom/android/server/credentials/metrics/ProviderStatusForMetrics;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/android/server/credentials/metrics/ProviderStatusForMetrics;->FINAL_SUCCESS:Lcom/android/server/credentials/metrics/ProviderStatusForMetrics;

    new-instance v6, Lcom/android/server/credentials/metrics/ProviderStatusForMetrics;

    const-string/jumbo v7, "QUERY_SUCCESS"

    invoke-direct {v6, v7, v4, v3}, Lcom/android/server/credentials/metrics/ProviderStatusForMetrics;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/android/server/credentials/metrics/ProviderStatusForMetrics;->QUERY_SUCCESS:Lcom/android/server/credentials/metrics/ProviderStatusForMetrics;

    filled-new-array {v0, v1, v2, v5, v6}, [Lcom/android/server/credentials/metrics/ProviderStatusForMetrics;

    move-result-object v0

    sput-object v0, Lcom/android/server/credentials/metrics/ProviderStatusForMetrics;->$VALUES:[Lcom/android/server/credentials/metrics/ProviderStatusForMetrics;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/android/server/credentials/metrics/ProviderStatusForMetrics;->mInnerMetricCode:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/credentials/metrics/ProviderStatusForMetrics;
    .locals 1

    const-class v0, Lcom/android/server/credentials/metrics/ProviderStatusForMetrics;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/credentials/metrics/ProviderStatusForMetrics;

    return-object p0
.end method

.method public static values()[Lcom/android/server/credentials/metrics/ProviderStatusForMetrics;
    .locals 1

    sget-object v0, Lcom/android/server/credentials/metrics/ProviderStatusForMetrics;->$VALUES:[Lcom/android/server/credentials/metrics/ProviderStatusForMetrics;

    invoke-virtual {v0}, [Lcom/android/server/credentials/metrics/ProviderStatusForMetrics;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/credentials/metrics/ProviderStatusForMetrics;

    return-object v0
.end method


# virtual methods
.method public final getMetricCode()I
    .locals 0

    iget p0, p0, Lcom/android/server/credentials/metrics/ProviderStatusForMetrics;->mInnerMetricCode:I

    return p0
.end method
