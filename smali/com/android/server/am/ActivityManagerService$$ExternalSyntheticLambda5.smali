.class public final synthetic Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/ActivityManagerService;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/ActivityManagerService;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/am/ActivityManagerService;

    iput p2, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda5;->f$1:I

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/am/ActivityManagerService;

    iget p0, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda5;->f$1:I

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService;->mStrictModeCallbacks:Landroid/util/SparseArray;

    monitor-enter v1

    :try_start_0
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStrictModeCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->remove(I)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
