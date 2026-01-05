.class public final synthetic Lcom/android/server/wm/BLASTSyncEngine$SyncGroup$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/view/SurfaceControl$TransactionCommittedListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/BLASTSyncEngine$SyncGroup$1CommitCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/BLASTSyncEngine$SyncGroup$1CommitCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/BLASTSyncEngine$SyncGroup$1CommitCallback;

    return-void
.end method


# virtual methods
.method public final onTransactionCommitted()V
    .locals 1

    iget-object p0, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/BLASTSyncEngine$SyncGroup$1CommitCallback;

    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup$1CommitCallback;->onCommitted(Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method
