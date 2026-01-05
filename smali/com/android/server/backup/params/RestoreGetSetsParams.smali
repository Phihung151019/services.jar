.class public final Lcom/android/server/backup/params/RestoreGetSetsParams;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final listener:Lcom/android/server/backup/restore/ActiveRestoreSession$$ExternalSyntheticLambda0;

.field public final mTransportConnection:Lcom/android/server/backup/transport/TransportConnection;

.field public final observer:Landroid/app/backup/IRestoreObserver;

.field public final session:Lcom/android/server/backup/restore/ActiveRestoreSession;


# direct methods
.method public constructor <init>(Lcom/android/server/backup/transport/TransportConnection;Lcom/android/server/backup/restore/ActiveRestoreSession;Landroid/app/backup/IRestoreObserver;Lcom/android/server/backup/restore/ActiveRestoreSession$$ExternalSyntheticLambda0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/backup/params/RestoreGetSetsParams;->mTransportConnection:Lcom/android/server/backup/transport/TransportConnection;

    iput-object p2, p0, Lcom/android/server/backup/params/RestoreGetSetsParams;->session:Lcom/android/server/backup/restore/ActiveRestoreSession;

    iput-object p3, p0, Lcom/android/server/backup/params/RestoreGetSetsParams;->observer:Landroid/app/backup/IRestoreObserver;

    iput-object p4, p0, Lcom/android/server/backup/params/RestoreGetSetsParams;->listener:Lcom/android/server/backup/restore/ActiveRestoreSession$$ExternalSyntheticLambda0;

    return-void
.end method
