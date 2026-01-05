.class public final synthetic Lcom/android/server/content/ContentService$ObserverCollector$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/content/ContentService$ObserverCollector$Key;

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/content/ContentService$ObserverCollector$Key;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/content/ContentService$ObserverCollector$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/content/ContentService$ObserverCollector$Key;

    iput-object p2, p0, Lcom/android/server/content/ContentService$ObserverCollector$$ExternalSyntheticLambda0;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/content/ContentService$ObserverCollector$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/content/ContentService$ObserverCollector$Key;

    iget-object p0, p0, Lcom/android/server/content/ContentService$ObserverCollector$$ExternalSyntheticLambda0;->f$1:Ljava/util/List;

    :try_start_0
    iget-object v1, v0, Lcom/android/server/content/ContentService$ObserverCollector$Key;->observer:Landroid/database/IContentObserver;

    iget-boolean v2, v0, Lcom/android/server/content/ContentService$ObserverCollector$Key;->selfChange:Z

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Landroid/net/Uri;

    invoke-interface {p0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/net/Uri;

    iget v3, v0, Lcom/android/server/content/ContentService$ObserverCollector$Key;->flags:I

    iget v0, v0, Lcom/android/server/content/ContentService$ObserverCollector$Key;->userId:I

    invoke-interface {v1, v2, p0, v3, v0}, Landroid/database/IContentObserver;->onChangeEtc(Z[Landroid/net/Uri;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
