.class public final enum Lcom/android/server/credentials/metrics/OemUiUsageStatus;
.super Ljava/lang/Enum;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/credentials/metrics/OemUiUsageStatus;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/credentials/metrics/OemUiUsageStatus;

.field public static final enum FAILURE_NOT_SPECIFIED:Lcom/android/server/credentials/metrics/OemUiUsageStatus;

.field public static final enum FAILURE_SPECIFIED_BUT_NOT_ENABLED:Lcom/android/server/credentials/metrics/OemUiUsageStatus;

.field public static final enum FAILURE_SPECIFIED_BUT_NOT_FOUND:Lcom/android/server/credentials/metrics/OemUiUsageStatus;

.field public static final enum SUCCESS:Lcom/android/server/credentials/metrics/OemUiUsageStatus;

.field public static final enum UNKNOWN:Lcom/android/server/credentials/metrics/OemUiUsageStatus;


# instance fields
.field private final mLoggingInt:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/android/server/credentials/metrics/OemUiUsageStatus;

    const-string/jumbo v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/server/credentials/metrics/OemUiUsageStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/credentials/metrics/OemUiUsageStatus;->UNKNOWN:Lcom/android/server/credentials/metrics/OemUiUsageStatus;

    new-instance v1, Lcom/android/server/credentials/metrics/OemUiUsageStatus;

    const-string/jumbo v2, "SUCCESS"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/android/server/credentials/metrics/OemUiUsageStatus;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/server/credentials/metrics/OemUiUsageStatus;->SUCCESS:Lcom/android/server/credentials/metrics/OemUiUsageStatus;

    new-instance v2, Lcom/android/server/credentials/metrics/OemUiUsageStatus;

    const-string v3, "FAILURE_NOT_SPECIFIED"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/android/server/credentials/metrics/OemUiUsageStatus;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/server/credentials/metrics/OemUiUsageStatus;->FAILURE_NOT_SPECIFIED:Lcom/android/server/credentials/metrics/OemUiUsageStatus;

    new-instance v3, Lcom/android/server/credentials/metrics/OemUiUsageStatus;

    const-string v4, "FAILURE_SPECIFIED_BUT_NOT_FOUND"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lcom/android/server/credentials/metrics/OemUiUsageStatus;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/android/server/credentials/metrics/OemUiUsageStatus;->FAILURE_SPECIFIED_BUT_NOT_FOUND:Lcom/android/server/credentials/metrics/OemUiUsageStatus;

    new-instance v4, Lcom/android/server/credentials/metrics/OemUiUsageStatus;

    const-string v5, "FAILURE_SPECIFIED_BUT_NOT_ENABLED"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6, v6}, Lcom/android/server/credentials/metrics/OemUiUsageStatus;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/server/credentials/metrics/OemUiUsageStatus;->FAILURE_SPECIFIED_BUT_NOT_ENABLED:Lcom/android/server/credentials/metrics/OemUiUsageStatus;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/android/server/credentials/metrics/OemUiUsageStatus;

    move-result-object v0

    sput-object v0, Lcom/android/server/credentials/metrics/OemUiUsageStatus;->$VALUES:[Lcom/android/server/credentials/metrics/OemUiUsageStatus;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/android/server/credentials/metrics/OemUiUsageStatus;->mLoggingInt:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/credentials/metrics/OemUiUsageStatus;
    .locals 1

    const-class v0, Lcom/android/server/credentials/metrics/OemUiUsageStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/credentials/metrics/OemUiUsageStatus;

    return-object p0
.end method

.method public static values()[Lcom/android/server/credentials/metrics/OemUiUsageStatus;
    .locals 1

    sget-object v0, Lcom/android/server/credentials/metrics/OemUiUsageStatus;->$VALUES:[Lcom/android/server/credentials/metrics/OemUiUsageStatus;

    invoke-virtual {v0}, [Lcom/android/server/credentials/metrics/OemUiUsageStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/credentials/metrics/OemUiUsageStatus;

    return-object v0
.end method


# virtual methods
.method public final getLoggingInt()I
    .locals 0

    iget p0, p0, Lcom/android/server/credentials/metrics/OemUiUsageStatus;->mLoggingInt:I

    return p0
.end method
