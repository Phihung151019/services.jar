.class public final Lcom/android/server/pm/PerPackageReadTimeouts;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final packageName:Ljava/lang/String;

.field public final sha256certificate:[B

.field public final timeouts:Lcom/android/server/pm/PerPackageReadTimeouts$Timeouts;

.field public final versionCodes:Lcom/android/server/pm/PerPackageReadTimeouts$VersionCodes;


# direct methods
.method public constructor <init>(Ljava/lang/String;[BLcom/android/server/pm/PerPackageReadTimeouts$VersionCodes;Lcom/android/server/pm/PerPackageReadTimeouts$Timeouts;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/PerPackageReadTimeouts;->packageName:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/pm/PerPackageReadTimeouts;->sha256certificate:[B

    iput-object p3, p0, Lcom/android/server/pm/PerPackageReadTimeouts;->versionCodes:Lcom/android/server/pm/PerPackageReadTimeouts$VersionCodes;

    iput-object p4, p0, Lcom/android/server/pm/PerPackageReadTimeouts;->timeouts:Lcom/android/server/pm/PerPackageReadTimeouts$Timeouts;

    return-void
.end method
