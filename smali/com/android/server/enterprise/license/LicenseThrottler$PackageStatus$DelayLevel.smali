.class final enum Lcom/android/server/enterprise/license/LicenseThrottler$PackageStatus$DelayLevel;
.super Ljava/lang/Enum;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/enterprise/license/LicenseThrottler$PackageStatus$DelayLevel;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/enterprise/license/LicenseThrottler$PackageStatus$DelayLevel;

.field public static final enum LVL1:Lcom/android/server/enterprise/license/LicenseThrottler$PackageStatus$DelayLevel;

.field public static final values:[Lcom/android/server/enterprise/license/LicenseThrottler$PackageStatus$DelayLevel;


# instance fields
.field private final time:J


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/android/server/enterprise/license/LicenseThrottler$PackageStatus$DelayLevel;

    const-wide/32 v1, 0xea60

    const-string v3, "LVL1"

    const/4 v4, 0x0

    invoke-direct {v0, v4, v3, v1, v2}, Lcom/android/server/enterprise/license/LicenseThrottler$PackageStatus$DelayLevel;-><init>(ILjava/lang/String;J)V

    sput-object v0, Lcom/android/server/enterprise/license/LicenseThrottler$PackageStatus$DelayLevel;->LVL1:Lcom/android/server/enterprise/license/LicenseThrottler$PackageStatus$DelayLevel;

    new-instance v1, Lcom/android/server/enterprise/license/LicenseThrottler$PackageStatus$DelayLevel;

    const-wide/32 v2, 0x493e0

    const-string v4, "LVL2"

    const/4 v5, 0x1

    invoke-direct {v1, v5, v4, v2, v3}, Lcom/android/server/enterprise/license/LicenseThrottler$PackageStatus$DelayLevel;-><init>(ILjava/lang/String;J)V

    new-instance v2, Lcom/android/server/enterprise/license/LicenseThrottler$PackageStatus$DelayLevel;

    const-wide/32 v3, 0x16e360

    const-string v5, "LVL3"

    const/4 v6, 0x2

    invoke-direct {v2, v6, v5, v3, v4}, Lcom/android/server/enterprise/license/LicenseThrottler$PackageStatus$DelayLevel;-><init>(ILjava/lang/String;J)V

    new-instance v3, Lcom/android/server/enterprise/license/LicenseThrottler$PackageStatus$DelayLevel;

    const-wide/32 v4, 0x36ee80

    const-string v6, "LVL4"

    const/4 v7, 0x3

    invoke-direct {v3, v7, v6, v4, v5}, Lcom/android/server/enterprise/license/LicenseThrottler$PackageStatus$DelayLevel;-><init>(ILjava/lang/String;J)V

    filled-new-array {v0, v1, v2, v3}, [Lcom/android/server/enterprise/license/LicenseThrottler$PackageStatus$DelayLevel;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/license/LicenseThrottler$PackageStatus$DelayLevel;->$VALUES:[Lcom/android/server/enterprise/license/LicenseThrottler$PackageStatus$DelayLevel;

    invoke-static {}, Lcom/android/server/enterprise/license/LicenseThrottler$PackageStatus$DelayLevel;->values()[Lcom/android/server/enterprise/license/LicenseThrottler$PackageStatus$DelayLevel;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/license/LicenseThrottler$PackageStatus$DelayLevel;->values:[Lcom/android/server/enterprise/license/LicenseThrottler$PackageStatus$DelayLevel;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;J)V
    .locals 0

    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-wide p3, p0, Lcom/android/server/enterprise/license/LicenseThrottler$PackageStatus$DelayLevel;->time:J

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/enterprise/license/LicenseThrottler$PackageStatus$DelayLevel;
    .locals 1

    const-class v0, Lcom/android/server/enterprise/license/LicenseThrottler$PackageStatus$DelayLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/enterprise/license/LicenseThrottler$PackageStatus$DelayLevel;

    return-object p0
.end method

.method public static values()[Lcom/android/server/enterprise/license/LicenseThrottler$PackageStatus$DelayLevel;
    .locals 1

    sget-object v0, Lcom/android/server/enterprise/license/LicenseThrottler$PackageStatus$DelayLevel;->$VALUES:[Lcom/android/server/enterprise/license/LicenseThrottler$PackageStatus$DelayLevel;

    invoke-virtual {v0}, [Lcom/android/server/enterprise/license/LicenseThrottler$PackageStatus$DelayLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/enterprise/license/LicenseThrottler$PackageStatus$DelayLevel;

    return-object v0
.end method


# virtual methods
.method public final getTime()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/enterprise/license/LicenseThrottler$PackageStatus$DelayLevel;->time:J

    return-wide v0
.end method
