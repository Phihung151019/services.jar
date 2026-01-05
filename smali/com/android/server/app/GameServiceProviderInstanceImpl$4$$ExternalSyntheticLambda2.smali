.class public final synthetic Lcom/android/server/app/GameServiceProviderInstanceImpl$4$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/app/GameServiceProviderInstanceImpl$4;

.field public final synthetic f$1:I

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/app/GameServiceProviderInstanceImpl$4;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$4$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/app/GameServiceProviderInstanceImpl$4;

    iput p2, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$4$$ExternalSyntheticLambda2;->f$1:I

    iput-boolean p3, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$4$$ExternalSyntheticLambda2;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$4$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/app/GameServiceProviderInstanceImpl$4;

    iget v1, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$4$$ExternalSyntheticLambda2;->f$1:I

    iget-boolean p0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$4$$ExternalSyntheticLambda2;->f$2:Z

    iget-object v0, v0, Lcom/android/server/app/GameServiceProviderInstanceImpl$4;->this$0:Lcom/android/server/app/GameServiceProviderInstanceImpl;

    iget-object v2, v0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-virtual {v0, v1, p0}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->onTaskFocusChangedLocked(IZ)V

    monitor-exit v2

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
