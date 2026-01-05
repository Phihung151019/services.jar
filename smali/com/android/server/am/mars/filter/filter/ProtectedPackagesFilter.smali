.class public final Lcom/android/server/am/mars/filter/filter/ProtectedPackagesFilter;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/am/mars/filter/IFilter;


# instance fields
.field public final mProtectedPackages:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/ProtectedPackagesFilter;->mProtectedPackages:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public final deInit()V
    .locals 0

    return-void
.end method

.method public final filter(IIILjava/lang/String;)I
    .locals 0

    iget-object p2, p0, Lcom/android/server/am/mars/filter/filter/ProtectedPackagesFilter;->mProtectedPackages:Landroid/util/SparseArray;

    monitor-enter p2

    :try_start_0
    iget-object p3, p0, Lcom/android/server/am/mars/filter/filter/ProtectedPackagesFilter;->mProtectedPackages:Landroid/util/SparseArray;

    invoke-virtual {p3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/ProtectedPackagesFilter;->mProtectedPackages:Landroid/util/SparseArray;

    const/4 p3, -0x1

    invoke-virtual {p0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    if-eqz p1, :cond_0

    invoke-interface {p1, p4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    if-eqz p0, :cond_2

    invoke-interface {p0, p4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/16 p0, 0x1e

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    monitor-exit p2

    return p0

    :goto_2
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final init(Landroid/content/Context;)V
    .locals 0

    return-void
.end method
