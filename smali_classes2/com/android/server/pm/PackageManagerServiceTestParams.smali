.class public final Lcom/android/server/pm/PackageManagerServiceTestParams;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final changedPackagesTracker:Lcom/android/server/pm/ChangedPackagesTracker;

.field public final initialNonStoppedSystemPackages:Ljava/util/Set;

.field public final priorSdkVersion:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/pm/ChangedPackagesTracker;

    invoke-direct {v0}, Lcom/android/server/pm/ChangedPackagesTracker;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerServiceTestParams;->changedPackagesTracker:Lcom/android/server/pm/ChangedPackagesTracker;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/pm/PackageManagerServiceTestParams;->priorSdkVersion:I

    sget-object v0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerServiceTestParams;->initialNonStoppedSystemPackages:Ljava/util/Set;

    return-void
.end method
