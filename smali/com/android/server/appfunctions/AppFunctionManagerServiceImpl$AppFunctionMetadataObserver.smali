.class public final Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$AppFunctionMetadataObserver;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/app/appsearch/observer/ObserverCallback;


# instance fields
.field public final mPerUserMetadataSyncAdapter:Lcom/android/server/appfunctions/MetadataSyncAdapter;


# direct methods
.method public constructor <init>(Landroid/os/UserHandle;Landroid/content/Context;Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1, p2, p3}, Lcom/android/server/appfunctions/MetadataSyncPerUser;->getPerUserMetadataSyncAdapter(Landroid/os/UserHandle;Landroid/content/Context;Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager;)Lcom/android/server/appfunctions/MetadataSyncAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$AppFunctionMetadataObserver;->mPerUserMetadataSyncAdapter:Lcom/android/server/appfunctions/MetadataSyncAdapter;

    return-void
.end method


# virtual methods
.method public final onDocumentChanged(Landroid/app/appsearch/observer/DocumentChangeInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$AppFunctionMetadataObserver;->mPerUserMetadataSyncAdapter:Lcom/android/server/appfunctions/MetadataSyncAdapter;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/app/appsearch/observer/DocumentChangeInfo;->getDatabaseName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "apps-db"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/app/appsearch/observer/DocumentChangeInfo;->getNamespace()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "app_functions"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$AppFunctionMetadataObserver;->mPerUserMetadataSyncAdapter:Lcom/android/server/appfunctions/MetadataSyncAdapter;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/appfunctions/MetadataSyncAdapter;->submitSyncRequest(Z)Lcom/android/internal/infra/AndroidFuture;

    :cond_1
    :goto_0
    return-void
.end method

.method public final onSchemaChanged(Landroid/app/appsearch/observer/SchemaChangeInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$AppFunctionMetadataObserver;->mPerUserMetadataSyncAdapter:Lcom/android/server/appfunctions/MetadataSyncAdapter;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/app/appsearch/observer/SchemaChangeInfo;->getDatabaseName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "apps-db"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/app/appsearch/observer/SchemaChangeInfo;->getChangedSchemaNames()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "AppFunctionStaticMetadata"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$AppFunctionMetadataObserver;->mPerUserMetadataSyncAdapter:Lcom/android/server/appfunctions/MetadataSyncAdapter;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/appfunctions/MetadataSyncAdapter;->submitSyncRequest(Z)Lcom/android/internal/infra/AndroidFuture;

    :cond_2
    :goto_0
    return-void
.end method
