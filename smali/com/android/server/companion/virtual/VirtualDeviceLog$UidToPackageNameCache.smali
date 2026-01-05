.class public final Lcom/android/server/companion/virtual/VirtualDeviceLog$UidToPackageNameCache;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mPackageManager:Landroid/content/pm/PackageManager;

.field public final mUidToPackagesCache:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceLog$UidToPackageNameCache;->mUidToPackagesCache:Landroid/util/SparseArray;

    iput-object p1, p0, Lcom/android/server/companion/virtual/VirtualDeviceLog$UidToPackageNameCache;->mPackageManager:Landroid/content/pm/PackageManager;

    return-void
.end method
