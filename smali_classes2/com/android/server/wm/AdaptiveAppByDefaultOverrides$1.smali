.class public final Lcom/android/server/wm/AdaptiveAppByDefaultOverrides$1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/wm/PackagesChange$PackagesUserChangeCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/AdaptiveAppByDefaultOverrides;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/AdaptiveAppByDefaultOverrides;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/AdaptiveAppByDefaultOverrides$1;->this$0:Lcom/android/server/wm/AdaptiveAppByDefaultOverrides;

    return-void
.end method


# virtual methods
.method public final dumpUserChanges(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/AdaptiveAppByDefaultOverrides$1;->this$0:Lcom/android/server/wm/AdaptiveAppByDefaultOverrides;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/AdaptiveAppByDefaultOverrides$1;->this$0:Lcom/android/server/wm/AdaptiveAppByDefaultOverrides;

    iget-object p0, p0, Lcom/android/server/wm/AdaptiveAppByDefaultOverrides;->mDevOverrides:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;

    const-string v1, "AdaptiveAppByDefaultDevOverrides"

    invoke-virtual {p0, p1, v1, p2}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final initializeUserOverride(ILjava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/AdaptiveAppByDefaultOverrides$1;->this$0:Lcom/android/server/wm/AdaptiveAppByDefaultOverrides;

    const/4 p1, 0x0

    invoke-virtual {p0, p2, p1}, Lcom/android/server/wm/AdaptiveAppByDefaultOverrides;->setDevOverride(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public final onSystemReady()V
    .locals 0

    return-void
.end method

.method public final resetAllIfNeeded(II)V
    .locals 1

    iget-object p1, p0, Lcom/android/server/wm/AdaptiveAppByDefaultOverrides$1;->this$0:Lcom/android/server/wm/AdaptiveAppByDefaultOverrides;

    monitor-enter p1

    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/AdaptiveAppByDefaultOverrides$1;->this$0:Lcom/android/server/wm/AdaptiveAppByDefaultOverrides;

    iget-object p0, p0, Lcom/android/server/wm/AdaptiveAppByDefaultOverrides;->mDevOverrides:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;

    iget v0, p0, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;->mIdentityFlag:I

    and-int/2addr p2, v0

    if-ne p2, v0, :cond_0

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;->reset(I)V

    :cond_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
