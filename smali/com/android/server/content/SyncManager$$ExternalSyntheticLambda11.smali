.class public final synthetic Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:Lcom/android/server/content/SyncManager$OnUnsyncableAccountCheck;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/android/server/content/SyncManager$OnUnsyncableAccountCheck;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda11;->f$0:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda11;->f$1:Lcom/android/server/content/SyncManager$OnUnsyncableAccountCheck;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda11;->f$0:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda11;->f$1:Lcom/android/server/content/SyncManager$OnUnsyncableAccountCheck;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method
