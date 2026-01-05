.class public final synthetic Lcom/android/server/am/UserController$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/UserController;

.field public final synthetic f$1:Lcom/android/server/am/UserState;

.field public final synthetic f$2:I

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/UserController;Lcom/android/server/am/UserState;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/am/UserController;

    iput-object p2, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda8;->f$1:Lcom/android/server/am/UserState;

    iput p3, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda8;->f$2:I

    iput p4, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda8;->f$3:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/am/UserController;

    iget-object v1, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda8;->f$1:Lcom/android/server/am/UserState;

    iget v2, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda8;->f$2:I

    iget p0, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda8;->f$3:I

    iget-object v3, v0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    invoke-virtual {v0, v1, v2, p0}, Lcom/android/server/am/UserController;->sendContinueUserSwitchLU(Lcom/android/server/am/UserState;II)V

    monitor-exit v3

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
