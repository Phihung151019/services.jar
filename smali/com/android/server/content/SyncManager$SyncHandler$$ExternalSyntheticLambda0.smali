.class public final synthetic Lcom/android/server/content/SyncManager$SyncHandler$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/os/RemoteCallback$OnResultListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/content/SyncManager$SyncHandler;

.field public final synthetic f$1:Lcom/android/server/content/SyncStorageEngine$EndPoint;

.field public final synthetic f$2:J

.field public final synthetic f$3:J

.field public final synthetic f$4:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/content/SyncManager$SyncHandler;Lcom/android/server/content/SyncStorageEngine$EndPoint;JJLandroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/content/SyncManager$SyncHandler$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/content/SyncManager$SyncHandler;

    iput-object p2, p0, Lcom/android/server/content/SyncManager$SyncHandler$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iput-wide p3, p0, Lcom/android/server/content/SyncManager$SyncHandler$$ExternalSyntheticLambda0;->f$2:J

    iput-wide p5, p0, Lcom/android/server/content/SyncManager$SyncHandler$$ExternalSyntheticLambda0;->f$3:J

    iput-object p7, p0, Lcom/android/server/content/SyncManager$SyncHandler$$ExternalSyntheticLambda0;->f$4:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final onResult(Landroid/os/Bundle;)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/content/SyncManager$SyncHandler;

    iget-object v2, p0, Lcom/android/server/content/SyncManager$SyncHandler$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-wide v3, p0, Lcom/android/server/content/SyncManager$SyncHandler$$ExternalSyntheticLambda0;->f$2:J

    iget-wide v5, p0, Lcom/android/server/content/SyncManager$SyncHandler$$ExternalSyntheticLambda0;->f$3:J

    iget-object v7, p0, Lcom/android/server/content/SyncManager$SyncHandler$$ExternalSyntheticLambda0;->f$4:Landroid/os/Bundle;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p1, :cond_0

    const-string/jumbo p0, "booleanResult"

    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    iget-object v1, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/content/SyncManager;->updateOrAddPeriodicSync(Lcom/android/server/content/SyncStorageEngine$EndPoint;JJLandroid/os/Bundle;)V

    :cond_0
    return-void
.end method
