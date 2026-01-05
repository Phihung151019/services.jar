.class public final synthetic Lcom/android/server/credentials/GetRequestSession$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/credentials/GetRequestSession;

.field public final synthetic f$1:Landroid/content/ComponentName;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/credentials/GetRequestSession;Landroid/content/ComponentName;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/credentials/GetRequestSession$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/credentials/GetRequestSession;

    iput-object p2, p0, Lcom/android/server/credentials/GetRequestSession$$ExternalSyntheticLambda0;->f$1:Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/credentials/GetRequestSession$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/credentials/GetRequestSession;

    iget-object p0, p0, Lcom/android/server/credentials/GetRequestSession$$ExternalSyntheticLambda0;->f$1:Landroid/content/ComponentName;

    check-cast p1, Ljava/lang/String;

    iget-object v0, v0, Lcom/android/server/credentials/RequestSession;->mProviders:Ljava/util/Map;

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/credentials/ProviderGetSession;

    iget-object v0, p1, Lcom/android/server/credentials/ProviderSession;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, p0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    iget-object p0, p1, Lcom/android/server/credentials/ProviderGetSession;->mProviderResponseDataHandler:Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;

    invoke-virtual {p0}, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;->updatePreviousMostRecentAuthEntry()V

    :cond_0
    return-void
.end method
