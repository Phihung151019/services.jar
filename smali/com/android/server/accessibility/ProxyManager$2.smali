.class public final Lcom/android/server/accessibility/ProxyManager$2;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/companion/virtual/VirtualDeviceManager$VirtualDeviceListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/accessibility/ProxyManager;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/ProxyManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/accessibility/ProxyManager$2;->this$0:Lcom/android/server/accessibility/ProxyManager;

    return-void
.end method


# virtual methods
.method public final onVirtualDeviceClosed(I)V
    .locals 6

    iget-object p0, p0, Lcom/android/server/accessibility/ProxyManager$2;->this$0:Lcom/android/server/accessibility/ProxyManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    iget-object v1, p0, Lcom/android/server/accessibility/ProxyManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/android/server/accessibility/ProxyManager;->mProxyA11yServiceConnections:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    iget-object v4, p0, Lcom/android/server/accessibility/ProxyManager;->mProxyA11yServiceConnections:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;

    if-eqz v4, :cond_0

    iget v5, v4, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->mDeviceId:I

    if-ne v5, p1, :cond_0

    iget v4, v4, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->mDisplayId:I

    invoke-virtual {v0, v4}, Landroid/util/IntArray;->add(I)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    invoke-virtual {v0}, Landroid/util/IntArray;->size()I

    move-result p1

    if-ge v2, p1, :cond_2

    invoke-virtual {v0, v2}, Landroid/util/IntArray;->get(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/ProxyManager;->clearConnectionAndUpdateState(I)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    return-void

    :goto_3
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
