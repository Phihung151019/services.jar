.class public final Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$PackageStateUsers;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mInstalledUsers:Ljava/util/Set;

.field public mPackageState:Lcom/android/server/pm/pkg/PackageStateInternal;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/pkg/PackageStateInternal;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$PackageStateUsers;->mInstalledUsers:Ljava/util/Set;

    iput-object p1, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$PackageStateUsers;->mPackageState:Lcom/android/server/pm/pkg/PackageStateInternal;

    return-void
.end method
