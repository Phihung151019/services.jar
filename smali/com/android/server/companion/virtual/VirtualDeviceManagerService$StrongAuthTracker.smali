.class public final Lcom/android/server/companion/virtual/VirtualDeviceManagerService$StrongAuthTracker;
.super Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mUsersInLockdown:Ljava/util/Set;

.field public final synthetic this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$StrongAuthTracker;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    invoke-direct {p0, p2}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$StrongAuthTracker;->mUsersInLockdown:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final declared-synchronized onStrongAuthRequiredChanged(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->getStrongAuthForUser(I)I

    move-result v0

    and-int/lit8 v0, v0, 0x20

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$StrongAuthTracker;->mUsersInLockdown:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    check-cast v0, Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$StrongAuthTracker;->mUsersInLockdown:Ljava/util/Set;

    check-cast p1, Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$StrongAuthTracker;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    invoke-virtual {p1, v0}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->onLockdownChanged(Z)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$StrongAuthTracker;->mUsersInLockdown:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    check-cast v0, Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$StrongAuthTracker;->mUsersInLockdown:Ljava/util/Set;

    check-cast p1, Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$StrongAuthTracker;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->onLockdownChanged(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
